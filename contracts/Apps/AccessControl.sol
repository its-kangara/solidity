// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccessControl {

    event GrantRole(bytes32 indexed role, address indexed account);
    event RevokeRole(bytes32 indexed role, address indexed account);
    //role => account ==> bool

    mapping (bytes32 => mapping (address => bool)) public roles;

    bytes32 private constant ADMIN = keccak256(abi.encodePacked("ADMIN"));
    bytes32 private constant USER = keccak256(abi.encodePacked("USER"));
    bytes32 private constant MANAGER = keccak256(abi.encodePacked("MANAGER"));

    modifier onlyRole(bytes32 _role) {
        require(roles[_role][msg.sender], "not authorized");
        _;
    }

    constructor() {
        _grantrole(ADMIN, msg.sender);

        //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    }

    function _grantrole(bytes32 _role, address _account) internal {
        roles[_role][_account] = true;
        emit  GrantRole(_role, _account);

    }


    function grantRole(bytes32 _role, address _account) external onlyRole(ADMIN){
        _grantrole(_role, _account);
    }


    function revokeRole(bytes32 _role, address _account) internal  onlyRole(ADMIN){
         roles[_role][_account] = false;
        emit  RevokeRole(_role, _account);

    }


}