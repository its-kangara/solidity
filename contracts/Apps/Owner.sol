// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
    address public  owner;
 //initialize and accept owner 
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOWner() {
        require(msg.sender == owner, "not owner");
        _;   //let the code exectute
    }

    function setOWner(address _newOwner) external onlyOWner {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    function onlyOWnerCanCallThisFunc() external  onlyOWner {

    }
    function anyOneCanCall() external {
        
    }


}