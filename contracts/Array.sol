// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Array {
    uint[] public  nums = [1, 2, 3, 4];   //we don't have the size of the array here  but we have initialized items in out array
    uint[3] public numFixed = [5, 6, 7]; // we have an array of size 3 and we have initialized the items 

    function examples () external  {
        nums.push(5); // This will push  5 to be the last item in the array [1, 2, 3, 4, 5]
        //uint x = nums [1];  //this get the variable at index 1 which is 2
        nums[2] = 777; //1, 2, 777,4
        delete nums[1]; // 1, 0 777, 4 
        nums.pop(); //1, 0,777 this removes the last item inthe array
       // uint len = nums.length; // get the length of the array]


        //create array in memory
        uint[] memory a = new  uint [](5); //size of array is 5 and must be fixed (pop and push is not availabled)
        a[1] = 123; //update value at index 1
    }
    function returnArray() external  view returns (uint[] memory){

        return nums;

    }

}