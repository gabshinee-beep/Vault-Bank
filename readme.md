# 🏦 Vault Bank - Block 4 Project
**Developer:** Augusto Paucar  
**Status:** Completed (Block 4 - Blockchain Accelerator)

### 📋 Overview
Vault Bank is a smart contract-based financial system designed to manage liquidity within the Vault Ecosystem. It allows users to deposit and withdraw **VGT (Vault Governance Tokens)** securely, acting as a decentralized savings account.

### 🚀 Key Features
* **Asset Management**: Securely handles ERC20 token deposits using the `transferFrom` pattern.
* **Enhanced Security**: Implements OpenZeppelin's `ReentrancyGuard` to prevent reentrancy attacks during withdrawals.
* **State Management**: Real-time tracking of user balances through optimized Solidity mappings.
* **Event Logging**: Emits indexed events for high-performance off-chain data indexing (ideal for front-end integration).

### 🛠 Technical Stack
* **Language:** Solidity 0.8.24
* **Security:** ReentrancyGuard (OpenZeppelin)
* **Interface:** IVaultToken (Custom ERC20 Integration)

### 📍 Contract Address (Testnet)
`DEPLOY_ADDRESS_HERE` 
*(Note: Replace this once we deploy to Sepolia/Polygon Amoy)*