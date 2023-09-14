# MyToken Solidity Smart Contract

![License](https://img.shields.io/badge/license-MIT-blue.svg)

## Overview

This Solidity smart contract, named "MyToken," is designed to create a basic cryptocurrency token. It follows specific requirements and provides functionality for creating and managing tokens, including minting and burning.

### Requirements

1. **Token Details**: The contract has public variables (`tokenName`, `tokenAbbrv`, `totalSupply`) to store information about the token, including its name, abbreviation, and total supply.

2. **Balances Mapping**: It uses a mapping (`balances`) to associate Ethereum addresses with their corresponding token balances.

3. **Constructor**: The contract's constructor initializes the token's name, abbreviation, and initial supply when the contract is deployed. It assigns the entire initial supply to the address that deploys the contract (`msg.sender`).

4. **Mint Function**: The `mint` function allows the creation of new tokens. It takes two parameters: an address (`_receiver`) and a value (`_value`). This function increases the total supply by `_value` and adds `_value` tokens to the balance of the `_receiver` address.

5. **Burn Function**: The `burn` function destroys tokens. Similar to the `mint` function, it takes an address (`_owner`) and a value (`_value`). This function deducts `_value` tokens from the total supply and the balance of the `_owner` address. Importantly, it includes conditional checks to ensure that the balance of the `_owner` is greater than or equal to the amount to be burned, preventing users from burning more tokens than they possess.
### Token Details
- **Token Name**
- - **Token Abbrv**
- **Total Supply**

### Balances
- **Balances Mapping**: A mapping that links Ethereum addresses with their corresponding token balances.

### Constructor
The contract's constructor efficiently initializes the smart contract with the designated token name, symbol, and initial total supply. The entirety of the initial supply is allocated to the sender of the contract upon deployment.

### Mint Function
- `mint(address _receiver, uint256 _value)`: This function empowers the contract owner to create new tokens effortlessly. By providing two parameters—`_receiver` (the address set to receive the freshly minted tokens) and `_value` (the quantity of tokens to mint)—the function subsequently bolsters the total supply by the specified value and attributes the minted tokens to the recipient's balance.

### Burn Function
- `burn(address _owner, uint256 _value)`: Inclusively, this function grants any token holder the ability to burn their tokens. Operating with the parameters `_owner` (the address of the token holder) and `_value` (the sum of tokens to burn), the function manages the deduction of the defined value from the total supply and accurately adjusts the token holder's balance. Importantly, this operation includes meticulous checks to verify that the token holder retains an adequate balance before executing the burn operation.


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Disclaimer

This smart contract is provided as a sample and for educational purposes. It is essential to thoroughly review and test any smart contract before deploying it on the Ethereum blockchain.

