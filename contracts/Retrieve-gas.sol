//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 public  favouriteNumber;  //if you dont set the number, the number is automatically initialized to 0
                                    //if you dont specify the visiblity of a funtion is by default set to Internal 
    
   function store(uint256 _favouriteNumber) public{
       favouriteNumber = _favouriteNumber;
       retrieve();
  
   }
        //view and pure function when called alone don't spend Gas
        //view and Pure functions disallow modification of state 
  function retrieve() public view returns (uint256) {
      return favouriteNumber;
  } 
  
}