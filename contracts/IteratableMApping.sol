// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IterateMapping {
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

//set balances of the new address 
    function set(address _key, uint _val) external{
        balances[_key] = _val;
//keep track if key is newly inserted 
//get size of the mapping and iterate through the mapping key array
        if (!inserted [_key]) {
            inserted [_key] = true;
            keys.push(_key);

        }
    }

//size of the mapping 
    function getSize() external view returns (uint) {
        return keys.length;
    }


    //geting the first value inserted
    function first() external  view  returns (uint){

        return balances[keys[0]];
    }


    function last() external view returns (uint) {
        return balances[keys[keys.length - 1]];
    }

    function get(uint _i) external view returns (uint) {
        return balances[keys[_i]];
    }


    }


 