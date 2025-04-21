# .ftai – FolkTech AI Format

**A universal, human-readable, AI-native memory format.**  
Created to bridge the gap between how people write and how AI learns.

---

## 📌 What Is `.ftai`?

`.ftai` is a plain-text format that combines Markdown-style readability with structured `@section` tags for AI parsing. It was designed for:

- Cross-language AI memory (Python ↔ Swift)
- AI-to-AI communication
- Embedding emotional tone, context, and relevance
- Eliminating redundant documentation between humans and machines
- Parsing without needing external dependencies or markup escaping

---

## 🔍 Format Overview

Each `.ftai` file consists of **structured metadata blocks** and **free-form prose**, marked by clear `@section` headers and `---` boundaries.

---

## 📘 Example

```ftai
@ftai folktech-memory (2025-04-19)

@document
title: The Founding of FolkTech AI
author: Mike Folk
tags: [origin, history, vision]
schema: founder_memory

---
In 2023, Mike Folk founded FolkTech AI with a single mission:
to make AI human-first, privacy-secure, and voice-integrated.

He believed that AI should speak with us, not just compute for us,
and that intelligence must be grounded in ethical design.
---

@ai_note
mode: core_memory
encoding: sentimental_logical
relevance: founder_identity
@end



⸻

✅ Key Features

Feature	Description
@ftai	Format header with type/version metadata
@document	Human-readable metadata block
@ai_note	AI-targeted directives and memory flags
@memory	Optional memory scope (persistence, access, size)
---	Delimiters for separating prose and blocks
@task / @agent / @config	Extendable blocks for planning, roles, and system flags
Inline prose	No quotes or escaping — write like a journal



⸻

🔧 Tooling Roadmap

Tool	Status
Swift parser	🛠️ In Dev
Python parser	🛠️ In Dev
FTAI → JSON converter	📌 Planned
JSON → FTAI converter	📌 Planned
VS Code syntax highlighter	📌 Planned
Schema linter / validator	📌 Planned



⸻

🧠 Why Not Just JSON or YAML?

Because traditional formats weren’t made for people:
	•	JSON is great for machines but a nightmare to hand-edit
	•	YAML is fragile, indentation-sensitive, and error-prone
	•	Both lose tone, narrative anchoring, and AI-instruction placement

.ftai solves this by embedding human and AI context in-line, with structure that feels like natural writing.

⸻

📁 Current Structure

spec/
├── example/
│   ├── config/
│   ├── memory/
│   ├── protocols/
│   └── sandbox/ (optional)
├── parsers/         # Python and Swift tooling
├── spec.md          # Core technical ruleset
├── README.md        # This file



⸻

📜 License

Licensed under the Apache 2.0 License — free to use, fork, and extend.
Just give credit where it’s due.

⸻

🚀 Get Involved

We’re building this format in the open.
Submit ideas, report parser issues, or contribute tools and examples.

👉 github.com/mfolk77/ftai-spec

© 2025 FolkTech AI • Format maintained by Mike Folk and contributors
