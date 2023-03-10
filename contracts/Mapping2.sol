// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//checking or looking inside an array 
contract Mapping {
    mapping(address => uint) public balances;   //if you give in an address you get the balance
    //nested mapping 
    mapping (address => mapping (address => bool)) public isFriend;

    function examples() external {
        balances[msg.sender] = 123;
        uint bal = balances[msg.sender];
        uint bal2 = balances[address(1)];

        balances[msg.sender] += 456;

        delete balances[msg.sender]; //0
    }
}