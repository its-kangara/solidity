// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract Erc20token {

//checking balance or Transfer token by an external users (say wallet) and the events will be invoked when 
//a user is granted rights to withdraw tokens from an accountand after the tokens are trransfered

    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
    event Transfer(address indexed from, address indexed to, uint tokens);

    string public constant name = "web3ClubsToken";
    string public constant symbol = "WCT";
    uint8 public constant decimals = 8;



// The mapping will be stored in the blockchain  with their fields and all changes being stored

//the mapping object balances holds te token balance of each owner account
mapping(address => uint256) balances; 

//allowed will include all the accounts approved to withdraw from a given account 
mapping(address => mapping (address => uint256)) allowed;

// function totalSupply() public view returns (uint256);{}
// function balanceOf(address tokenOwner) public view returns (uint);
// function allowance(address tokenOwner, address spender)
// public view returns (uint);
// function transfer(address to, uint tokens) public returns (bool);
// function approve(address spender, uint tokens)  public returns (bool);
// function transferFrom(address from, address to, uint tokens) public returns (bool);


uint256 totalSupply_;

// constructor(uint256 total) public {
//     totalSupply_ = total;
//     balances(msg.sender) = _totalSupply;
// }
constructor(uint256 total) public {
   totalSupply_ = total;
   balances[msg.sender] = _totalSupply;
}




function totalSupply() public view returns (uint256){}

}






}