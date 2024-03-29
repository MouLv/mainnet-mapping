# 外部mongo节点搭建


### 矿机系统安装

* 推荐使用超脑定制的ubuntu的iso镜像包或docker镜像安装（包含需要的依赖库）

    * docker镜像下载地址：http://40.73.35.128:7656/download/docker/ultrain_ubuntu_prod.tar
    （md5sum:ea821124ef4483bf3e4fdd32acbe90bb）,导入方法：docker load < ultrain_ubuntu_prod.tar

* 自行安装保证系统版本为ubuntu(18.0)版本，安装如下依赖库： 需要安装**node.js(v8.10.0)和pm2（使用npm安装）,python,logrotate，curl等工具**

#### 矿机依赖库安装命令（重要！！！）

```text

* 如果apt包比较老，执行一下命令进行更新库信息

apt-get update

* 安装curl（发送http请求）

apt-get install curl

* 安装logrotate（日志滚动并删除）

apt-get install logrotate

*安装python和pymongo库（修复mongo异常时数据,重要）

apt-get install python
sudo apt-get install python-pip
pip install pymongo==3.5.1

如果安装pymongo可查看如下文档使用其它方法： http://api.mongodb.com/python/current/installation.html


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

### mongo相关安装和启动

#### 下载mongo程序安装包（mongo.tar）

* 下载地址

   http://40.73.35.128:7656/download/mongo/mongo.tar

* md5sum

    417462734732788e7a1e3e291822017e

#### mongo程序安装（mongo的程序和数据路径不建议修改，否则会导致进行异常恢复时找不到mongo相关的数据，重要！！！）

* 拷贝mongo安装程序 mongo.tar 到用户自己根目录(~/)并解压
```text
cd ~/
tar -xvf mongo.tar
```

* mongo配置并启动
```text
删除历史数据
rm -rf ~/mongodb/data && rm -rf ~/mongodb/log

创建mongo数据和log目录
mkdir -p ~/mongodb/data && mkdir -p ~/mongodb/log

启动mongo
~/mongodb/bin/mongod --dbpath ~/mongodb/data --logpath ~/mongodb/log/mongodb.log --fork --bind_ip 0.0.0.0

登陆（mongoshell）
~/mongodb/bin/mongo

切换数据库
use ultrain

创建账户（可将root的默认密码改为其它密码，修改后注意在后续nodultrain的配置中也要修改，重要！！重要！！重要！！）
db.createUser( {user: "root", pwd: "ultrain",roles: [ { role: "readWriteAnyDatabase", db: "admin" }]})

退出mongo
exit

关闭数据库
killall mongod

授权方式启动
~/mongodb/bin/mongod --auth --dbpath ~/mongodb/data --logpath ~/mongodb/log/mongodb.log --fork --bind_ip 0.0.0.0
```

### 矿机程序安装运行

### 安装程序(miner_setup.tar)下载

* 下载地址
    
    http://40.73.35.128:7656/download/miner_setup/20190812/miner_setup.tar
    
* md5sum： 

    6ac9b414ea1846be8631d06c3ec0d454


### 矿机程序安装运行
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

* 拷贝矿机专属的配置文件（config.ini)到配置文件目录（该文件中包含隐私信息，请联系对接技术人员获取）

```text
将配置文件拷贝到目标目录（如在上一步中修改了mongo数据库的root用户的默认密码，请先修改config.ini中mongodb-uri这一行的配置，将默认root:ultrain改为root:新密码，重要！！重要！！重要！！）
cp /tmp/config.ini /root/.local/share/ultrainio/nodultrain/config/config.ini


拷贝完成后可通过cat命令查看配置文件中用户名等是否正确

cat /root/.local/share/ultrainio/nodultrain/config/config.ini
```

* 下载世界状态文件到/tmp目录并进行重启


```text

下载地址
    
   http://40.73.35.128:7656/download/miner_setup/ws/master-1251000/start.ws
    
md5sum： 

   58fe341fb7ffe1c14e9ccbc007f62725
```
```


* 使用ws文件启动程序

```text
关闭程序（确保程序已关闭）
killall nodultrain

清除本地数据
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

* 启动管家程序（负责日志清理，异常宕机后自动恢复等功能）

pm2 start ~/ultrainmng/src/sideChainService.js && pm2 save && sleep 1 && pm2 startup && sleep 1 && pm2 save 


## 矿机简单运维

### 重启矿机

* 先关闭nod进程
```text
killall nodultrain
```

* 使用启动脚本启动nod程序
```text
~/runultrain-h.sh
```

### 管家相关

* 启动管家

```text
pm2 start /root/ultrainmng/src/sideChainService.js
```

* 重启管家
```text
pm2 restart sideChainService
```

* 关闭管家
```text
pm2 stop sideChainService
```


    
    
    



