//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 public  favouriteNumber;  //if you dont set the number, the number is automatically initialized to 0
                                    //if you dont specify the visiblity of a funtion is by default set to Internal 
    //uint256 public favouriteNumber;
    
    //not the ideal way
    ///People public person = People({favouriteNumber: 2, name: "Kangara"});
  
  
   struct People {
       uint256 favouriteNumber;
       string name;
       uint256 age;
   }
   //array 
    People[] public  people;
  
    function addperson (string memory _name, uint256 _favouriteNumber, uint256 _age) public {
        People memory newperson = People({favouriteNumber:_favouriteNumber, name: _name, age: _age});
        people.push(newperson);
    }
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