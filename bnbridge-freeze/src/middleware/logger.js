const winston = require('winston');
const DailyRotateFile = require('winston-daily-rotate-file');
const { logPath } = require('../config');

// 配置等级和颜色
const config = {
  levels: {
    error: 0,
    debug: 1,
    warn: 2,
    data: 3,
    info: 4,
    verbose: 5,
    silly: 6,
    http: 7,
  },
  colors: {
    error: 'red',
    debug: 'blue',
    warn: 'yellow',
    data: 'grey',
    info: 'green',
    verbose: 'cyan',
    silly: 'magenta',
    http: 'yellow',
  },
};
// 添加自定义颜色
winston.addColors(config.colors);

const rotateFile = (prefixFileName = 'app', level = 'http') => new DailyRotateFile({
  dirname: logPath || './logs',
  filename: `${prefixFileName}-%DATE%.log`,
  maxSize: '50m',
  datePattern: 'YYYY-MM-DD',
  zippedArchive: false,
  maxFiles: '30d',
  level,
});

const transports = {
  console: new winston.transports.Console(),
  errorFile: rotateFile('app-error', 'error'),
  infoFile: rotateFile('app-info', 'info'),
  allFile: rotateFile('app', 'http'),
};

function formatParams(info) {
  const {
    timestamp, label, level, message,
  } = info;
  return `${timestamp} ${level}: ${message.replace(/[\r\n]/g, '')}`;
}

function createLogger(label, level) {
  const currTransports = [transports.console, transports.allFile, transports.errorFile];
  if (label) {
    transports.push(rotateFile(label, level));
  }
  const logger = winston.createLogger({
    exitOnError: false,
    level,
    levels: config.levels,
    format: winston.format.combine(
      winston.format.label({ label }),
      winston.format.colorize(),
      winston.format.timestamp({ format: 'YYYY-MM-DD HH:mm:ss' }),
      winston.format.printf(formatParams),
    ),
    transports: currTransports,
  });
  return logger;
}

const logger = createLogger(null, 'http');

module.exports = {
  logger,
  createLogger,
};
