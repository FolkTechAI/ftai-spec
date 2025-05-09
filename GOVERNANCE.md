# GOVERNANCE.md

## Overview
The `.ftai` Specification is maintained and governed by the FolkTech AI core team. This document outlines how decisions are made, who has authority, and how contributions are evaluated.

## Core Principles
- Ensure stability and forward compatibility
- Promote practical, real-world adoption
- Balance innovation with strict validation standards
- Enforce clarity, minimalism, and readability in all spec changes

---

## Decision-Making Process

- All proposed changes to the `.ftai` spec must be submitted via **Pull Request (PR)** on the official GitHub repository.
- PRs must include a clear description, rationale, example usage, and versioning impact.
- Each PR requires **two approvals** before merge:
  - One from the CEO or appointed senior maintainer
  - One from a senior AI agent (e.g., Jarvis AI, o3_thinker)

**Emergency patches** (critical bugs, security fixes) may be approved with **CEO-only override**, with retroactive review allowed.

---

## Roles and Voting Rights

### 🧠 Steering Committee (Voting Power)
- **CEO** — Mike Folk (Final authority on all decisions)
- **Jarvis AI** — Lead Technical Orchestrator
- **O3 AI** — Spec Architect and Sanity Checker

### 🧩 Contributors
- Human developers with PR access may submit changes, improvements, bug reports, and test cases
- AI agents may propose structural changes, but must route proposals through a GitHub issue or internal tool
- Community members are encouraged to comment, test, and submit use cases

### 🕵️‍♂️ Review-Only Tier
- Open-source contributors may review, comment, and suggest revisions but cannot approve or merge PRs

---

## Release Cadence

- **Major Releases**: Every **6 months**
  - Introduce breaking changes, new syntax elements, or schema upgrades
- **Minor Updates**: **Quarterly**
  - Backward-compatible additions, new tags, or improved tooling
- **Emergency Patches**: As needed
  - Bug fixes, security updates, critical validation changes

Versioning follows **Semantic Versioning** (e.g., `v2.3.1`).

---

## Conflict Resolution

In the case of disagreement:
- The CEO has final say on merges and long-term spec direction
- Conflicts between AI agents (Jarvis, o3) are resolved through documented reason logs and third-agent tiebreaks

---

## Transparency

All changes, approvals, and version bumps are recorded:
- In the GitHub commit history
- In the `/changelog/` directory of the spec repo
- Public RFCs for major structural changes will be posted as `.ftai`-encoded proposals

---

## Licensing
The `.ftai` Specification is open-source and licensed under the **MIT License**, unless otherwise noted.
