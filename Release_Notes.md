# 📦 FTAI Release Notes

This document tracks all published versions of the `.ftai` specification, along with key changes, notes, and implementation updates.

---

## Version History

### v2.0.0 (Unfrozen – In Progress)
- Major grammar refactor: simplified @tag structure, removed nested blocks
- Introduced:
  - `@schema-lite` support (RFC pending)
  - `--soft` linter mode
  - `@intent fail` metadata for test validation
- Hardened Python validator:
  - Detects malformed quotes, mixed indentation
  - Validates structural and semantic tag usage
- Initial Swift validator implemented
- Governance and release protocol formalized (`GOVERNANCE.md`, `RELEASE_SCHEDULE.md`)
- Full test vector rework in progress (pass/fail split, schema alignment)
- PocketMedic implementation (WIP)

---

### v1.6.0 (Legacy)
- JSON-inspired tag design
- Verbose @document syntax, no prose support
- Used in early FolkTech tools
- Deprecated with the introduction of `.ftai v2.0` grammar

---

## Pending Freeze Conditions (for v2.0)
- [ ] Final Swift validator patch
- [ ] Cross-tool validation test suite passes (Python + Swift)
- [ ] PocketMedic uses `.ftai` live
- [ ] RFC-0001 accepted and merged
- [ ] `.ftai` format publicly published

---

## Next Planned Versions

### v2.1 (Proposed)
- `@compress` support for lightweight `.ftai.min` files
- Optional `@fallback_text` block for legacy compatibility
- Embedded `@default_profile: minimal|agentic|structured`

### v3.0 (Planned 2026)
- Native multilingual block support
- Agent-specific profile trees
- Partial schema inference from prompt context

---

_Last updated: 2025-04-29_