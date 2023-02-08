// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// NOTE: Deploy this contract first
contract TestDelegateCall {
    // NOTE: storage layout must be the same as contract A
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) external  payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}

contract DelegateCall {
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _test, uint _num) external payable {
        // A's storage is set, B is not modified.
       // (bool success, bytes memory data) = _contract.delegatecall(
         //   abi.encodeWithSignature("setVars(uint256)", _num)



          (bool success, bytes memory data) =  _test.delegatecall(
               abi.encodeWithSelector(TestDelegateCall.setVars.selector, _num)
            );
            require(success, "delegatecall failed");
        
    }
}