# Module 06: Oracles, Data, and the Physical World

Course: Blockchain Foundations: From Bitcoin to Verifiable Infrastructure.

Status: v0.1 draft.

Time: 60-120 minutes.

## Goal

Understand why blockchains do not automatically know physical-world truth and why oracle design matters.

## Key Ideas

- oracle;
- data feed;
- API;
- sensor;
- attestation;
- off-chain data;
- physical asset;
- provenance;
- failure mode;
- trust boundary.

## Read

- Chainlink documentation;
- The Graph documentation;
- one public source on oracle failures or data integrity;
- ABC4RD Blockchain Use Case Evaluation Framework.

## Learn

A blockchain can verify that a contract received some data and executed some rule. It cannot automatically verify that a sensor was honest, a real-world asset exists, a legal document is valid, or a person told the truth.

## Assignment

Build an oracle-risk table for one use case:

- weather insurance;
- tokenized equipment;
- health credential;
- manufacturing quality record;
- sensor-based energy report;
- academic certificate.

Table:

| Data needed | Source | Who controls it? | What can fail? | How to reduce risk? |
|---|---|---|---|---|

## Submission

Add your table to:

```text
student-submissions/blockchain-foundations/[github-username].md
```

## Review Criteria

- off-chain data is clearly identified;
- at least 3 failure modes are listed;
- mitigation is realistic;
- blockchain is not described as solving all truth problems.

## Safety Note

Do not connect real sensors, medical records, industrial systems, or financial feeds to public demos without domain and security review.

