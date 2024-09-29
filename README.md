Token creation:-

This Solidity program is a simple "Token_creation" program that demonstrates the basic syntax and functionality of the Solidity programming language.It defines a basic custom token called "Ruchi" with the abbreviation "MTA". It demonstrates essential token functionalities like minting and burning tokens, and allows for the management of token balances for different Ethereum addresses. This project serves as a starting point for creating your own token on the Ethereum blockchain.

Description
This program is a simple token contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. This project contains some basic properties and two function like:-
Token Properties: Stores the name, abbreviation and total supply of the token.
Mint Function: Allows increasing the total supply and adding tokens to an address of the Ethereum.
Burn Function: Allows reducing the total supply by removing tokens from an address.
Balance Management: Keeps track of token balances using a mapping.

Getting Started
Executing program
To run this program, you can use Remix IDE, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, follow the following steps:-
Create a new file named Token_Creation.sol.
Copy and paste the following code into the file:
````
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MyToken {
    string public tokenName = "Ruchi";
    string public tokenAbbrv = "MTA";
    uint public totalSupply=0;
    mapping(address => uint) public balances;

    function mint(address add,uint value) public 
    {
        totalSupply += value;
        balances[add] += value;
    }
    function burn(address add,uint value) public 
    {
        if(balances[add] >= value)
        {
            totalSupply -= value;
            balances[add] -= value; 
        }
        
    }

}
````
Now save the file.
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. 
Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile Token_Creation.sol" button.
Deploy the Contract:
Open the Deploy & Run Transactions tab.
Choose the MyToken contract from the dropdown menu.
Select your preferred environment.
Click on Deploy.

Once the contract is deployed, you can interact with it by calling the mint function or the burn function. Click on the "Token" contract in the left-hand sidebar, and then click on the tokenName and tokenAbbrv to see the Token name and Token abbriviation .
You have to give an address to each function and the value as they were the parameters to call the functions(address add,uint value).
You can now click on "transact" button to use the mint function to create a token and can see the created token by seeing the totalSupply and the balance.
Similarly you can use the burn function by giving the address and value then clicking on the "transact" button.To check whether the tokens are burned or not check the totalSupply and the balance.

Example Usage:-
Here we are using a sample address.
Mint 100 tokens to Address:
Call the mint function with:
address: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
value: 1000
This will increase the total supply by 1000 tokens and credit them to the address.

Burn 500 tokens from Address:
Call the burn function with:
address: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
value: 500
If the address has at least 500 tokens, the total supply will decrease by 500, and the address’s balance will be updated accordingly.

Authors
Richa Singh(richasingh2427@gmail.com)
License
This project is licensed under the MIT License
