# 📜 FTAI — Foundational Traceable AI Interface

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

---

FTAI is a hybrid format for human–AI collaboration, designed to improve on JSON, Markdown, and YAML for AI-native workflows with a structured, minimal, human-readable protocol.

Built for serious AI developers, researchers, and agent architects — but accessible enough for new builders learning to speak to machines.

---

## 🚀 Why FTAI?

- **Readable by humans. Parseable by models.**
- **Deterministic:** Always yields the same structure across systems.
- **Traceable:** Embeds rationale, constraints, and memory scopes directly.
- **Composable:** Bridges cleanly into JSON, YAML, text embeddings, or pipelines.
- **Minimal:** No noisy punctuation, no nested spaghetti.
- **Multimodal:** Native support for image references and vision-capable models.

FTAI is Markdown for agents. JSON for intelligence. YAML for reasoning.

---

## 🖼️ Multimodal Support

FTAI natively handles image references for vision-capable AI models:

```ftai
@image
  src: ./screenshot.png
  alt: Application dashboard
  context: User is asking about the error shown in the top-right

@task
  analyze the image and identify the error message
```

Images can be:
- Local file paths
- Base64 encoded inline
- URLs (when online processing is available)

This makes FTAI ideal for workflows involving screenshots, documents, diagrams, and visual context.

---

## 📦 Install

```bash
pip install ftai-py
```

> Note: PyPI package coming soon. For now, clone the repo and install locally.

---

## ⚡ Quick Start

```bash
# Lint an FTAI file
ftai lint tests/vectors/pass/example.ftai

# Format a file
ftai fmt your_file.ftai

# Convert JSON to FTAI (stub)
ftai convert your_file.json > your_file.ftai
```

---

## 🛠 What's Inside

| File/Directory | Purpose |
|----------------|---------|
| `spec/FTAI_grammar_syntax_v1.6.md` | Grammar and ruleset |
| `grammar/ftai.ebnf` | Formal syntax definition (EBNF) |
| `tests/vectors/pass/` | Validating good examples |
| `tests/vectors/fail/` | Testing parsing failures |
| `parsers/python/` | Python linter and CLI tool |
| `tools/json_to_ftai.py` | JSON → FTAI converter script |

---

## 🤝 Contributing

We welcome thoughtful contributors! All Pull Requests require signing our Contributor License Agreement (CLA) first.

### Local Development Setup

```bash
git clone https://github.com/FolkTechAI/ftai-spec.git
cd ftai-spec
pip install -r requirements.txt
```

### Run Tests Locally

```bash
python parsers/python/ftai_linter.py tests/vectors/pass/
```

---

## 🛡 License & Governance

- **License:** [Apache 2.0](LICENSE)
- **Governance:** [GOVERNANCE.md](GOVERNANCE.md)
- **Security Disclosure:** [SECURITY.md](SECURITY.md)

FTAI is stewarded with transparent, reviewable releases — designed for long-term stability, not churn.

---

## 🌱 Built in the Open

FTAI is designed for the future of machine interaction: clear enough for a person, structured enough for a model, powerful enough for autonomous systems.

Built openly by [FolkTech AI](https://folktechai.com) with contributions from the community.

---

© 2025-2026 FolkTech AI — Format maintained by Michael Folk and contributors.
