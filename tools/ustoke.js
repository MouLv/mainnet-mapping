// / storage.js
let kUstokeAbi = [
    {
        "constant": true,
        "inputs": [],
        "name": "name",
        "outputs": [
            {
                "name": "",
                "type": "string"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [
            {
                "name": "_spender",
                "type": "address"
            },
            {
                "name": "_value",
                "type": "uint256"
            }
        ],
        "name": "approve",
        "outputs": [
            {
                "name": "",
                "type": "bool"
            }
        ],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "totalSupply",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "INITIAL_SUPPLY",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "decimals",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "closed",
        "outputs": [
            {
                "name": "",
                "type": "bool"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [
            {
                "name": "_spender",
                "type": "address"
            },
            {
                "name": "_subtractedValue",
                "type": "uint256"
            }
        ],
        "name": "decreaseApproval",
        "outputs": [
            {
                "name": "",
                "type": "bool"
            }
        ],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [
            {
                "name": "",
                "type": "address"
            }
        ],
        "name": "keys",
        "outputs": [
            {
                "name": "",
                "type": "string"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [
            {
                "name": "_owner",
                "type": "address"
            }
        ],
        "name": "balanceOf",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "owner",
        "outputs": [
            {
                "name": "",
                "type": "address"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "symbol",
        "outputs": [
            {
                "name": "",
                "type": "string"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [
            {
                "name": "_spender",
                "type": "address"
            },
            {
                "name": "_addedValue",
                "type": "uint256"
            }
        ],
        "name": "increaseApproval",
        "outputs": [
            {
                "name": "",
                "type": "bool"
            }
        ],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [
            {
                "name": "_owner",
                "type": "address"
            },
            {
                "name": "_spender",
                "type": "address"
            }
        ],
        "name": "allowance",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "MINING_RESERVE",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [
            {
                "name": "newOwner",
                "type": "address"
            }
        ],
        "name": "transferOwnership",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "inputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "constructor"
    },
    {
        "payable": true,
        "stateMutability": "payable",
        "type": "fallback"
    },
    {
        "anonymous": false,
        "inputs": [],
        "name": "Close",
        "type": "event"
    },
    {
        "anonymous": false,
        "inputs": [],
        "name": "Open",
        "type": "event"
    },
    {
        "anonymous": false,
        "inputs": [
            {
                "indexed": true,
                "name": "previousOwner",
                "type": "address"
            },
            {
                "indexed": true,
                "name": "newOwner",
                "type": "address"
            }
        ],
        "name": "OwnershipTransferred",
        "type": "event"
    },
    {
        "anonymous": false,
        "inputs": [
            {
                "indexed": true,
                "name": "owner",
                "type": "address"
            },
            {
                "indexed": true,
                "name": "spender",
                "type": "address"
            },
            {
                "indexed": false,
                "name": "value",
                "type": "uint256"
            }
        ],
        "name": "Approval",
        "type": "event"
    },
    {
        "anonymous": false,
        "inputs": [
            {
                "indexed": true,
                "name": "from",
                "type": "address"
            },
            {
                "indexed": true,
                "name": "to",
                "type": "address"
            },
            {
                "indexed": false,
                "name": "value",
                "type": "uint256"
            }
        ],
        "name": "Transfer",
        "type": "event"
    },
    {
        "constant": false,
        "inputs": [
            {
                "name": "_to",
                "type": "address"
            },
            {
                "name": "_value",
                "type": "uint256"
            }
        ],
        "name": "transfer",
        "outputs": [
            {
                "name": "",
                "type": "bool"
            }
        ],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [
            {
                "name": "_from",
                "type": "address"
            },
            {
                "name": "_to",
                "type": "address"
            },
            {
                "name": "_value",
                "type": "uint256"
            }
        ],
        "name": "transferFrom",
        "outputs": [
            {
                "name": "",
                "type": "bool"
            }
        ],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [
            {
                "name": "key",
                "type": "string"
            }
        ],
        "name": "register",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [],
        "name": "close",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [],
        "name": "open",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    }
];

// curl - X POST--data '{"jsonrpc":"2.0","method":"eth_call","params":[{"to":"0x8716fc5da009d3a208f0178b637a50f4ef42400f","data":"0x70a08231000000000000000000000000a45191c69a02b4291e5a2fdb37011091013ea9a0"},"latest"],"id":1}' - H "Content-Type: application/json" https://mainnet.infura.io/v3/c7897e2345214cc980c0284b6a519fc2
/**
 * FBI WARNING
 *
 * 以下代码在web3@0.20.1版本中测试通过，
 * 如果你已经安装了其它版本的web3.js，请先　npm -g uninstall web3，
 * 然后再安装0.20.1版本：　npm install -g web3@0.20.1
 *
 */
const Web3 = require('web3');
const fs = require('fs');

const web3 = new Web3(new Web3.providers.HttpProvider("https://mainnet.infura.io/v3/c7897e2345214cc980c0284b6a519fc2")); // infura项目地址
// web3.eth.defaultAccount = '0x3ee93E9180aAc9404BCe14444c18894bA4046C7C';

const kUstokeAddress = '0x8716fc5da009d3a208f0178b637a50f4ef42400f'; // ustoke deployed address
const kRegistedKeysIndex = '9';

// let holder = '0xa45191c69a02b4291e5a2fdb37011091013ea9a0';
// const MY_WALLET = '0x3ee93E9180aAc9404BCe14444c18894bA4046C7C';

// var tokenName = web3.eth.getStorageAt(kUstokeAddress, 4);
//     console.log("tokenName: " + web3.toAscii(tokenName));

// var tokenSymbol = web3.eth.getStorageAt(kUstokeAddress, 5);
//     console.log("tokenSymbol: " + web3.toAscii(tokenSymbol));

// var decimal = web3.eth.getStorageAt(kUstokeAddress, 6);
//     console.log("decimal: " + web3.toDecimal(decimal));

// var initialSupply = web3.eth.getStorageAt(kUstokeAddress, 7);
//     console.log("InitialSupply: " + web3.toBigNumber(initialSupply));

// var miningServer = web3.eth.getStorageAt(kUstokeAddress, 8);
//     console.log("MiningServer: " + web3.toBigNumber(miningServer));

// var closed = web3.eth.getStorageAt(kUstokeAddress, 10);
//     console.log("closed: " + web3.toDecimal(closed));

// getRegistedKeys("0x51413B31f87e88bf4e6577D69f213c8cCcc79Da4");
// queryBalance("0x51413B31f87e88bf4e6577D69f213c8cCcc79Da4");

function getRegistedKeys(addr) {
    let index = kRegistedKeysIndex.padStart(64, '0');
    addr = addr.toLowerCase();
    if (addr.startsWith('0x')) {
        addr = addr.substring(2);
    }

    let key = addr.padStart(64,'0') + index;
    let newKey = web3.sha3(key, { "encoding": "hex" });

    var bytecode = web3.eth.getStorageAt(kUstokeAddress, newKey);
    // console.log("keys: " + web3.toAscii(bytecode));
    return web3.toUtf8(bytecode);
}

function queryBalance(holder) {
    var contract = web3.eth.contract(kUstokeAbi);
    var contractInstance = contract.at(kUstokeAddress);
    var bal = contractInstance.balanceOf(holder);

    // console.log("balance: " + web3.toBigNumber(bal));
    return web3.toBigNumber(bal);
}

function isContractAddress(addr) {
    var code = web3.eth.getCode(addr)
    // console.log("isContractAddress: ", code);
    return code !== '0x';
}

function isValidAddress(addr) {
    return web3.isAddress(addr);
}

function saveFile(fn_prefix, data) {
    // let dt = new Date().toISOString().slice(0,10);
    // let fname = `${fn_prefix}-${dt}.json`;
    let fname = `${fn_prefix}.json`;

    if (fs.existsSync(fname)) { fs.unlinkSync(fname); }

    fs.writeFileSync(fname, JSON.stringify(data, null, 2));
}

module.exports = { getRegistedKeys, queryBalance, isContractAddress, isValidAddress, saveFile };
