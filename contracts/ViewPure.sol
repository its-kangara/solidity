// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ViewAndPureFunctions {

    uint public num;

    function viewFunc() external view returns (uint) {
        return num;
    }
    function pureFunc() external pure returns (uint) {
        return 1;
    }
    function addToNum(uint x) external view  returns (uint) {
        return num + x ;
        //this is a view  function because it reads data from the state variable (num)
    
    }

    function add(uint x, uint y) external  pure returns (uint){
        return x + y;
        // pure functions does not read any data from the state variable or the blockchain 
    }


}