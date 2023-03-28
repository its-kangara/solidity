
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {

    uint public count = 100;
    string public greet = "Hello world";
    // string public  n

    // function transfer() public {
        
    //     address sender = msg.sender;
    // }

    function increment() public {
        count += 10;
    }

    function getCurrentCount() public view returns (uint){
        return count;
    }

    function decrement() public {
        count -= 10;
    }

    function setGreetMessga(string memory newgreetings ) public {
       greet = newgreetings;
    //    count = newCount;
        
    }

    function getGreetMessage() public view returns (string memory){
        return greet;

    }
}
