# bnbridge 锁仓地址查询

查询dex上发行的ugas对应eth锁仓地址金额是否一致的脚本

## 环境

  本脚本依赖于nodejs,需要安装node, 安装详细见https://nodejs.org

## 安装依赖

```bash
npm install
```

## 检测dex释放金额
```bash
node ./scripts/checkDexRelease.js
```

## 检测eth锁仓地址金额
```bash
node ./scripts/checkEthFreeze.js
```

## 两个检测查询
```bash
node ./scripts/checkAll.js
```

## 注意事项说明
- 查询eth冻结余额，是通过查询公示冻结地址接口返回的eth地址(地址与[https://ultrain.io/ugasswaps](https://ultrain.io/ugasswaps)公示页面一致)，再遍历查询eth上ugas余额统计出来的
- 查询dex上的持仓，是将总的Supply减去未发行流通的地址上的余额换算出来。dexs上未发行的持仓地址有两个：bnb1mj2nncwkmrw9pr6d0spkfmewz5eynz63w67f6e（合约的Owner）, bnb1e8997xrgxqalm50ve0v2p3gs30dphvgm7hhddv(充值转账地址）
- dex上发行释放的余额会与ugas上冻结的持仓存在些许的差异，可能原因有：
  - 查询eth冻结地址过程中存在充值提币，充值的可能
  - dex往eth上提币时候会扣除必要的ugas做手续费
