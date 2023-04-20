// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract LockFund {
    address public owner;


    constructor() {
        owner = payable(msg.sender);
    }

    mapping(address => uint) public lockedFunds;
    mapping(address => uint) public lockedTimeStamps;
    uint public lockDuration = 2 days;


//put funds to lock
    function lockfunds(uint _value) public payable{
        require(msg.value >= _value);
        lockedFunds[msg.sender] = _value;
        lockedTimeStamps[msg.sender] = block.timestamp;
    }
 

 // release funds once the duration is over .


    function releaseFund() public {
        require(block.timestamp >= lockedTimeStamps[msg.sender] + lockDuration, "Please wait the lock duration days" );
        payable(owner).transfer(lockedFunds[msg.sender]);
        delete lockedFunds[msg.sender];
        delete lockedTimeStamps[msg.sender];

    }


//withdraw locked funds

    function withdraw() public{
        require(msg.sender == owner, "Only Owner can withdraw the funds");
        require(address(this).balance > 0, "No funds available to withdraw");
        payable(owner).transfer(address(this).balance);

    }

}