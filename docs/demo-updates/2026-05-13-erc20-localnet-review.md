# ERC-20 Localnet Demo Review: 2026-05-13

Status: Wednesday demo update draft.

Demo:

`demos/erc20-localnet/`

## Review Goal

Confirm that a learner can install dependencies, compile the contract, run a
local Hardhat network, deploy `ABC4RDLearnToken`, and explain what the token
state proves and does not prove.

## Review Checklist

- [ ] `npm install` completes.
- [ ] `npm test` passes.
- [ ] `npm run compile` passes.
- [ ] `npm run node` starts a local network.
- [ ] `npm run deploy:local` prints a contract address.
- [ ] `npm run check:local -- 0xYourContractAddress` transfers demo tokens.
- [ ] README clearly says the token has no real-world value.
- [ ] No mainnet deployment instructions are present.

## Learner Run Log Template

```text
Date:
Learner:
Node.js version:
npm version:
Test result:
Contract address:
Transfer result:
Reflection URL:
Issue or PR URL:
```

## Reflection Prompt

Write 150-250 words:

> What did the local token contract prove, and what did it not prove?

## Follow-Up

If two independent learners can run the demo successfully, mark it as
`reviewed for local learning` and keep it localnet-only.

