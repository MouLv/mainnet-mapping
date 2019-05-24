'use strict'

var Crawler = require("js-crawler");

var holder_urls = [];
for (let i = 1; i <= 2; i++) {
    holder_urls.push(`https://ethplorer.io/service/service.php?data=0x8716fc5da009d3a208f0178b637a50f4ef42400f&page=tab%3Dtab-holders%26pageSize%3D3000%26holders%3D${i}&showTx=all`);
}

var current_url_index = 0;
var holders = {};

function handle_holder_page(page) {
    var body = page.body;
    var rsp = JSON.parse(body);
    rsp.holders.forEach((hold) => {
        holders[hold.address] = hold.balance;
    });
    console.log(`----------current holder: ${Object.keys(holders).length} -------`);
    current_url_index++;

    // if (current_url_index < holder_urls.length ) {
    //     crawl_url(holder_urls[current_url_index]);
    // } else {
    //     save_holder_list();
    // }
    if (current_url_index >= holder_urls.length) {
        save_holder_list();
    }
}

function crawl_url(url) {
    let crawler = new Crawler().configure({
        depth: 2,
        userAgent: 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36',
        maxConcurrentRequests: 1,
        maxRequestsPerSecond: 1,
        shouldCrawl: (url) => { return true; },
        shouldCrawlLinksFrom: (url) => { return false; }
    });
    crawler.crawl(url, handle_holder_page);
}

function save_holder_list() {
    console.log(" save to file. ");
}

for (let i = 0; i < holder_urls.length; ++i) {
    crawl_url(holder_urls[i]);
}

// 从这里可以拿到所有的列表：
// https://ethplorer.io/address/0x8716fc5da009d3a208f0178b637a50f4ef42400f?from=search#tab=tab-holders&pageSize=100&holders=56
//
// crawler.crawl("https://ethplorer.io/address/0x8716fc5da009d3a208f0178b637a50f4ef42400f?from=search#tab=tab-holders&pageSize=100&holders=56", function (page) {