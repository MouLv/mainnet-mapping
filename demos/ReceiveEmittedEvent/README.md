# 说明

1. FilterTransfer是用来过滤Transfer的合约，部署到自己的账号上。
2. monitor_emitted_event.js是http server例子，用来监听emit出来的Event。

**注册监听地址**  
```bash
curl -X POST --data '{"account":"${CONTRACT_ACCOUNT}","post_url":"${HTTP_SERVER_ADDR}"}' -H "Content-Type: application/json" ${NODE_ADDRESS}/v1/chain/register_event
```

**取消监听**  
```bash
curl -X POST --data '{"account":"${CONTRACT_ACCOUNT}","post_url":"${HTTP_SERVER_ADDR}"}' -H "Content-Type: application/json" ${NODE_ADDRESS}/v1/chain/unregister_event
```

> CONTRACT_ACCOUNT: 部署Filter合约的帐号。  
> HTTP_SERVER_ADDR: http server的地址。  
> NODE_ADDRESS: 部署的节点地址。  

**注意：NODE_ADDRESS要能访问到HTTP_SERVER_ADDR, 比如在同一个局域网内、或者有公网IP。**