// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//i can also copy my SimpleStorage contract here and have 2 contracts .

//or import it 

import "./SimpleStorage.sol";

contract StorageFactory {
    //addind an array list 
    SimpleStorage[] public simpleStorageArray;


    function createSimpleStorageContract() public {

        //how does storage factory know what Simplestorage looks like??

        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfstore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{

        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }



}

