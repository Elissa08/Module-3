# Smart-Contract-Project

This program is for write a smart contract to create own ERC20 token and deploy it using Remix .The contract owner should be able to mint tokens to a provided address and any user should be able to burn and transfer tokens.

## Description

Avalanche is a blockchain platform that provides decentralized apps and blockchain networks. Avalanche is designed to address the scalability issues that have conventional blockchain systems. The platform offers exceptional transaction speed and finality in milliseconds because of the consensus protocol, Avalanche. The adaptable architecture of Avalanche complements this scalability by enabling developers to design customized blockchain networks, or subnets, that satisfy particular needs and use cases. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., project.sol). Copy and paste the following code into the file:


     // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract ELISSA is ERC20 {
        

    constructor() ERC20("cruz", "ETH"){

        _mint (msg.sender, 777);
    }

    function Mint(uint _token) public {
        _mint(msg.sender, _token);
    }
    
    function Mint(address to, uint256 _token) public {
        _mint(to, _token);
    }
    function Burn(uint256 _token) public {
        _mint(msg.sender, _token);
    }

     function Burn(address from, uint256 _token) public {
        _burn(from, _token);
    }

    function transfer(address recipient, uint256 _token) public override returns (bool) {
        _transfer(msg.sender, recipient, _token);
        return true;
    }
    }


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.20" (or another compatible version), and then click on the "Compile + name of file(.sol)" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "project" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract has been deployed, you can interact with it through various functions such as mint, burn and transfer.

## Authors

Contributors names and contact info

Elissa Mae Cruz


## License

This project is unlicensed.
