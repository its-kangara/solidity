// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {

    uint public count = 10;
    string public cow = "Hello world";

    function transfer() public {
        
        address sender = msg.sender;
    }

    function increment() public {
        count += 10;
    }

    function getCurrentCount() public view returns (uint){
        return count;
    }

    function decrement() public {
        count -= 10;
    }

    function setGreetMessga(string memory) public {
        
    }

    function getGreetMessage() public {

    }
}
