// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 //Struct allow you to group data together
contract Struct{
    struct Car {
        string model;
        uint year;
        address owner;
    }
//state variable 
    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOWner;

    function examples() external {
        Car memory toyota = Car("GT86", 2019, msg.sender);
       //key Value pairs - This does not need to be in order.
        Car memory lambo = Car({model: "lamborghini", year:1980, owner: msg.sender});

        //default value
        Car memory tesla;  
        tesla.model = "tesla";
        tesla.year = 2020;
        tesla.owner = msg.sender;
//pushing the data to our cars array
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);
//in a single line
        cars.push (Car("Ferrari", 2020, msg.sender));

        //getting the first car in the array

        Car memory _car123 = cars[0];
        _car123.model;
        _car123.year;
        _car123.owner;


        //to change/modify the items in the array 


        Car storage _car = cars[0];
        _car.year = 1999;
        //to delete the car owner 

        delete _car.owner;

        delete cars[1];

    }
    
}