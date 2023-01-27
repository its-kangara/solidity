// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


contract SafeMath{

    uint8 public bigNumber = 255;
    function add() public {
       bigNumber = bigNumber + 1;
    }
}