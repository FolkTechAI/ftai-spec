📜 FTAI — FolkTech AI Protocol

FTAI is a next-generation format built for high-context AI ↔ human collaboration.
It replaces JSON, Markdown, YAML, and prompt spaghetti with a single, structured, human-readable system.

Why FTAI?
	•	Human-readable without sacrificing structure
	•	AI-parseable by modern models, small or large
	•	Minimal punctuation noise — no endless brackets, quotes, or commas
	•	Composable — bridges cleanly to JSON, YAML, XML
	•	Optimized for memory, logging, agent reasoning — not just storage

FTAI is designed for builders who want traceability, performance, and clarity — without fighting the format.

⸻

📦 Install

pip install ftai-py



⸻

⚡ Quick Start

# Lint a file
ftai lint path/to/file.ftai

# Format a file
ftai fmt path/to/file.ftai

# Convert JSON to FTAI
ftai convert myfile.json > myfile.ftai



⸻

🛠️ Spec Files
	•	Grammar: spec/FTAI_grammar_syntax_v1.6.md
	•	Formal Syntax: grammar/ftai.ebnf

⸻

🔥 Why We’re Building FTAI

FTAI isn’t just another file format.

It’s a response to the overcomplication of modern data interchange — and the loss of human readability in favor of machine optimization.

We believe you shouldn’t have to choose between:
	•	Writing for machines
	•	Writing for humans
	•	Writing for agents

FTAI unifies all three.

It’s lightweight enough for embedded systems.
It’s rich enough for AI agents and autonomous pipelines.
It’s clear enough for real-world teams.

⸻

🤝 Contributing

We welcome serious contributors.
All PRs require a signed Contributor License Agreement (CLA) — managed through CLA Assistant.

Before contributing:

# Clone and set up locally
git clone https://github.com/FolkTechAI/ftai-spec.git
cd ftai-spec
pip install -r requirements.txt

Run the linter tests:

python ftai_linter.py tests/vectors/pass/

If you add new features, make sure you update test vectors and docs.

⸻

📜 License

Licensed under the Apache 2.0 License.
You are free to use, modify, and redistribute — provided you follow the license terms.

⸻

🛡️ Governance

FTAI is maintained under the FolkTech AI stewardship model:
	•	Transparent release cycles
	•	Open discussion on improvements
	•	CLA signatures required for major changes
	•	Formal governance document here

⸻

🚀 About FolkTech AI

FolkTech AI builds tools, formats, and systems for the future of human-AI collaboration — focused on ethics, performance, and clarity.

FTAI is our first major public standard.
More tools, educational resources, and frameworks will follow.

⸻

🎵 Built in the Open

We believe in simple formats that outlive hype cycles.
FTAI was built with care, in the open, and for the builders.

© 2025 FolkTech AI
Format maintained by Mike Folk and contributors. 🌱

⸻

© 2025 FolkTech AI • Format maintained by Mike Folk and contributors
