# .ftai Keyword Specification

This document defines the official `@` tags allowed in `.ftai` files.  
Tags not listed here are considered **invalid** and should be rejected by parsers and linters.

---

## 🧱 Core Tags

| Tag           | Description |
|----------------|-------------|
| `@ftai`        | Version + format type header (e.g., `@ftai memory-log (2025-04-20)`) |
| `@document`    | Metadata: title, author, schema, tags |
| `@ai`          | AI-specific block: mode, encoding, task scope |
| `@ai_note`     | Lighter AI memory or guidance — can appear multiple times |
| `@memory`      | Defines memory block type, persistence rules, etc. |
| `@task`        | Action block with directives or steps |
| `@config`      | System or app configuration data |
| `@agent`       | Used for multi-agent definitions or dispatch |
| `@end`         | Terminates any active block (especially `@ai`, `@task`, `@memory`) |

---

## 🧾 Optional / Reserved Tags

| Tag             | Purpose |
|------------------|---------|
| `@tags`          | Alternate syntax for tag list (legacy support) |
| `@schema`        | Inline schema reference (use inside `@document`) |
| `@author`        | Override author identity (used rarely) |
| `@version`       | Alternate or explicit version override (deprecated if `@ftai` present) |

---

## 🔒 Restricted / Reserved Tags

Do **not** use these in custom implementations:
- `@fuck_you`, `@meta`, `@system`, `@debug`, `@prompt`, etc.  
These are either **banned**, **reserved for internal tooling**, or **unapproved**.

All unknown tags should be **flagged** during parsing.  
You may allow experimental tags in sandbox mode, but they must be prefixed like `@x_feature` and documented.

---

## ✍️ Field Format Rules

- Fields inside a tag block use key-value pairs:

```ftai
@document
title: Core Memory
author: Mike Folk
schema: ai_origin
tags: [core, memory, training]

	•	@ai, @task, @memory, and @agent blocks must be terminated with @end
	•	All prose between sections should be delimited with ---

⸻

💥 Non-Compliance Handling

Error Type	Example	Severity
Unknown tag	@fuck_you	Fatal
Missing @end for @ai		Warning or Fatal (parser-dependent)
Missing @ftai at top		Fatal
Malformed metadata (no key: value)	title "foo"	Warning
Misordered blocks (e.g., @ai before @document)		Warning



⸻

🧠 Parsing Best Practices
	•	Validate tag spelling against this list
	•	Strip whitespace before matching tags
	•	Match keys inside blocks using : pattern
	•	Allow comments using # or // if needed in future versions
	•	Support block nesting only where explicitly allowed (@agent within @ai, etc.)

⸻

📌 Version

This file applies to:

@ftai v2.0



⸻

For proposed additions or changes, submit a PR to:
https://github.com/mfolk77/ftai-spec


© 2025 FolkTech AI • Format maintained by Mike Folk and contributors
