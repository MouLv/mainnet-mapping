'use strict'

const child_process = require("child_process");
const fs = require('fs');
const ugas = require('./ustoke');

const holders_list = process.argv[2];
if (!fs.existsSync(holders_list)) {
    console.log(`${holders_list} is not exist for holder list.`);
    process.exit(1);
}

const classified_list = process.argv[3];
let specifyholders = { contracts: [], holders: [] };
let part_classified = undefined;
if (classified_list && fs.existsSync(classified_list)) {
    part_classified = require(classified_list);
} else {
    part_classified = {
        contracts: [],
        holders: []
    }
}
const holders = require(holders_list);

// console.log("holders: ", holders.total);
let i = 1;
for (let holder of holders.holders) {
    console.log(`Handling ${i++}/${holders.total}.....`);
    let addr = holder.address;
    if (part_classified.contracts.includes(addr) || part_classified.holders.includes(addr)) {
        continue; // already handled.
    }

    // if (!ugas.isValidAddress(addr)) {
    //     continue;
    // }

    let b = ugas.isContractAddress(addr);
    if (b) { specifyholders.contracts.push(addr); }
    else { specifyholders.holders.push(addr); }

    if (i % 50 == 0) {
        part_classified.contracts = part_classified.contracts.concat(specifyholders.contracts);
        part_classified.holders = part_classified.holders.concat(specifyholders.holders);

        ugas.saveFile('classify-holders', part_classified);

        specifyholders.contracts = [];
        specifyholders.holders = [];
    }
}

ugas.saveFile('classify-holders', part_classified);
