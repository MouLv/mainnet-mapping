/* eslint-disable no-await-in-loop */
const axios = require('axios');

async function getBalance(address, symbol) {
  const url = `https://dex.binance.org/api/v1/account/${address}`;
  const { data } = await axios.get(url);
  const rs = data.balances.find(item => item.symbol === symbol);
  const balance = parseFloat(rs.free) + parseFloat(rs.frozen) + parseFloat(rs.locked);
  return balance;
}

async function getUgasRelease(address, symbol) {
  let noSupply = 0;
  for (let i = 0; i < address.length; i++) {
    const balance = await getBalance(address[i], symbol);
    noSupply += balance;
  }
  return 1000000000 - noSupply;
}

module.exports = {
  getUgasRelease,
};
