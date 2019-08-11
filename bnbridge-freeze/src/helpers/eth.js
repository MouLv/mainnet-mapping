const axios = require('axios');

async function getERC20Balance(address, contractAddress) {
  const url = `https://api.tokenbalance.com/token/${contractAddress}/${address}`;
  const { data } = await axios.get(url);
  return data.balance;
}

module.exports = {
  getERC20Balance,
};
