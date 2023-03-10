// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HashFunc {
    function hash(string memory text, uint num, address addr) external  pure returns (bytes32){
      return  keccak256(abi.encodePacked(text, num, addr));
    }

    function encode (string memory text0, string memory text1) external  pure returns(bytes memory){

        return  abi.encode(text0, text1);
    }


     function encodePacked (string memory text0, string memory text1) external  pure returns(bytes memory){

        return  abi.encodePacked(text0, text1);
    
    }
//interesting- AAA BBB with give same result as AAAB BB   
// to solve this you include or ensure data types are not following each other /  string memory text0,uint x string memory text1
    function collision (string memory text0, string memory text1) external  pure returns (bytes32){

        return keccak256(abi.encodePacked(text0, text1));   
        }
    
    
    
}