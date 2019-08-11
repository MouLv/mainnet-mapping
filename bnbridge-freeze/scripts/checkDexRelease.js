const { getDexReleaseToken } = require('../src');
const { logger } = require('../src/middleware/logger');

(async function setup() {
  logger.info('checkDexReleaseToken start...');
  const releaseTotal = await getDexReleaseToken();
  logger.info(`checkDexReleaseToken completed. Dex release total balance=${releaseTotal}`);
}());
