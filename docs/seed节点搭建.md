## 外部seed节点搭建


### 1. 矿机系统安装

* 推荐使用超脑定制的ubuntu的iso镜像包或docker镜像安装（包含需要的依赖库）

    * docker镜像下载地址：http://40.73.35.128:7656/download/docker/ultrain_ubuntu_prod.tar
    （md5sum:ea821124ef4483bf3e4fdd32acbe90bb）,导入方法：docker load < ultrain_ubuntu_prod.tar

* 自行安装保证系统版本为ubuntu(18.0)版本，安装如下依赖库： 需要安装**node.js(v8.10.0)和pm2（使用npm安装）,python,logrotate，curl等工具**

#### 1.1 矿机依赖库安装命令（重要！！！）

**如果使用ultrain提供的docker启动，可以直接跳到步骤2**

```text

* 如果apt包比较老，执行一下命令进行更新库信息

apt-get update

* 安装curl（发送http请求）

apt-get install curl

* 安装logrotate（日志滚动并删除）

apt-get install logrotate

*安装python

apt-get install python

* 安装node.js(v8.10.0) 和 pm2 （管家程序需要，帮助节点宕机后重启和恢复）

安装node.js
sudo apt-get install nodejs

安装npm包
sudo apt-get install npm

指定升级node.js版本到8.10.0
npm install n -g
n v8.10.0

检查版本是否为8.10.0
node -v

安装pm2
npm install -g pm2

检查pm2命令生效
pm2 list
```

### 2. 安装程序(miner_setup.tar)下载

* 下载地址
    
    http://40.73.35.128:7656/download/miner_setup/20190812/miner_setup.tar
    
* md5sum： 

    6ac9b414ea1846be8631d06c3ec0d454
    

### 3.矿机程序安装运行

* 拷贝矿机程序 miner_setup.tar 到用户自己根目录(~/)下并解压
```text
cd ~/
tar -xvf miner_setup.tar
```
* 执行安装文件 install.sh 进行文件分发安装
```text
chmod +x ~/miner_setup/install.sh
~/miner_setup/install.sh
```

* 拷贝矿机专属的配置文件（config.ini)到配置文件目录（该文件中包含隐私信息，请联系对接技术人员获取）（重要！！！重要！！！）

```text
将配置文件拷贝到目标目录
cp /tmp/config.ini /root/.local/share/ultrainio/nodultrain/config/config.ini

拷贝完成后可通过cat命令查看配置文件中用户名等是否正确

cat /root/.local/share/ultrainio/nodultrain/config/config.ini
```

* 下载最新的世界状态文件(快照文件）到/tmp目录并进行重启

```text

下载地址
    
   http://40.73.35.128:7656/download/miner_setup/ws/master-1251000/start.ws
    
md5sum： 

   58fe341fb7ffe1c14e9ccbc007f62725
```

* 使用世界状态文件（快照）进行程序启动

```text
关闭程序（确保程序已关闭）
killall nodultrain

清除本地的块数据
rm ~/.local/share/ultrainio/nodultrain/data -rf

假设start.ws已确认下载到/tmp目录
nohup ~/nodultrain --worldstate /tmp/start.ws &>> /log/nod_start.log &

```
    
* 完成启动，检查是否正常启动 

```text
通过tail命令查看是否有正常返回结构

curl 127.0.0.1:8888/v1/chain/get_chain_info

通过tail命令查看日志是否输入是否有异常

tail -f /log/nod_start.log
```

* 启动管家程序（负责日志清理，异常宕机后使用快照进行节点自动恢复等功能）

```text
pm2 start ~/ultrainmng/src/sideChainService.js && pm2 save && sleep 1 && pm2 startup && sleep 1 && pm2 save 
```



## 3. 矿机简单运维操作

### 3.1 安全重启矿机

* 先关闭nod进程（切勿用kill -9 强制关闭）
```text
killall nodultrain
```

* 使用启动脚本启动nod程序即可
```text
~/runultrain-h.sh
```

### 3.2 管家相关

* 启动管家

```text
pm2 start ~/ultrainmng/src/sideChainService.js
```

* 重启管家
```text
pm2 restart sideChainService
```

* 关闭管家

```text
pm2 stop sideChainService
```
    
### 3.3 使用快照重启nodultrain（当正常启动nodultrain出现database dirty的情况）

* 检查本地最大的块高X（如果本地还有块高）
    
    * 检查快照程序（wssultrain）是否在运行中(ps aux | grep wssultrain)
    * 如果快照程序（wssultrain）未启动，使用如下命令进行启动
        ```text
        nohup ~/wssultrain  &>> /log/wss.log &
        ```
    * 启动成功后，使用本地API请求获取最大块高
        ```text
        curl 127.0.0.1:7777/v1/wss/get_local_block_info
        ```
    * 拿到返回结果json数据(解析出block_height即可，block_height为本地最大的块高X)
        ```json
         {"block_height":1077558,"first_block_height":1,"msg":""}
        ```


* 删除本地内存数据库的数据（使用快照启动必须删除）

```text
rm ~/.local/share/ultrainio/nodultrain/data/state/ -rf
```

* 找到一个小于X的最近的一个世界状态（快照）文件

    * 本地快照目录(~/.local/share/ultrainio/wssultrain/data/worldstate/)
    * 目录下使用（ls -ltrt | grep ws)按时间顺序显示所有文件（只需要找.ws结尾的即可）
    * 快照文件名中已经包含了快照对应的块高信息，如下所示（1077000块高的块找）：
        ```text
        99b1cef2acdf6c4bcbce64c6490a999b819c236b19e3cd7cd2c3accc71da30ef-1077000.ws
        ```

* 使用快照文件启动nod

    * 启动命令如下(--worldstate 参数后跟上快照文件的路径 ，--truncate-at-block 跟上本地最大的块高X） ：
    ```text
    nohup ~/nodultrain --worldstate /tmp/99b1cef2acdf6c4bcbce64c6490a999b819c236b19e3cd7cd2c3accc71da30ef-1077000.ws --truncate-at-block 1077558   &>> /log/nodstart.log  &
    ```    







