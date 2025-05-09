Here’s a tightened, clarified, and slightly expanded rewrite of your keywords.md for .ftai v2.0. This version:
	•	Adds clarity to tag enforcement, quoted tag rules, and block handling
	•	Makes formatting bulletproof for use in validation scripts and IDE plugins
	•	Introduces @ref, @input, @output, @context, and @rules as officially recognized tags (commonly used in your own examples but not yet in the spec)

⸻


# .ftai Keyword Specification (v2.0)

This document defines the official tags used in `.ftai` files.

Only tags listed here, or those explicitly declared in a schema or properly quoted, are considered valid. Any others will trigger a parser **warning or fatal error** depending on enforcement level.

---

## 🧱 Core Tags

These are always valid. They form the foundation of `.ftai`.

| Tag        | Description |
|------------|-------------|
| `@ftai`    | Declares format version and file type. Must be the first line. Example: `@ftai memory-log (2025-04-20)` |
| `@document`| Metadata block: title, author, schema, and tags |
| `@schema`  | Defines required/optional tags for this file; can be inline or reference external schemas |
| `@ai`      | AI-specific configuration block (mode, target, encoding, etc.) |
| `@ai_note` | Guidance to the AI, not shown to users or saved to memory |
| `@task`    | Explicit instruction or action with defined structure |
| `@memory`  | Declares a memory block (scope, persistence, TTL, etc.) |
| `@agent`   | Used to define or message multiple agents |
| `@input`   | Used inside tasks or memory to declare expected input |
| `@output`  | Used to define expected or generated output format |
| `@context` | Supplemental background for a task or decision |
| `@rules`   | Constraints or logic rules associated with a task or input |
| `@config`  | App or system-specific configuration block |
| `@ref`     | External reference (e.g., URLs, IDs, datasets, or citation anchors) |
| `@end`     | Required terminator for open blocks like `@ai`, `@task`, `@agent` |

---

## 🧾 Optional / Legacy Tags

These are still supported for backward compatibility or loose formats.

| Tag       | Usage |
|-----------|-------|
| `@tags`   | Legacy tag list inside `@document`; superseded by `tags:` field |
| `@version`| Manual override for versioning (use rarely) |
| `@title`  | Legacy — superseded by `title:` in `@document` |
| `@author` | Can override metadata block; discouraged |

---

## 🔒 Restricted / Banned Tags

The following tags are **banned or reserved**:

- `@fuck_you`, `@system`, `@prompt`, `@debug`, `@meta`, etc.

These should only appear in internal dev test cases. Unapproved usage will trigger **fatal validation errors**.

---

## 🧩 Quoted Tags (`@"custom_tag"`)

Quoted tags allow one-off structured fields without schema declaration.  
They are **only valid** when:

- No schema is present
- Working in sandbox/draft mode
- Using the `@x_` or `@sandbox` prefix

Example:
```plaintext
@"patient_summary"
This patient had a witnessed arrest and ROSC at 14:03.

Warning: Overuse (>25 in one file) triggers a parser warning.
Quoted tags must not duplicate core tag names.

⸻

##📐 Block Syntax & Field Format
	•	Use key: value format inside structured blocks:

@document
title: "EMS Protocol"
author: "Mike Folk"
schema: "ems_med_card_v1"
tags: [medication, emergency]
@end

	•	Use --- to separate logical prose sections
	•	All open blocks (@ai, @task, @memory, @agent) must be closed with @end
	•	Nested blocks allowed only when explicitly defined (e.g., @agent inside @ai)

⸻

##🚫 Non-Compliance Handling

Issue	Example	Severity
Unknown tag	@fuck_you	Fatal
Unclosed block	@task with no @end	Fatal/Warning
Missing @ftai header	—	Fatal
Malformed metadata	title "oops"	Warning
Misordered blocks	@ai before @document	Warning
Quoted tag spam	25+ @"weird" tags	Warning


⸻

##🧠 Parsing Guidelines
	•	Validate tag legality against:
	•	This file
	•	The declared schema (if present)
	•	Quoted tag syntax (if allowed)
	•	Strip leading/trailing whitespace
	•	Support future inline comment syntax with # or //
	•	Support schema loading from .ftai, .json, or remote schema URLs

⸻

##📌 Version

This specification applies to:

@ftai v2.0


⸻

##🛠 Want to Contribute?

Submit issues or pull requests:
👉 https://github.com/mfolk77/ftai-spec

© 2025 FolkTech AI — Maintained by Mike Folk and core contributors.

---
