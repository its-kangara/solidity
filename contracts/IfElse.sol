// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract IFElse{
    function example (uint _x) external pure returns (uint) {

        if (_x < 10){
            return  1;   
        }else if  (_x < 20){
            return 2;
        }else {
            return 3000000000000000;
        }
    }
    function ternary (uint Y ) external  pure  returns (uint) {
        if (Y < 10 ){
            return 100000000000000; 

            //this else is optional 
    } else {
            return 20000000000000000000000000000000;
    }

    

}
//this is similar or a short ternary operator .
function ternarycalculator2 (uint z ) external  pure returns (uint){
     return z < 10 ? 1 : 2000000000000; 
} 

}