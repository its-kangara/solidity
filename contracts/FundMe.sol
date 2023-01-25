// SPDX-License-Identifier: MIT

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract FundMe{


        uint256 public  minimumUsd = 50;

        function fund() public payable {
            //want to be able to set a minimum fund amount in USD
            //1. How do we send ETH to this contract?

            require(msg.value >= minimumUsd, "Didn't Send Enough!!");  //to get the equivalent of USD to ether we introduce Oracles - they give us data in APIS
                                                                    //data from decentralized sources  eg .traditional agreement data (external data)
                                                                    //Chain link price feeds API

                                                                    //chainlink virtiual randomness numbers ( e.g lotery, NTFS 
                                                                    //Chainlink keepers  listens to diffrent event and charges gas

             //1e18 ==1 * 10 ** 18 == 1000000000000000000000000000000 
        }

    }
