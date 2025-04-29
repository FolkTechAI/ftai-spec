# 📜 FTAI — Foundational Traceable AI Interface (pronounced “fuh-tie”)


⸻

FTAI is a hybrid format for human–AI collaboration,
designed to replace JSON, Markdown, YAML, and ad-hoc prompt sprawl
with a structured, minimal, human-readable protocol.

Built for serious AI developers, researchers, and agent architects —
but accessible enough for new builders learning to speak to machines.

⸻

🚀 Why FTAI?
	•	Readable by humans. Parseable by models.
	•	Deterministic: always yields the same structure across systems.
	•	Traceable: embeds rationale, constraints, and memory scopes directly.
	•	Composable: bridges cleanly into JSON, YAML, text embeddings, or pipelines.
	•	Minimal: No noisy punctuation, no nested spaghetti.

FTAI is Markdown for agents.
JSON for intelligence.
YAML for reasoning.

⸻

# 📦 Install

pip install ftai-py



⸻

# ⚡ Quick Start

# Lint an FTAI file
ftai lint tests/vectors/pass/example.ftai

# Format a file
ftai fmt your_file.ftai

# Convert JSON to FTAI
ftai convert your_file.json > your_file.ftai



⸻

# 🛠 What’s Inside

File/Directory	Purpose
spec/FTAI_grammar_syntax_v1.6.md	Grammar and ruleset
grammar/ftai.ebnf	Formal syntax definition (EBNF)
tests/vectors/pass/	Validating good examples
tests/vectors/fail/	Testing parsing failures
parsers/python/	Python linter and CLI tool
tools/json_to_ftai.py	JSON ➔ FTAI converter script



⸻

# 🤝 Contributing

We welcome thoughtful contributors!
All Pull Requests require signing our Contributor License Agreement (CLA) first.

Local Development Setup

git clone https://github.com/FolkTechAI/ftai-spec.git
cd ftai-spec
pip install -r requirements.txt

Run Tests Locally

python parsers/python/ftai_linter.py tests/vectors/pass/



⸻

# 🛡 License & Governance
	•	License: Apache 2.0
	•	Governance: GOVERNANCE.md
	•	Security Disclosure: SECURITY.md

FTAI is stewarded with transparent, reviewable releases —
designed for long-term stability, not churn.

⸻

# 🌱 Built in the Open

FTAI is designed for the future of machine interaction:
clear enough for a person, structured enough for a model,
powerful enough for autonomous systems.

Built openly by FolkTech AI and Michael Folk with contributions from the community.

⸻

© 2025 FolkTech AI — Format maintained by Mike Folk and contributors.

⸻
