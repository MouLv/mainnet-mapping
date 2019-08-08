const { compute } = require('../src');
const { logger } = require('../src/middleware/logger');

(async function setup() {
  logger.info('checkAll start...');
  await compute();
  logger.info('checkAll completed.');
}());
