# ERC-20 Localnet Learning Demo

Status: educational draft

This demo shows how a simple ERC-20-style token works on a local development
network. It is for learning only. `ABC4RDLearnToken` has no real-world value, no
price, no sale, no fundraising purpose, and no mainnet deployment plan.

## What learners practice

- Compile a self-contained Solidity contract.
- Start a local blockchain.
- Deploy a test token.
- Transfer a small balance between local accounts.
- Explain why balances on a blockchain are state records, not proof of real
  educational achievement by themselves.

## Requirements

- Node.js 18 or newer.
- npm.

## Install

```bash
npm install
```

## Compile

```bash
npm run compile
```

## Run localnet

In one terminal:

```bash
npm run node
```

## Deploy

In another terminal:

```bash
npm run deploy:local
```

The deploy script prints the contract address, deployer, total supply, and the
first learner account.

## Transfer and inspect

After deployment, copy the contract address and run:

```bash
npm run check:local -- 0xYourContractAddress
```

The script transfers 25 demo tokens from the deployer to a second local account
and prints both balances.

## Safety rules

- Do not deploy this contract to mainnet.
- Do not send real funds to any local demo address.
- Do not present the demo token as an investment, reward, or credential.
- Do not publish private keys or seed phrases.
- Treat completion evidence as a GitHub learning record, not as a token balance.

## Reflection prompt

After running the demo, write 150-250 words answering:

> What did the token contract prove, and what did it not prove?
