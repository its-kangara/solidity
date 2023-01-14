//SPDX-License-Identifier: MIT 
pragma solidity 0.8.8;

contract SimpleStorage {
    //Types boolean,unit, int, address,bytes
    bool hasFavouriteNumber = true;
    uint256 favouriteNumber = 5;
    string favouriteNumberInText = "five";
    int256 favouriteInt = -5;
    address myAddress = 0x154561C729c902f3E62Cf9194E6c499975908724;
    bytes32 favouriteBytes = "cats";
}