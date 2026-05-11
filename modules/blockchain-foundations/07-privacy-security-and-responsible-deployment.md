# Module 07: Privacy, Security, and Responsible Deployment

Course: Blockchain Foundations: From Bitcoin to Verifiable Infrastructure.

Status: v0.1 draft.

Time: 60-120 minutes.

## Goal

Understand blockchain security basics: keys, phishing, contract bugs, access control, privacy, audits, monitoring, and deployment gates.

## Key Ideas

- private key;
- seed phrase;
- phishing;
- access control;
- reentrancy;
- upgradeability;
- audit;
- static analysis;
- test coverage;
- incident response.

## Read

- OWASP guidance;
- OpenZeppelin security guidance;
- Slither documentation;
- Foundry or Hardhat testing documentation;
- ABC4RD Cybersecurity Lab notes.

## Learn

Security is not an optional final step. It starts before code is written. The more value or authority a system controls, the more serious the review process must be.

## Assignment

Create a security checklist for a testnet demo:

- secrets management;
- dependency review;
- test coverage;
- access control;
- upgrade rules;
- oracle risk;
- incident response;
- disclosure process.

## Submission

Add your checklist to:

```text
student-submissions/blockchain-foundations/[github-username].md
```

## Review Criteria

- private keys/secrets are handled correctly;
- at least 5 risks are listed;
- testnet/mainnet difference is clear;
- no production deployment is recommended without review.

## Safety Note

Never publish secrets, private keys, API tokens, seed phrases, or private user data.

