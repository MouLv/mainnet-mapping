'use strict'

const fs = require('fs');
const ugas = require('./ustoke');

const holders_list = process.argv[2];
if (!fs.existsSync(holders_list)) {
    console.log(`${holders_list} is not exist for holder list.`);
    process.exit(1);
}

// 只处理非合约账号
let result = {
    validated: [], // 已经映射, 且blance > 0
    mapped:[],    // 已经映射, 且balance = 0
    unmapped:[]   // 未映射
};

const list = require(holders_list);
const holders = list.holders;
let i = 1;
for (let holder of holders) {
    console.log(`Handling  ${i++}/${holders.length}`);

    let r = {
        address: holder,
        utraddress: '',
        balance: 0
    }

    let x = ugas.getRegistedKeys(holder);
    let y = ugas.queryBalance(holder);

    if (typeof x === 'string' && x.length != 0) {
        r.utraddress = x;
        r.balance = y;
        if (y === 0) {
            result.mapped.push(r);
        } else {
            result.validated.push(r);
        }
    } else {
        r.balance = y;
        result.unmapped.push(r);
    }
}

ugas.saveFile('rechecked-holders', result);
