// SPDX-License-Identifier: MIT

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "./SimpleStorage.sol";
//inheritance 
contract ExtraStorage is SimpleStorage {
//+5 
//override
//virtual override
    function store(uint256 _favouriteNumber) public override {
        favoriteNumber = _favouriteNumber + 5;
    }

}