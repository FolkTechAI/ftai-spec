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
