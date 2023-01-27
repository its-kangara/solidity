// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
    contract FundMe{


        uint256 public  minimumUsd = 50 * 1e18;

        address[] public funders;
        mapping (address => uint256) public  addressToAmountFunded;
 
        function fund() public payable {
            //want to be able to set a minimum fund amount in USD
            //1. How do we send ETH to this contract?

            require(getConversionRate(msg.value) >= minimumUsd, "Didn't Send Enough!!"); 
            funders.push(msg.sender);
            addressToAmountFunded[msg.sender] = msg.value;
        }

        function getPrice() public view returns (uint256) {
         //Adress 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419

         AggregatorV3Interface priceFeed = AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419);
         (,int256 price,,,) = priceFeed.latestRoundData();
         return  uint256(price * 1e10);

        }
        

        function getConversionRate(uint256 ethAmount) public view returns  (uint256) {
            uint256 ethPrice = getPrice();
            uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
            return ethAmountInUsd; 
        }

    }

//0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419