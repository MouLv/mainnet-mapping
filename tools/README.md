# 主网映射前准备工作的工具

## Dependencies
1. web2@0.20.1      # 如果已经安装其它版本的web3, 请先`npm -g uninstall web3`删除, 再`npm install -g web3@0.20.1`  
2. request-promise    # npm install -g request-promise

### fetch_holders.js
这个文件来用获取所有的持币账号.  
`node fetch_holders.js`  # 生成文件 fetch-holders-xx.json

### classify_holders.js
这个文件来用分类持币账号, 主要分成两大类: 正常持币人账号和合约账号
`node classify_holders.js ./fetch-holders-xx.json`   # 生成文件 classify-holders-xx.json

### recheck_holders.js
这个文件从ustoke合约中查询以下信息: 已经映射的账号, 未映射的账号, 己映射但余额为0的账号  
`node recheck_holders.js ./classify-holders-xx.json`   # 生成文件 rechecked-holders-xx.json

拿到rechecked-holders-xx.json文件后, 转账前的信息收集就已经完成了.  
可以进行后续的主网打币工作.