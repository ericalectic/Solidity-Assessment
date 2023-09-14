// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
/*
REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/
contract MyToken {
    // public variables here
    string public tokenName; 
    string public tokenAbbrv;
    uint256 public totalSupply;

    // mapping variable here
    mapping(address => uint256) public balances;

    //Constructors
    constructor(string memory _tokenName, string memory _tokenAbbrv, uint256 _initialSupply){
        tokenName = _tokenName;
        tokenAbbrv = _tokenAbbrv;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }
    
    // mint function
    function mint(address _receiver, uint256 _value) public {
       require(_value > 0, "Wrong input. Value should be greater than 0.");
       require(_receiver !=address(0), "Wrong input.");
        totalSupply += _value;
        balances[_receiver] += _value;
    }

    // burn function
    function burn(address _owner, uint256 _value) public{
        require(_value > 0, "Wrong input. Value should be greater than 0.");
        require(_owner != address(0), "Wrong input.");
        require(balances[_owner] >= 0, "Not enough balance.");
        totalSupply -= _value;
        balances[_owner] -= _value;
    }

}