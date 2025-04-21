Got it, Mike. Here’s your fully rewritten, clean, no-fluff version of the README.md for the parsers/ folder — direct copy-paste into GitHub:

⸻



# 🧠 FTAI Parsers

This folder contains all official `.ftai` format parsers for FolkTech’s FTAI standard.  
Each parser is designed to validate `.ftai` files against the v2.0 spec using **strict mode**, schema enforcement, and tag rules.

---

## 📦 What’s Inside

Each language subfolder includes:
- A working `.ftai` parser
- Sample `.ftai` files for testing
- A README or inline usage guide

---

## ✅ Supported Parsers

| Language | Status  | Folder   | Notes                           |
|----------|---------|----------|---------------------------------|
| Python   | ✅ Done | `python/` | CLI-based linter + schema aware |
| Swift    | 🟡 WIP  | `swift/`  | Parser complete, validator next |

---

## 🚀 Python CLI Usage

To run the Python validator:

```bash
cd python
python3 ftai_linter.py sample_valid.ftai

It will print a full diagnostic report with:
	•	✅ Pass/fail status
	•	🔍 Line-by-line fatal errors and warnings
	•	🔐 Schema tag enforcement

⸻

🍎 Swift Integration (Early)

The Swift parser is now live (FTAIParser.swift) and returns FTAIBlock arrays for validation.
Used in apps like Pocket Medic or Serena to load .ftai instructions, protocol sets, or AI memory files.

Validator (FTAIValidator.swift) coming next.

⸻

For issues or suggestions, submit a PR or open an issue at:
👉 github.com/mfolk77/ftai-spec


