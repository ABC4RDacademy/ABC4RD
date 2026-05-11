# Blockchain Academy: From Bitcoin to Verifiable Infrastructure

Status: draft course 01

## Purpose

This course introduces blockchain through public, verifiable infrastructure
rather than speculation. Learners start with Bitcoin foundations, compare
account-based smart-contract systems carefully, and finish by building a small
local ERC-20 demo that explains tokens, balances, transfers, and trust limits.

## Audience

- Students learning blockchain for the first time.
- Developers who want a safer path from Bitcoin literacy to smart-contract
  experimentation.
- Researchers studying credentials, provenance, attestations, and public
  infrastructure.
- Educators preparing practical labs without financial promotion.

## Learning outcomes

By the end, learners should be able to:

- explain Bitcoin as peer-to-peer electronic cash and settlement infrastructure;
- distinguish UTXO and account-based models at a beginner level;
- describe what a token contract can and cannot prove;
- deploy a simple ERC-20-style contract on a local network;
- explain why real-world credentials need governance, review, privacy, and
  evidence, not just a blockchain record;
- prepare a small completion portfolio for maintainer review.

## Module map

| Module | Topic | Practical output |
| --- | --- | --- |
| 01 | Bitcoin foundations | 150-word explanation of Bitcoin for a new developer |
| 02 | Transactions and verification | Diagram of a transaction lifecycle |
| 03 | Wallets, custody, and safety | Personal safety checklist for test environments |
| 04 | Open-source contribution | Review one public issue or documentation page |
| 05 | Smart-contract mental model | Compare UTXO and account-based systems |
| 06 | ERC-20 localnet lab | Deploy `ABC4RDLearnToken` locally and record output |
| 07 | Verifiable credentials | Draft a credential evidence checklist |
| 08 | Provenance and limits | Write a short note on what blockchain cannot fix |

## First lab

Use the ERC-20 localnet demo:

`demos/erc20-localnet/`

Learners deploy a test token locally, transfer a small balance between local
accounts, and explain the state transition. The token is educational only and
has no market, price, investment, fundraising, governance, or production use.

## Completion evidence

Learners submit:

- one short Bitcoin foundations explanation;
- one transaction or state-transition diagram;
- one localnet deployment log;
- one short reflection on trust limits;
- one GitHub issue, pull request, or discussion comment showing public learning
  practice.

## Certificate path

Completion can be reviewed against:

`docs/certificates/blockchain-foundations-certificate.md`

The certificate template is a test artifact. It does not claim accreditation,
employment readiness, financial expertise, or professional licensing.

## Safety boundaries

- Do not present token deployment as investment activity.
- Do not teach mainnet deployment until a separate risk-reviewed module exists.
- Do not ask learners to publish private keys, seed phrases, personal
  documents, financial data, or private contact details.
- Keep all labs on localnet or carefully reviewed public testnets.
