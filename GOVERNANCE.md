# GOVERNANCE.md

## 🔧 Overview

FTAI Spec is governed by the FolkTech AI Steering Committee. Our goal is to maintain a stable, interoperable, and community-informed hybrid format for AI ↔ human collaboration.

All changes to the spec must be proposed, reviewed, tested, and versioned according to this governance policy.

---

## 🧠 Decision-Making Process

- All changes must be submitted as Pull Requests (PRs).
- PRs require **two approvals** from Steering Committee members (one must be human).
- **Emergency fixes** (security, fatal bugs) may be merged with **CEO override + AI co-signature**.
- All merged PRs must include:
  - Link to validation suite results
  - Impact summary
  - Version tag bump (major, minor, patch)

---

## 👥 Steering Committee

| Role            | Member                     |
|-----------------|----------------------------|
| CEO             | Mike Folk                  |
| Technical AI    | Jarvis AI                  |
| Spec AI         | O3 Thinker                 |
| Automation AI   | Gemini                     |
| External Review | Open source contributors   |

- Only human members may approve version freeze/release cycles.
- AI members may initiate and review, but cannot finalize a major version.

---

## 🚀 Release Cadence

| Type            | Frequency     | Trigger Criteria                                  |
|-----------------|---------------|----------------------------------------------------|
| Major Release   | Annually      | Format-breaking changes, new core sections         |
| Minor Update    | As-needed     | Non-breaking tag additions, schema evolution       |
| Patch           | Anytime       | Bugfixes, typo corrections, linter upgrades        |

All releases must be versioned using `@ftai-version:` and reflected in `CHANGELOG.ftai`.

---

## 🧪 Validation Requirements

Before any major or minor release:
- All `.ftai` examples must pass strict validation
- Linter parity between Python + Swift
- Test vectors for:
  - Parsing
  - Tag resolution
  - Schema enforcement
  - Failure intent (`@intent fail`)
- Human readability must not regress beyond YAML baseline

---

## 📬 Community Feedback

- RFCs can be submitted by any contributor via GitHub issue or PR
- Discussions are tracked in the `/discussions/` folder
- Contributor License Agreement (CLA) is required for merge

---

## 🔒 Fail-Safe Policy

In the event of format-wide risk:
- CEO may call an emergency halt
- Freeze on merges until validator integrity is restored
- Temporary hotfixes must expire after 30 days unless merged to spec

---

Version: `v2.0.0-gov`