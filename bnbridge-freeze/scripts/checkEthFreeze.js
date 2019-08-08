const { getEthFreezeToken } = require('../src');
const { logger } = require('../src/middleware/logger');

(async function setup() {
  logger.info('checkEthFreeze start...');
  const { total: freezeTotal } = await getEthFreezeToken();
  logger.info(`checkEthFreeze completed. ERC20 freeze total balance=${freezeTotal}`);
}());
