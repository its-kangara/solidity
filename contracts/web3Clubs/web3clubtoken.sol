// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

//import "openzeppelin/contracts/utils/math/Safemath.sol";
//import "openzeppelin/contracts/access/Ownable.sol";

contract web3ClubsToken {
     using Safemath for uint256;

     string public tokenName = "web3Clubstoken";
     string public symbol = "WCT";
    uint public decimals = 18;
    uint public decimalFactor = 10 ** uint256(decimals);
    uint public totalSupply = 10000 * decimalFactor;
    
//events
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
    event Transfer(address indexed _from, address indexed _to, uint256 _amount); 



//mapping
    mapping (address => uint256) balanceOf;
    mapping(address => mapping (address => uint256)) allowance;

  constructor(uint256 total) public {
      totalSupply_ = total;
      balances[msg.sender] = _totalSupply;
      }

    function transfer(address receiver,uint numTokens) public returns (bool) {
        require(numTokens <= balances[msg.sender]);
        balances[msg.sender] = balances[msg.sender].sub(numTokens);
        balances[receiver] = balances[receiver].add(numTokens);
        emit Transfer(msg.sender, receiver, numTokens);
        return true;
    }

    function totalSupply() public view returns (uint256) {
        return totalSupply_;
    }

    function balanceOf(address tokenOwner) public view returns (uint) {
        return balances[tokenOwner];
    }
  
    function transferFrom(address owner, address buyer, uint numTokens) public view{

        require(numTokens <= balances[owner]);    
        require(numTokens <= allowed[owner][msg.sender]);
    
        balances[owner] = balances[owner].sub(numTokens);
        allowed[owner][msg.sender] = allowed[owner][msg.sender].sub(numTokens);
        balances[buyer] = balances[buyer].add(numTokens);
        Transfer(owner, buyer, numTokens);
        return true;

    }


    function approve(address _spender, uint _value) public returns (bool success){
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    // function mintToken() public view modifier onlyOwner() {

    // }

}  