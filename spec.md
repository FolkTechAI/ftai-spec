@ftai folktech-spec
@document
title: "FTAI Format Specification"
author: "FolkTech AI / Mike Folk"
version: "2.0"
created: "2025-04-19"
tags: ["ftai", "ai-format", "memory", "ai-to-human", "ai-to-ai"]
schema: "ftai-core-2.0"
@end

---

# FolkTech .ftai Format Specification (v2.0)

## 🔹 Overview

`.ftai` is a human-first, AI-readable file format designed to:
- Serve as a **bridge** between human-readable documents and structured data for LLMs
- Enable **AI-to-AI communication**, memory encoding, and AI planning
- Replace bloated `.json` or `.yaml` with a **flexible, readable, fault-tolerant** format

This format is built for rapid writing, clean parsing, and long-term memory storage.

---

## 🔹 Structure

An `.ftai` file is composed of **tagged sections**, each prefixed by an `@block_name`. 
Each block contains either structured metadata or freeform narrative.

### 🔸 Required Sections

@ftai folktech-memory
@document
title: “History of FolkTech AI”
author: “Mike Folk”
date: “2025-04-18”
schema: “founder_memory”
@end

⸻

This is freeform content. Write as if you’re journaling, storytelling, or recording a conversation.

It is stored in raw text and preserved as-is for semantic indexing.

⸻

@ai
mode: “core_memory”
encoding: “sentimental_logical”
relevance: “founder_origin”
persistence: “permanent”
@end

### 🔸 Optional Sections

- `@memory`: Memory type, persistence method, etc.
- `@task`: Tasks or goals for agents
- `@config`: System settings
- `@agent`: Targeted AI(s)
- `@analysis`: Bullet-point breakdowns
- `@flag`: Embedded signals (e.g., [tone:urgent])

---

## 🔹 Syntax Rules

1. **Each section begins with** `@tag`
2. **Each section ends with** `@end`
3. **Freeform narrative is separated** with triple dashes `---`
4. **Tags are case-insensitive**
5. **JSON-style fields are allowed** in structured blocks
6. **No strict quote/brace syntax** unless needed for clarity
7. **Unknown tags are ignored** by fallback parsers
8. **Multiple blocks of same type are allowed** (e.g., multiple `@document` or `@ai`)

---

## 🔹 Design Principles

| Principle              | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| Human-Writable         | Can be typed like email or markdown                                         |
| AI-Parseable           | Structured blocks convert cleanly into dictionaries or JSON                 |
| Fault-Tolerant         | Misquotes or missing commas don’t break the whole thing                     |
| Anchored Instructions  | `@ai` sections live near the narrative they apply to                        |
| Flexible Versioning    | Use `@ftai v2.0` at top; older versions can co-exist in same system          |

---

## 🔹 AI Usage

Parsers use:
- `@ftai` block to determine format version
- `@document`, `@task`, `@ai` for structured memory ingestion
- Narrative sections for RAG embeddings
- Inline tags (`[tone: urgent]`) for emotion tracking

---

## 🔹 Export / Interop

### JSON Export Example
```json
{
  "ftai": "folktech-memory",
  "version": "2.0",
  "document": {
    "title": "History of FolkTech",
    "author": "Mike Folk",
    "schema": "founder_note"
  },
  "content": "This is freeform narrative...",
  "ai": {
    "mode": "core_memory",
    "encoding": "sentimental_logical"
  }
}



⸻

🔹 Roadmap
	•	✅ Python + Swift parser support
	•	✅ Linter and syntax highlighter
	•	🔜 JSON ⇄ FTAI converter
	•	🔜 Visual editor / VS Code plugin
	•	🔜 Model training examples with .ftai input

⸻

🔹 Contributions

This format is open to developers, researchers, and AI trainers. Pull requests welcome.

Standard maintained by FolkTech AI.

---
