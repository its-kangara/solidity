// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract conditionalStatement{

    //if ,else if and else also for loop ,while 
    //logic operators <=, >= , || (true or false), && (true or false) ,! (true or false)

    function transfer(int _x) public pure returns(int){
        if (_x < 10 ) {
            return 0;
        }else if (_x < 20 ) {
            return 1;
        } else {
            return 2;
        }
    }

    

    function shorthand(uint8 _a) public pure returns(uint8) {
        return _a < 10 ? 1 : 2; 
    }
    }