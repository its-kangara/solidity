// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract FunctionOutput{
    function returnMany() public pure returns (uint, bool){
     return (1, true);
 }

    function named() public  pure returns (uint x, bool b) {

     return (1, true);
 }

    function assigned() public  pure returns (uint x, bool b){
    x = 1;
    b = true;
} 

    //function destructingAssignments() public  pure {

       // (uint x, bool b) = returnMany();
        // (, bool _b) =  returnMany(); // the use of, chooses what to retun since you must declare the variable type. and when you need the second output
    //}
}