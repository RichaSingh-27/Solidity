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