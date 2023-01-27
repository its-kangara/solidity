// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter{
//state variable

    uint public count;

    function inc() external {
        count += 1;
    }
    function dec() external  {
        count -= 1;
    }

}