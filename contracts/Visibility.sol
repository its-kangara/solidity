// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//public - any contract and account can call
//private - only inside the contract that defines the function
//internal- only inside contract that inherits an internal function
//external - only other contracts and accounts can call

contract visibility {
    uint private x = 0;
    uint internal y = 1;
    uint public z = 2;


    function privateFunc() private  pure returns (uint){
        return 0;
    }

    function internalFunc() internal   pure returns (uint){
        return 1000;
    }
    function publicFunc() public   pure returns (uint){
        return 2000;
    }
    function externalFunc() external   pure returns (uint){
        return 0;
    }

    function test1() external view{
        x + y+z;
        privateFunc();
        internalFunc();
        publicFunc();

        this.externalFunc(); // this is not idea and gas inefficient 
    }

}


contract VisibilityChild is visibility {
    function test2() external view{
        y + z;
        publicFunc();
        internalFunc();

        // we cannot call private and internal
        

    }


}