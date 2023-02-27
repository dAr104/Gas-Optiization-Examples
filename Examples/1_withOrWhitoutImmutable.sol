//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
Transaction costs are based on the cost of sending data to the blockchain.
There are 4 items which make up the full transaction cost:

 - the base cost of a transaction (21000 gas)
 - the cost of a contract deployment (32000 gas)
 - the cost for every zero byte of data or code for a transaction.
 - the cost of every non-zero byte of data or code for a transaction.

Execution costs are based on the cost of computational operations which are executed as a result of the transaction. 

Then tx cost is: 21000 + 32000 + data cost + execution cost
*/

// tx hash: 0x8585cfb5737a9ec7d5f20e557306da9323582f66f89ac3c92082e462dca189ed
// transaction cost: 129921 gas: 21000 + 32000 + data cost (5256) + 71665
contract WithoutImmutable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
}

// tx hash: 0x5af6b48671394e00edd8331419636a0a201b5d5f6295d3b16888c19bc90a7aea
// transaction cost: 107423 gas: 21000 + 32000 + data cost (4876) + 49547
contract WithImmutable {
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }
}

// In WithImmutable, you save 22498 gas by using immutable than WithoutImmutable
