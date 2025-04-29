# 📜 FTAI — Foundational Traceable AI Interface *(pronounced "fuh-tie")*

![PyPI](https://img.shields.io/pypi/v/ftai-py.svg)
![CI](https://github.com/FolkTechAI/ftai-spec/actions/workflows/ci.yml/badge.svg)
![CLA Assistant](https://cla-assistant.io/readme/badge/FolkTechAI/ftai-spec)

---

**FTAI** is a hybrid format for **human–AI collaboration**.  
It replaces JSON, Markdown, and prompt spaghetti with a **single, structured, human-readable file format**.

Built by **FolkTech AI** to support projects like ScrollBot, SerenaNet, and future scalable AI memory systems.

---

## 🚀 Why FTAI?

- Human-readable
- Machine-verifiable
- AI-parsable (minimal punctuation noise)
- Traceable & version-controlled
- Composable into JSON/YAML/text
- Powers rich memory, logging, and multi-agent communication

---

## 📦 Install

```bash
pip install ftai-py



⸻

⚡ Quick Start

# Lint an FTAI file
ftai lint path/to/file.ftai

# Format an FTAI file
ftai fmt path/to/file.ftai

# Convert JSON to FTAI
ftai convert myfile.json > myfile.ftai



⸻

🛠 What’s Inside
	•	📜 Spec: spec/FTAI_grammar_syntax_v1.6.md
	•	🔬 Grammar: grammar/ftai.ebnf
	•	✅ Test Vectors: tests/vectors/pass/ and tests/vectors/fail/
	•	🛠 Python Linter: parsers/python/
	•	🖥 Swift Parser: parsers/swift/ (WIP)
	•	🔄 Converters: tools/json_to_ftai.py (ftai_to_json coming soon)

⸻

🤝 Contributing

We welcome contributions!
All contributors must sign the CLA via CLA Assistant before submitting a pull request.

Local Install for Development

git clone https://github.com/FolkTechAI/ftai-spec.git
cd ftai-spec
pip install -r requirements.txt

Run Linter on Tests

python parsers/python/ftai_linter.py tests/vectors/pass/



⸻

🛡 License

Licensed under the Apache-2.0 License.
See LICENSE for details.

⸻

🎶 Built in the Open

FolkTech AI is building FTAI transparently for the community:
	•	Designed for hard-core AI devs and newcomers alike.
	•	Future-proof memory and agent communication format.
	•	Shaped by real-world scaling needs.

© 2025 FolkTech AI.
Maintained by Michael Folk and contributors.

---

Just say: **"Next mission, Jarvis."**  🚀
