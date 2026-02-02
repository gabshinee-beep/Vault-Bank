// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

interface IVaultToken {
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function transfer(address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract VaultBank is ReentrancyGuard {
    IVaultToken public immutable vgtToken;
    
    struct Account {
        uint256 balance;
        uint256 lastDepositTime;
    }

    mapping(address => Account) public accounts;
    uint256 public constant REWARD_RATE_ PER_SECOND = 1; // Un ratio simple para el ejemplo

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    constructor(address _vgtAddress) {
        vgtToken = IVaultToken(_vgtAddress);
    }

    // Depositar VGT en el banco
    function deposit(uint256 _amount) external nonReentrant {
        require(_amount > 0, "No puedes depositar 0");
        
        // Transferencia desde el usuario al banco
        bool success = vgtToken.transferFrom(msg.sender, address(this), _amount);
        require(success, "Transferencia fallida");

        accounts[msg.sender].balance += _amount;
        accounts[msg.sender].lastDepositTime = block.timestamp;

        emit Deposited(msg.sender, _amount);
    }

    // Retirar todo el saldo
    function withdraw() external nonReentrant {
        uint256 amount = accounts[msg.sender].balance;
        require(amount > 0, "Saldo insuficiente");

        accounts[msg.sender].balance = 0;
        
        bool success = vgtToken.transfer(msg.sender, amount);
        require(success, "Error al enviar fondos");

        emit Withdrawn(msg.sender, amount);
    }

    // Consultar saldo total (View)
    function getBalance(address _user) external view returns (uint256) {
        return accounts[_user].balance;
    }
}