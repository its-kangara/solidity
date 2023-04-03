// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract Web3Clubstoken is ERC20, AccessControl {
    constructor() ERC20("web3Clubstoken", "W3C") {
        // the decimal will ensure that you can send small denominations of eth.
       // _mint(msg.sender, 100);   
        _mint(msg.sender, 100 ** decimals()); 
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }
}

//1.000000000000000000


//Owner: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

//Approve:  0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2  - Spender


//Allowance - a list of approves.. sort of mapping 
