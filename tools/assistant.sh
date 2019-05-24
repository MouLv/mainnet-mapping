#!/bin/bash

# FBI WARNNING
# to run this script, please install libraries by:
#
#   brew install jq
#   brew install sha3sum


function get_holder_list() {
    # return value, an array like:  { "address": "0x2c1d81e648774a6b45c1aa5ab53b56e90548654b", "balance": 5e+18, "share": 0 }
    h=$(curl -X GET 'https://ethplorer.io/service/service.php?refresh=holders&data=0x8716Fc5Da009D3A208f0178b637a50F4ef42400F&page=tab%3Dtab-holders%26pageSize%3D1000%26holders%3D2&showTx=all' | jq '.holders')
    echo $h
    return $h
}

function get_balance_of_holder() {
   # curl return value : {"jsonrpc":"2.0","id":1,"result":"0x000000000000000000000000000000000000000000b4d9a95b3e821fb0ae0000"}
   b=$(curl -X POST --data '{"jsonrpc":"2.0","method":"eth_call","params":[{"to":"0x8716fc5da009d3a208f0178b637a50f4ef42400f","data":"0x70a08231000000000000000000000000a45191c69a02b4291e5a2fdb37011091013ea9a0"},"latest"],"id":1}' -H "Content-Type: application/json" https://mainnet.infura.io/v3/c7897e2345214cc980c0284b6a519fc2 | jq '.result')
   echo $b
   return $b
}

function get_registed_account() {
    if [[ $1 == 0x* ]];
    then
        temp=$1
        ADDR=${temp:2}
    else
        ADDR=$1
    fi

    if [ "${#ADDR}" -ne "40" ];
    then
        echo "${ADDR} is not valid address, its length must be 40."
        exit 1
    fi

    pading=$(printf '%0.1s' "0"{1..64})
    addkey=$(printf "%s%s" "${pading:${#ADDR}}" $ADDR)

    index=$(printf "%064d" "$2")

    tkey=$(echo -n "${addkey}${index}" | keccak-256sum -l)
    KEY=${tkey:0:64}
    echo "key: " ${KEY}
    # a=$(curl -X POST --data '{"jsonrpc":"2.0", "method": "eth_getStorageAt", "params": ["0x8716fc5da009d3a208f0178b637a50f4ef42400f", "'${KEY}'", "latest"], "id": 1}' -H "Content-Type: application/json" https://mainnet.infura.io/v3/c7897e2345214cc980c0284b6a519fc2 | jq '.result')
    # echo $a
    # return $a
}

function mainnet_mapping() {
    ACCOUNT=$1
    AMOUNT=$2
    clultrain transfer ultrainio ${ACCOUNT} "${AMOUNT} UGAS" "main net mapping" -p ultrainio
}

# get_holder_list

# bal=get_balance_of_holder

get_registed_account "0xa45191c69a02b4291e5a2fdb37011091013ea9a0" 9

echo "the registed account is $?" # $? 上一个方法的返回值
# mainnet_mapping ${act} ${bal}