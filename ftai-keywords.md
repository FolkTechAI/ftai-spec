# .ftai Keyword Specification (v2.0)

This document defines the **official tags** used in `.ftai` files.  
Tags not listed here are considered **invalid** unless declared inside a schema or wrapped in proper custom syntax.

---

## 🧱 Core Tags

These are always valid and form the foundation of the `.ftai` format:

| Tag         | Description |
|--------------|-------------|
| `@ftai`      | Declares version and document type (e.g., `@ftai memory-log (2025-04-20)`) |
| `@document`  | Metadata block (title, author, schema, tags) |
| `@schema`    | Defines required and optional tags for the document; may be written inline or reference an external schema file |
| `@ai`        | AI-specific block for task configuration, mode, and encoding |
| `@ai_note`   | AI memory guidance, commentary, or lighter directives |
| `@memory`    | Declares a memory scope (access, persistence, size, etc.) |
| `@task`      | Action instruction with defined steps |
| `@config`    | Application or system configuration block |
| `@agent`     | Multi-agent definitions and communication setup |
| `@end`       | Terminates open blocks (required for `@ai`, `@task`, `@agent`, etc.) |
---

## 🧾 Optional / Legacy Tags

| Tag         | Usage |
|--------------|--------|
| `@tags`      | Optional array-style tag list (legacy/loose) |
| `@schema`    | Inline schema definition block for custom formats |
| `@version`   | Alternative version override (use sparingly) |
| `@author`    | Overrides the default author block, rarely needed |

---

## 🔒 Restricted / Banned Tags

Do **not** use the following unless you're inside internal developer tooling:

- `@fuck_you`, `@meta`, `@system`, `@debug`, `@prompt`, etc.

These are either banned, reserved for internal use, or unsupported.  
Any tag not defined here or within an active schema should trigger a parser **warning or fatal error** depending on enforcement level.

---

## 🧩 Quoted Tags (`@"custom_tag"`)

Quoted tags allow **one-off structured elements** to exist in `.ftai` files *without requiring a full schema*.

### When to Use Quoted Tags

| Situation                     | Use `@"tag"`? | Notes |
|-------------------------------|---------------|-------|
| No schema, but needs AI to catch a field | ✅ Yes | Useful for large freeform documents |
| Schema is declared            | ❌ No          | Use declared tags from schema |
| Temporary drafts / sandbox    | ✅ Optional    | Allowed with `@sandbox` or `@x_` prefix |

> Quoted tags should only be used **sparingly** and must not conflict with core tags.

### Example:
```ftai
@"patient_summary"
This patient had a witnessed arrest with ROSC achieved at 14:03.



⸻

📐 Field Format & Block Rules
	•	Use key: value syntax for fields inside blocks:

@document
title: "EMS Protocol"
author: "Mike Folk"
schema: "ems_med_card_v1"
tags: [medication, emergency]

	•	Use --- to separate sections of prose or logic
	•	All @ai, @task, @memory, and @agent blocks must terminate with @end

⸻

🚫 Non-Compliance Handling

Issue	Example	Severity
Unknown tag	@fuck_you	Fatal
Missing @end for block	@ai without @end	Fatal/Warning
Missing @ftai at top	—	Fatal
Malformed metadata	title "oops"	Warning
Misordered blocks	@ai before @document	Warning
Overuse of quoted tags	25+ @"weird" tags	Warning



⸻

🧠 Parsing Guidelines
	•	Always validate tags against:
	•	This file
	•	Declared schema (inline or external)
	•	Quoted tag syntax (if no schema)
	•	Strip leading/trailing whitespace before parsing
	•	Only support block nesting when explicitly allowed (e.g., @agent inside @ai)
	•	Support future comment syntax with # or //

⸻

📌 Version

This document applies to:

@ftai v2.0



⸻

🛠 Want to Contribute?

Submit a pull request or file a schema proposal:
👉 https://github.com/mfolk77/ftai-spec

⸻

© 2025 FolkTech AI — Maintained by Mike Folk and contributors
