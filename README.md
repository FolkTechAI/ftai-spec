# 📜 FTAI — Foundational Traceable AI Interface (pronounced “fuh-tie”)


FTAI (pronounced “fuh-tie”, like “samurai”) is a minimal, structured format for human ↔ AI collaboration.
It bridges the readability of Markdown with the structure of JSON — but tuned for AI reasoning, memory, and agentic workflows.
	•	🔹 Readable by humans
	•	🔹 Composable by AI systems
	•	🔹 Traceable, auditable, future-proof

Built by FolkTech AI to power next-generation AI tools like ScrollBot, SerenaNet, and future autonomous agents.
⸻

📦 Install

pip install ftai-py



⸻

⚡ Quick Start

# Lint a .ftai file
ftai lint path/to/file.ftai

# Format a .ftai file
ftai fmt path/to/file.ftai

# Convert JSON to FTAI
ftai convert myfile.json > myfile.ftai



⸻

🔍 What’s Inside

Each part of FTAI is structured for clarity and machine-verification:
	•	🧠 Goal-oriented sections
	•	📑 Minimal punctuation noise
	•	🔒 Schema & traceability baked in
	•	🛠 Supports memory graphs, agent instructions, and structured results

⸻

🏛 Spec Files

File	Purpose
spec/FTAI_grammar_syntax_v1.6.md	Grammar and rules for .ftai documents
grammar/ftai.ebnf	Formal EBNF grammar definition



⸻

🎯 Why FTAI?
	•	✅ Human-readable even for beginners
	•	✅ Machine-parseable for LLMs, agents, pipelines
	•	✅ Designed for long-term memory, traceable communication, and auditable workflows
	•	✅ Composable into JSON, YAML, or agent memory

⸻

🤝 Contributing

All contributions require a CLA signature via CLA Assistant.

To contribute:

# Clone and install locally
git clone https://github.com/FolkTechAI/ftai-spec.git
cd ftai-spec
pip install -r requirements.txt

Lint Test:

python ftai_linter.py tests/vectors/pass/



⸻

🛡 License & Governance
	•	Licensed under the Apache 2.0 License
	•	Maintained by Michael Folk and the FolkTech AI community

⸻

🌐 Built in the Open

We believe the future of AI interaction should be human-centered, trustable, and openly auditable.
FTAI is developed in public to serve both hardcore engineers and new AI builders alike.

© 2025 FolkTech AI — Format stewarded by Michael Folk & contributors.
