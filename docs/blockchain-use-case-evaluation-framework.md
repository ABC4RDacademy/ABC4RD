# Blockchain Use Case Evaluation Framework

This framework helps ABC4RD Academy students evaluate whether a blockchain,
token, DAO, credential, or verifiable-data system is appropriate for a use case.

The goal is not to prove that blockchain is always useful. The goal is to
separate real trust problems from slogans.

## Core Questions

| Question | Why it matters |
|---|---|
| What is the claim? | A vague claim cannot be verified |
| What needs to be verified? | Defines the proof boundary |
| Who are the parties? | Reveals trust, incentives, and conflict |
| What is the trust problem? | Tests whether blockchain is relevant |
| Why is a database not enough? | Prevents unnecessary blockchain use |
| Why does blockchain help or not help? | Forces technical reasoning |
| What data is off-chain? | Identifies the oracle problem |
| Who controls the oracle? | Shows centralization and failure risk |
| What can fail? | Forces adversarial thinking |
| What legal/safety boundary exists? | Prevents unsafe claims |
| Is there a simpler solution? | Keeps design honest |

## Evaluation Template

```markdown
# Use Case Review: [Name]

## Claim

What does the project say it proves or improves?

## Parties

- Users:
- Operators:
- Data providers:
- Asset custodians:
- Validators / sequencers / miners:
- Regulators or auditors:

## Trust Problem

What exactly is untrusted?

## Blockchain Fit

Why might blockchain help?

Why might blockchain not help?

## On-Chain Data

What is recorded on-chain?

## Off-Chain Data

What remains outside the chain?

## Oracle / Attestation

Who signs or submits real-world data?

## Failure Modes

- Technical:
- Economic:
- Legal:
- Operational:
- Governance:

## Simpler Alternative

Could a database, signed document, audit log, or public registry be enough?

## Educational Conclusion

Use / do not use / requires more evidence.
```

## Use Case Categories

- Bitcoin payments and custody.
- Stablecoins.
- RWA tokenization.
- DAO governance.
- Verifiable credentials.
- Supply-chain provenance.
- Health data interoperability.
- Manufacturing digital thread.
- AI model provenance.
- Scientific compute records.

## Student Output

Students should produce a one-page review, not a sales pitch.

Every review must include:

- source links;
- assumptions;
- risk boundaries;
- "what this does not prove" section.

