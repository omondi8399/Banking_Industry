//SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Banking {
    mapping(address => uint256) public balances;
    address payable owner;

    constructor() public {
        owner = payable(msg.sender);
    }

    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(msg.sender == owner, "Only the owner can withdraw funds");
        require(amount <= balances[msg.sender], "Insufficient funds");
        require(condition);
        
    }

}