AstanaITUniversityNursultan Token

Overview

The AstanaITUniversityNursultan Token is an ERC-20 token implemented on the Ethereum blockchain. It provides basic ERC-20 functionality, allowing users to create and manage custom tokens with a specified name, symbol, and decimal places. Additionally, the contract includes features to retrieve information about transactions, such as the timestamp of the latest transaction and the addresses of the transaction sender and receiver.

Contract Details

    Name: AstanaITUniversityNursultan
    Symbol: MTN
    Decimals: 18
    Total Supply: 10,000 MTN tokens

Features

ERC-20 Standard Functionalities

Balance Inquiry

    Function: balanceOf(address tokenOwner)
    Purpose: Retrieve the token balance of a specific address.

Allowance Inquiry

    Function: allowance(address tokenOwner, address spender)
    Purpose: Retrieve the remaining allowance that the owner has granted to a specific spender.

Approval

    Function: approve(address spender, uint256 tokens) returns (bool success)
    Purpose: Aprove a specific amount of tokens to be spent by another address.

Token Transfer

    Function: transfer(address to, uint256 tokens) returns (bool success)
    Purpose: Transfer tokens from the sender's address to the specified recipient.

Transfer with Approval

    Function: transferFrom(address from, address to, uint256 tokens) returns (bool success)
    Purpose: Transfer tokens from one address to another, using prior approval.

Additional Features

Latest Transaction Timestamp

    Function: getLastTransactionTimestamp() returns (string memory)
    Purpose: Retrieve the timestamp of the latest transaction in a human-readable format.

Transaction Sender

    Function: getTransactionSender() returns (address)
    Purpose: Retrieve the address of the sender of the current transaction.

Transaction Receiver

    Function: getTransactionReceiver() returns (address)
    Purpose: Retrieve the contract's address as the receiver of the current transaction.



Ethereum Smart Contract Interaction

This repository contains a Node.js script that demonstrates how to interact with an Ethereum smart contract using the Web3 library. The script connects to a local Ethereum node, instantiates a smart contract, and performs a token transfer.
Prerequisites

Before using this script, ensure you have the following:

    Node.js: Make sure Node.js is installed on your machine. You can download it from nodejs.org.

    Ethereum Development Environment: Set up an Ethereum development environment like Ganache. Ganache provides a local blockchain for testing and development purposes. You can download it from Truffle Suite.

Installation

    Clone this repository to your local machine:

    bash


Install the required Node.js packages:

bash

    npm install

Configuration

Open the index.js file and update the following parameters to match your setup:

    Ethereum Node URL: Replace the placeholder URL with the URL of your Ethereum node.

    javascript

const web3 = new Web3('http://127.0.0.1:7545');

Contract Address and ABI: Replace the placeholder contract address and ABI with the details of your smart contract.

javascript

const contractAddress = '0xF4C53046A42EBE61661db32eA0aD2E01fbFa2B29'; 
const abi = [...]; // Replace with your contract ABI
const myContract = new web3.eth.Contract(abi, contractAddress);

Recipient Address and Amount: Specify the recipient address and the amount to transfer.

javascript

const recipientAddress = '0xF186bd962E3BeacB253ACf54876549fcB7eBeb08'; 
const amountToSend = web3.utils.toWei('0.1', 'ether'); // Assuming 18 decimal places

Sender Address: Replace the sender address with the account you want to use for the transaction.

javascript

    const senderAddress = '0xF186bd962E3BeacB253ACf54876549fcB7eBeb08';

Usage

Run the script to initiate a token transfer:

bash

node index.js

The script will connect to your Ethereum node, send a transaction to the specified smart contract, and output the transaction receipt.
Adjusting Gas and Gas Price

You can adjust the gas and gas price values in the myContract.methods.send method according to your network requirements.
License

This project is licensed under the MIT License.
