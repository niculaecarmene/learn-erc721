//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract uToken is ERC721{

    string private NAME = 'UNIQUE STAR';
    string private SYMBOL = 'US';

    uint256 public MAX_SUPPLY = 10000;
    uint256 public tokenId;
    uint256 public PRICE = 0.1 ether;

    constructor()
        ERC721(NAME, SYMBOL){
            tokenId = 1;
    }

    modifier checkSupply() {
        require(tokenId <= MAX_SUPPLY, "Maximum supply was reached!");
        _;
    }

    function mint(address to) public payable checkSupply() returns (uint256) {
        require(msg.value >= PRICE, "Insufficient payment");

        _mint(to, tokenId);
        tokenId++;

        return tokenId;
    }
}