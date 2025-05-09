# 📜 FTAI — Foundational Traceable AI Interface (pronounced “fuh-tie”)

FTAI is a hybrid format for human–AI collaboration, designed to replace JSON, Markdown, YAML, and ad-hoc prompt sprawl with a structured, minimal, human-readable protocol.

Built for serious AI developers, researchers, and agent architects — but accessible enough for new builders learning to speak to machines.

FTAI is Markdown for agents. JSON for intelligence. YAML for reasoning.

---

## 🚀 Why FTAI?

- 🧠 **Readable by humans. Parseable by models.**
- 🧩 **Deterministic:** Always yields the same structure across systems.
- 🔍 **Traceable:** Embeds rationale, constraints, and memory scopes directly.
- 🔧 **Composable:** Bridges into JSON, YAML, text embeddings, or pipelines.
- 🧼 **Minimal:** No noisy punctuation, no nested spaghetti.

FTAI is designed for the future of machine interaction: clear enough for a person, structured enough for a model, powerful enough for autonomous systems.

---

## 📦 Install

```bash
pip install ftai-py


⸻

#⚡ Quick Start

# Lint an FTAI file
ftai lint tests/vectors/pass/example.ftai

# Format a file
ftai fmt your_file.ftai

# Convert JSON to FTAI
ftai convert your_file.json > your_file.ftai


⸻

#🧠 What Is .ftai?

FTAI is a plaintext format using @tags for structure and clarity.

@schema
required_tags: @title, @description, @end
optional_tags: @source, @notes
@end

@title
CPR Protocol

@description
Step-by-step adult CPR procedure.

@source
AHA 2020 Guidelines

@end


⸻

#🧪 Validator Tools
	•	parsers/ftai_linter.py: Python validator with strict/loose modes
	•	parsers/FTAIValidator.swift: iOS-compatible Swift parser
	•	tools/json_to_ftai.py: (coming soon) JSON ➔ FTAI converter

⸻

#🗂 What’s Inside

Path	Purpose
spec/FTAI_grammar_syntax_v1.6.md	Grammar and format rules
grammar/ftai.ebnf	Formal EBNF syntax definition
tests/vectors/pass/	Valid test cases
tests/vectors/fail/	Rejected edge cases
parsers/python/	Python linter and CLI
tools/json_to_ftai.py	JSON ➔ FTAI converter script


⸻

#🤝 Contributing

We welcome thoughtful contributors!

# Local Dev Setup
git clone https://github.com/FolkTechAI/ftai-spec.git
cd ftai-spec
pip install -e '.[dev]'

# Run tests
python parsers/python/ftai_linter.py tests/vectors/pass/

All PRs require signing the Contributor License Agreement (CLA).

⸻

#📌 Use Cases

FTAI is powering:
	•	📱 AI-enhanced medical apps like Pocket Medic
	•	📚 Educational LMS pipelines
	•	🧠 AI memory + local RAG systems
	•	⚙️ Automation scripts, dev agents, and function calling

⸻

#🛡 License & Governance
	•	License: Apache 2.0
	•	Governance: See GOVERNANCE.md
	•	Security Disclosure: See SECURITY.md

FTAI is stewarded with transparent, reviewable releases — designed for long-term stability, not churn.

⸻

#🌱 Built in the Open

FTAI is built openly by FolkTech AI and Michael Folk, with contributions from the community. It exists to make structured, AI-human communication futureproof — with no bloat and maximum clarity.

⸻

© 2025 FolkTech AI — Format maintained by Mike Folk and contributors.

