    /* This line specify the license under which the contract is published under MIT and 
    the version of the Solidity compiler that the contract 
    should be compiled with (version 0.8.0 or higher).*/

    // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


    //An import statement brings in the ERC20.sol file from the OpenZeppelin library.
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

    /*The "ELISSA" contract is derived from the ERC20 contract. It indicates that the deal for "Elissa" will 
    own every function listed in the ERC20 contract for an ERC20 token.*/ 

contract ELISSA is ERC20 {
        

    /*The constructor function is used to initialize the contract when it's deployed. 
    It has the initial name of the token to "cruz" and its symbol to "ETH".*/
    constructor() ERC20("cruz", "ETH"){

        /*_mint function is called within the constructor to mint 777 tokens and assign them to the deployer's address 
        (msg.sender or the owner account).*/
        _mint (msg.sender, 777);
    }

    /*Mint functions allow users to create a new token. */
    function Mint(uint _token) public {
        _mint(msg.sender, _token);
    }
    
    function Mint(address to, uint256 _token) public {
        _mint(to, _token);
    }

    /*Burn functions allow users to destroy their tokens.*/ 
    function Burn(uint256 _token) public {
        _mint(msg.sender, _token);
    }

     function Burn(address from, uint256 _token) public {
        _burn(from, _token);
    }

    /* The caller can send tokens to a recipient address using the transfer function. 
    To complete the transfer, it makes use of the _transfer method that was inherited from ERC20.*/ 
    function transfer(address recipient, uint256 _token) public override returns (bool) {
        _transfer(msg.sender, recipient, _token);
        return true;
    }
    
}
