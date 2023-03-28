// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

abstract contract transferEther  is IERC20 {
    //address public  admin = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    address payable  public  owner;
   

    constructor() payable  {
        owner = payable ( msg.sender);

    }

    function deposit() public payable  {

    }


    function depositOne() public{

    }

    function SendEthe(address payable _to, uint _amount) public {
        require (address(this).balance >= _amount, "balance");
        _to.transfer(_amount);           }
}