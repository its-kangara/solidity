// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; //state our version
 

contract SimpleStorage{
    //uint256 public favouriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

//stores a number & upates
    function store( uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

  
// Pure/View does not spend gas
//retrievs - view disallows modification of states.
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }


    function addPerson (string memory name, uint256 favoriteNumber) public {
        listOfPeople.push( Person (_favoriteNumber,_name));
    }

}