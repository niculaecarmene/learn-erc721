# Learn DEFI - ERC20 Tokens

In this project I am playing around with ERC721 non fungible tokens

# Steps to create project - run the commands below

mkdir learn-defi-star
cd learn-defi-star
npm init --yes
npm install --save-dev hardhat

// only for Windows users
npm install --save-dev @nomicfoundation/hardhat-toolbox

npx hardhat

npm install @openzeppelin/contracts

npm install dotenv

npx hardhat compile

# Contract explanations

    uToken Contract
        ✔ Extends ERC721
        ✔ ERC721 to mint tokens etc
        ✔ Check that max supply was not reach and in case it did do not allow any more minting 

# Tests - test/tests.js

    Test mint function
        ✔ Mint tokens to 2 of the 3 accounts

    Test approve/transfer tokens
        ✔ Approve token transfer
        ✔ Transfer the approved token
        ✔ Check the balances of each accounts

# Test - run the command below
npx hardhat test test/uTokenTest.js
