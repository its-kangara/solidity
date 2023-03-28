// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// contract X{
//     uint public counter;
//     constructor(){
//         counter = 0;
//     }
//     function increment() public{
//         counter +=1;
//     }
// }

// contract Y{
//     uint public counter;
//     constructor(){
//         counter = 0;
//     }

//     function increment_1(address contract_X_addr) public{
//         (bool success, bytes memory data) = contract_X_addr.delegatecall(
//             abi.encodeWithSignature("increment()"));

//     }
// function increment_2(address contract_X_addr)public {
//     (bool success, bytes memory data) = contract_X_addr.call(
//         abi.encodeWithSignature("increment()"));
// }


// }


// contract someNFT is ERC721{
//     mapping (uint256 => address) ownerOf;
//     mapping (address => uint256) balanceOf;

//     functionmin
//  }

// function weDoStuffHere(uint x) public view returns (uints2) {
// uint8 x;
// uinti6 y = 1 - x;
// uint32 z = y + OxFFFF;
// return z;
//  }


//  contract Example {
// mapping(address => mapping(address => uint256)) public allowances

// function transferFrom(address owner, address to, uint256 amount) public {
// uint256 current = allowances[owner][msg.sender];
// // if there's infinite approval already, just proceed
// if (current != type(uint256).max) {
// unchecked {
// allowances[owner][msg.sender] = current - amount;

 

// }

// contract Example {
// mapping(address => mapping(address => uint256)) public allowances

// function transferFrom(address owner, address to, uint256 amount) public {
// uint256 current = allowances[owner][msg.sender];
// // if there's infinite approval already, just proceed
// if (current != type(uint256).max) {
// unchecked {
// allowances[owner][msg.sender] = current - amount;

 

// }

// //proceed by allowing msg.sender to transfer
// //~amount~ from “owner”~ to “to”
// }