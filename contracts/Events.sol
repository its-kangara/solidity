// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Events {
//write data to the blockchain  but the smart contract dont have to retrieve it - cheap 
    event Log(string message, uint val); // variables to log 
    event indexedLog (address indexed sender, uint val); //use index to search through the log events index can only be max 3

    function example() external {
        emit Log ("foo", 1234);
        emit indexedLog(msg.sender, 789);
    }


    event Message( address indexed  _from, address _to, string message);
    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
    
    
    
    }