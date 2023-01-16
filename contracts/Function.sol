//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 public  favouriteNumber;  //if you dont set the number, the number is automatically initialized to 0
    
   function store(uint256 _favouriteNumber) public{
       favouriteNumber = _favouriteNumber;
  
   }

   function retrieve() public  view returns(uint256){
       return favouriteNumber;
   }
}

//0x5B38Da6a701c568545dCfcB03FcB875f56beddC4