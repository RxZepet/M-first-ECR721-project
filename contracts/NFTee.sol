//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

// import the standard implementation of ERC721
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// 1.  create an ERC721 contract
contract NFTee is ERC721 {

    constructor() ERC721("LeranWeb3's NFT", "LEARN-NFT") {
    // 2. mint some(5) NFTs
        _mint(msg.sender, 1);
        _mint(msg.sender, 2);
        _mint(msg.sender, 3);
        _mint(msg.sender, 4);
        _mint(msg.sender, 5);
    }

}