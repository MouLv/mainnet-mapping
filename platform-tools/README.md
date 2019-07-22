# 如何使用Ultrain平台工具

## 命令行工具clultrain
clultrain是Ultrain的平台命令行工具, 用来和Ultrain链进行交互.  
clultrain工具有完整的帮助信息, 只要输入相关命令, 然后回车, 就会显示帮助信息.

一个通过的clultrain命令行如下:
```bash
clultrain [--url 链地址] [--wallet-url 钱包地址] ...
```


## 本地软钱包kultraind
kultraind是一款本地软钱包, 用来管理你的私钥和签名交易.

#### 1. 启动kultraind
指定kultraind的IP和端口, 这样clultrain在使用的时候能够访问到这个钱包.
如果钱包和clultrain不在同一台PC上使用, 那么你就可以在clultrain命令中通过`--wallet-url`选项, 指定你的钱包地址.  

以下命令在PC启动钱包, 使用了默认参数.
`./kultraind --http-server-address=127.0.0.1:8900`

#### 2. 创建一个钱包
使用clultrain创建default钱包.  
`clultrain wallet create`  

创建钱包成功之后, 会输出如下提示:   
```bash
Creating wallet: default
Save password to use in the future to unlock this wallet.
Without password imported keys will not be retrievable.
"PW5K3gp38pHYNBNEUPN9JT9rDkY5V3P7hnN21y5TQKV5j8BbSB4GS"
```

**特别注意要保存好这个钱包密码, 之后如果钱包lock了, 需要用它来解锁.**
如果你丢失了这个密码而钱包又lock了, 你只能通过以下步骤重新创建钱包:  
1. kill掉kultraind进程.
2. 删除~/ultrainio-wallet目录和所有文件.
3. 重新创建钱包.

#### 3. 导入私钥
使用clultrain导入私钥(用你自己的私钥替换示例中的私钥).  
`clultrain wallet import --private-key 5JXuBVSEtb1k5JJGUXJd9MfPW98CuMioDyZRF9TGRg44CujLynr`

#### 4. unlock钱包
钱包如果长时间未使用(默认90s)之后, 会自动lock起来, 这时候你需要通过unlock命令解锁:  
`clultrain wallet unlock`  
之后会提示你输入unlock密码, 这时候使用步骤2中的密码解锁就可以了.

**注意事项**
1. 以上步骤中, 步骤2创建好之后, 不用每次都执行, 除非你因为忘记密码, 删除了~/ultrainio-wallet.
2. 如果没有删除钱包, 已经导入的私钥, 不用重复导入.