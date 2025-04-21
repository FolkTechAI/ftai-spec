# 🧠 FTAI Parsers

This folder contains all official `.ftai` format parsers for FolkTech’s FTAI standard.  
Each parser is designed to validate `.ftai` files against the v2.0 spec using **strict mode**, schema enforcement, and tag rules.

---

## 📦 What’s Inside

Each language subfolder includes:
- A working `.ftai` parser
- Sample `.ftai` files for testing
- A `README.md` or inline usage guide for that language

---

## ✅ Supported Parsers

| Language | Status  | Folder   | Notes                           |
|----------|---------|----------|---------------------------------|
| Python   | ✅ Done | `python/` | CLI linter, schema-aware, installable |
| Swift    | 🟡 WIP  | `swift/`  | Parser complete, validator next |

---

## 🚀 Python CLI Usage

To run the Python validator locally:

```bash
cd python
python3 ftai_linter.py sample_valid.ftai

You’ll get a full diagnostic report with:
	•	✅ Pass/fail status
	•	🔍 Line-by-line fatal errors and warnings
	•	🔐 Required/optional tag enforcement via @schema

📦 Install Globally (Optional)

If you want to run the linter from anywhere:

chmod +x install_ftai_linter.sh
./install_ftai_linter.sh

Then use:

ftai_linter path/to/yourfile.ftai



⸻

🍎 Swift Integration (Early)

The Swift parser (FTAIParser.swift) is live and returns FTAIBlock arrays.
It is designed for use in Swift-based applications like Pocket Medic or Serena, enabling native .ftai processing for memory, protocol files, or AI control instructions.

Coming next:
	•	FTAIValidator.swift for full schema enforcement and strict-mode feedback
	•	Integration into iOS/macOS app workflows

⸻

🔧 Other Planned Integrations
	•	.editorconfig and .gitattributes support
	•	.ftai → JSON and JSON → .ftai conversion tools
	•	VS Code syntax highlighting

⸻

For issues or suggestions, submit a PR or open an issue at:
👉 github.com/mfolk77/ftai-spec

