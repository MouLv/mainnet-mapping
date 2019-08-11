/* eslint-disable no-await-in-loop */
const axios = require('axios');
const { logger } = require('./middleware/logger');
const eth = require('./helpers/eth');
const dex = require('./helpers/dex');
const { delay } = require('./helpers/utils');
const config = require('./config');

async function getFreezeEthAddress() {
  const { data } = await axios.get(config.freezeAddressApi);
  return data.result;
}

async function getEthFreezeToken() {
  logger.debug('getEthFreezeToken start...');
  let total = 0;
  const arr = [];
  const errAddress = [];
  const failedAddress = [];
  try {
    const ethAddress = await getFreezeEthAddress();
    logger.debug(`getFreezeEthAddress length=${ethAddress.length}`);

    for (let i = 0; i < ethAddress.length; i++) {
      const address = ethAddress[i];
      try {
        const balance = await eth.getERC20Balance(address, config.contractAddress);
        logger.debug(
          `eth.getERC20Balance success, index=${i + 1}, address=${address}, balance=${balance}`,
        );
        arr.push({
          address,
          balance,
          time: new Date().toISOString(),
        });
      } catch (e) {
        logger.error(
          `eth.getERC20Balance catch error, index=${i + 1}, address=${address}, error=`,
          e,
        );
        await delay(1000);
        errAddress.push(address);
      }
    }

    // retry
    if (errAddress.length > 0) {
      await delay(5000);
      logger.debug(
        `eth.getERC20Balance has error record, length=${errAddress.length}, retry start...`,
      );

      for (let i = 0; i < errAddress.length; i++) {
        const address = errAddress[i];
        try {
          const balance = await eth.getERC20Balance(address, config.contractAddress);
          logger.debug(
            `eth.getERC20Balance success, index=${i + 1}, address=${address}, balance=${balance}`,
          );
          arr.push({
            address,
            balance,
            time: new Date().toISOString(),
          });
        } catch (e) {
          logger.error(
            `eth.getERC20Balance catch error, index=${i + 1}, address=${address}, error=`,
            e,
          );
          failedAddress.push(address);
          await delay(1000);
        }
      }
    }

    arr.forEach((item) => {
      total += parseFloat(item.balance);
    });
    logger.debug(
      `getEthFreezeToken completed, totalBalance=${total} successData=${JSON.stringify(
        arr,
      )}, failedAddress=${JSON.stringify(failedAddress)}`,
    );
  } catch (e) {
    console.log('computeFreezeUGAS catch error=', e);
    logger.error('computeFreezeUGAS catch error=', e);
  }
  return {
    total,
    freezeAddress: arr,
    failedAddress,
  };
}

async function getDexReleaseToken() {
  logger.debug('getDexReleaseToken start...');
  let total = 0;
  try {
    total = await dex.getUgasRelease(config.dexAssetOwner, config.dexAsset);
    logger.debug(`getDexReleaseToken, total=${total}`);
  } catch (e) {
    logger.error('getDexReleaseToken catch error, err=', e);
  }
  return total;
}

async function compute() {
  logger.info('compute start...');
  const { total: freezeTotal } = await getEthFreezeToken();
  const releaseTotal = await getDexReleaseToken();
  logger.info(
    `compute completed. ERC20 freeze total balance=${freezeTotal}, Dex release total balance=${releaseTotal}`,
  );
}

module.exports = {
  getEthFreezeToken,
  getDexReleaseToken,
  compute,
};
