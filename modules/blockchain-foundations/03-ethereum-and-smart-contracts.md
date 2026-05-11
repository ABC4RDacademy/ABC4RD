# Module 03: Ethereum and Smart Contracts

Course: Blockchain Foundations: From Bitcoin to Verifiable Infrastructure.

Status: v0.1 draft.

Time: 60-120 minutes.

## Goal

Understand Ethereum/EVM, accounts, gas, smart contracts, Solidity, events, testnets, and contract calls.

## Key Ideas

- Ethereum;
- EVM;
- account;
- contract;
- gas;
- transaction;
- event;
- Solidity;
- ERC-20;
- testnet;
- mainnet.

## Read

- Ethereum documentation;
- Solidity documentation;
- OpenZeppelin Contracts documentation;
- Ethereum ERC-20 documentation or standard reference.

## Learn

A smart contract is code deployed to a blockchain environment. It can enforce rules over on-chain state, but it cannot automatically know real-world truth. Contract bugs can be expensive and permanent.

## Assignment

Find a simple ERC-20 example from OpenZeppelin documentation.

Explain in plain language:

- token name;
- token symbol;
- total supply;
- transfer;
- approval/allowance;
- why tests matter.

Optional developer extension:

- install Foundry or Hardhat;
- run a local test;
- do not deploy to mainnet.

## Submission

Add your explanation to:

```text
student-submissions/blockchain-foundations/[github-username].md
```

## Review Criteria

- smart contract is not described as a legal contract by default;
- gas and transactions are explained clearly;
- localnet/testnet boundary is respected;
- at least 3 sources are cited.

## Safety Note

Do not deploy contracts handling funds, credentials, assets, or governance power without security review.

