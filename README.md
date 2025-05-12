# 📜 FTAI — Foundational Traceable AI Interface

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)](https://github.com/FolkTechAI/ftai-spec/actions)
[![PyPI](https://img.shields.io/badge/PyPI-v0.1.0-blue.svg)](https://pypi.org/project/ftai-py/)

---

FTAI is a hybrid format for human–AI collaboration, designed to replace JSON, Markdown, YAML, and ad-hoc prompt sprawl with a structured, minimal, human-readable protocol. Built for serious AI developers, researchers, and agent architects — but accessible enough for new builders learning to speak to machines.

---

## Table of Contents

- [Why FTAI?](#why-ftai)
- [Getting Started](#getting-started)
- [Quick Start](#quick-start)
- [What’s Inside](#whats-inside)
- [Contributing](#contributing)
- [License & Governance](#license--governance)
- [Built in the Open](#built-in-the-open)

---

## 🚀 Why FTAI?

- **Readable by humans. Parseable by models.**
- **Deterministic**: always yields the same structure across systems.
- **Traceable**: embeds rationale, constraints, and memory scopes directly.
- **Composable**: bridges cleanly into JSON, YAML, text embeddings, or pipelines.
- **Minimal**: No noisy punctuation, no nested spaghetti.

FTAI is Markdown for agents. JSON for intelligence. YAML for reasoning.

---

## 📦 Getting Started

1. **Install the package:**

   ```bash
   pip install .
   ```

2. **Lint a sample FTAI file:**

   ```bash
   ftai lint tests/vectors/pass/pass_minimal.ftai --color
   ```

3. **Understand CLI behavior:**

   - **Strict Mode**: Default, errors on unknown tags.
   - **Lenient Mode**: Use `--lenient` to downgrade unknown tags to warnings.
   - **Color Output**: Default, use `--no-color` to disable ANSI colors.

---

## ⚡ Quick Start

### Lint an FTAI file

```bash
ftai lint tests/vectors/pass/pass_minimal.ftai --color
```

### Format a file (stub)

```bash
ftai fmt your_file.ftai
```

### Convert JSON to FTAI (stub)

```bash
ftai convert your_file.json > your_file.ftai
```

---

## 🛠 What’s Inside

| File/Directory                | Purpose                                      |
|-------------------------------|----------------------------------------------|
| `spec/`                       | Specification documents and examples         |
| `parsers/`                    | Python and Swift parsers                     |
| `tests/`                      | Test vectors for pass/fail scenarios         |
| `src/`                        | Source code for the FTAI CLI tool            |

---

## 🤝 Contributing

We welcome thoughtful contributors! All Pull Requests require signing our Contributor License Agreement (CLA) first.

**Local Development Setup**

```bash
git clone https://github.com/FolkTechAI/ftai-spec.git
cd ftai-spec
pip install -r requirements.txt
```

**Run Tests Locally**

```bash
python parsers/python/parseftai_linter.py tests/vectors/pass/
```

---

## 🛡 License & Governance

- **License**: Apache 2.0
- **Governance**: [GOVERNANCE.md](GOVERNANCE.md)
- **Security Disclosure**: [SECURITY.md](SECURITY.md)

FTAI is stewarded with transparent, reviewable releases — designed for long-term stability, not churn.

---

## 🌱 Built in the Open

FTAI is designed for the future of machine interaction: clear enough for a person, structured enough for a model, powerful enough for autonomous systems.

Built openly by FolkTech AI and Michael Folk with contributions from the community.

---

© 2025 FolkTech AI — Format maintained by Mike Folk and contributors.

---