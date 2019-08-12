'use strict'

const fs = require('fs');
const ugas = require('./ustoke');

const holders_list_file = process.argv[2]; // classified holders result.
if (!fs.existsSync(holders_list_file)) {
    console.log(`${holders_list_file} is not exist for holder list.`);
    process.exit(1);
}

const handled_holders_file = process.argv[3];
let handled_holders = {
    validated: [], // 已经映射, 且blance > 0
    mapped:[],    // 已经映射, 且balance = 0
    unmapped:[]   // 未映射
};

if (fs.existsSync(handled_holders_file)) {
    handled_holders = require(handled_holders_file)
}

const RECHECKED_FILE = 'rechecked-holders';
// 只处理非合约账号
let temp_handled = {
    validated: [], // 已经映射, 且blance > 0
    mapped:[],    // 已经映射, 且balance = 0
    unmapped:[]   // 未映射
};

const isHandled = (addr) => {
    for (let v of handled_holders.validated) {
        if (v.address === addr) return true;
    }

    for (let m of handled_holders.mapped) {
        if (m.address === addr) return true;
    }

    for (let u of handled_holders.unmapped) {
        if (u.address === addr) return true;
    }

    return false;
};

const saveTempHandled = () => {
    handled_holders.validated = handled_holders.validated.concat(temp_handled.validated);
    handled_holders.mapped = handled_holders.mapped.concat(temp_handled.mapped);
    handled_holders.unmapped = handled_holders.unmapped.concat(temp_handled.unmapped);

    ugas.saveFile(RECHECKED_FILE, handled_holders);

    temp_handled.validated = [];
    temp_handled.mapped = [];
    temp_handled.unmapped = [];
}

const list = require(holders_list_file);
const holders = list.holders;
let i = 1;
for (let holder of holders) {
    console.log(`Handling  ${i++}/${holders.length}`);

    if (isHandled(holder)) continue;

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
        if (y === 0) { // 余额等于0, 不处理
            temp_handled.mapped.push(r);
        } else {
            temp_handled.validated.push(r);
        }
    } else {
        r.balance = y;
        temp_handled.unmapped.push(r);
    }

    if (i % 50 == 0) saveTempHandled();
}

ugas.saveFile(RECHECKED_FILE, handled_holders);
