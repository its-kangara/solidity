//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;



contract Erc20token {

    uint public totalSupply;
    mapping (address => uint) public balanceOf;
    mapping (address => mapping(address => uint )) public allowance;

    string public name = "Web3club";
    string public symbol = "W3C";
    uint8 public decimals = 18;

    function transfer(address recipient, uint amount) external returns (bool){
        balanceOf[msg.sender] -= amount;
        balanceOf[recipient]  += amount;
        emit transfer (msg.sender, recipient, amount);
        return true;

    }


    function totalSupply() external view returns (uint256){

    }

    function balanceOf(address tokenOwner) external view returns (uint256);

    function allowance(address tokenOwner, address spender) external view returns (uint);


  

    function approve(address spender, uint amount)  external returns (bool){

        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;

    }

    function transferFrom(address sender, address recipient, uint amount) external returns (bool){
        require(_value <= balanceOf[_from]);
        require(_value <= allowance[_fromn][msg.sender]);
        allowance [sender][msg.sender] -= amount;
        balanceOf[sender] -= amount;
        balanceOf[recipient] += amount;
        emit Transfer(sender, recipient, amount);
        return true;

    }


    function mint (uint amount ) external {
        balanceOf[msg.sender] += amount;
        totalSupply += amount;
        emit Transfer(add);
    }

  
    }