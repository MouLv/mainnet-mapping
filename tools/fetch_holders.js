'use strict';

const rp = require('request-promise');
const child_process = require("child_process");
const ugas = require('./ustoke');

let pages = [];
for (let i = 1; i <= 6; i++) {
    let page = `pageSize=1000&tab=tab-holders&holders=${i}`;
    let option = {
        uri: 'https://ethplorer.io/service/service.php?',
        qs: {
            refresh: 'holders',
            data: '0x8716Fc5Da009D3A208f0178b637a50F4ef42400F',
            page: page,
            showTx: 'all'
        },
        headers: {
        },
        json: true // Automatically parses the JSON string in the response
    };
    pages.push(option);
}

async function get_all_holders() {
    let all_holders = [];
    for (let page of pages) {
        console.log("handle url: ", page.qs.page);
        let rsp = await rp(page);
        let holders = rsp.holders;
        all_holders = all_holders.concat(holders);
        child_process.execSync('sleep 1');
    }

    return all_holders;
}

get_all_holders().then((holders) => {
    let f = {
        total: holders.length,
        holders: holders
    };

    ugas.saveFile('fetch-holders', f);
}).catch((err) => {
    console.log(`Get all token hodlers failed for: ${err}`);
} )