# 🏦 Vault Bank - Block 4 Project
**Developer:** Augusto Paucar  
**Status:** ✅ Completed (Block 4 - Blockchain Accelerator)

### 📋 Overview
Vault Bank is a secure decentralized banking protocol designed to manage liquidity within the Vault Ecosystem. It allows users to deposit and withdraw **VGT (Vault Governance Tokens)** securely, acting as a decentralized savings account with real-time balance tracking.

### 🚀 Key Features
* **Asset Management**: Securely handles ERC20 token deposits using the `transferFrom` pattern.
* **Enhanced Security**: Implements OpenZeppelin's `ReentrancyGuard` to prevent reentrancy attacks during withdrawals (Senior-level security).
* **State Management**: Real-time tracking of user balances through optimized Solidity mappings.
* **Event Logging**: Emits indexed events (`Deposited`, `Withdrawn`) for high-performance off-chain data indexing.

### 🛠 Technical Stack
* **Language:** Solidity 0.8.24
* **Security Framework:** OpenZeppelin 5.0 (ReentrancyGuard)
* **Token Standard:** ERC-20 (Custom VGT Integration)

### 🔗 Ecosystem Integration
This contract is designed to work in tandem with the Vault Governance Token. The Bank interacts directly with the VGT contract to manage deposits and ensure the 2% deflationary burn is respected during transfers.

### 📍 Verified Contract Addresses (Sepolia Testnet)
* **Vault Bank (Block 4):** `0x89E0148D47708573299388147dE3911681289133`
* **VGT Token (Block 2):** `0x1b2311a30c3be05e08e15989780ae84db061509c`

---
*Developed as part of the Blockchain Accelerator Program.*