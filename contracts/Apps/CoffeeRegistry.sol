// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

contract CoffeRegistry {
    
    struct Item {
        string name;
        uint256 price;
    }
    
    mapping (uint256 => Item) private items;
    uint256 private itemCount;
    
    function addItem(string memory _name, uint256 _price) public {
        Item storage newItem = items[itemCount];
        newItem.name = _name;
        newItem.price = _price;
        itemCount++;
    }
    
    function getItem(uint256 _id) public view returns (string memory, uint256) {
        require(_id < itemCount, "Item does not exist");
        Item storage item = items[_id];
        return (item.name, item.price);
    }
}