# FTAI Parsers

This folder contains all official `.ftai` format parsers for FolkTech’s FTAI standard.

## 🔍 What’s in Here

Each subfolder includes:
- A parser in a specific language (e.g., Python, Swift)
- An example `.ftai` file to test against
- A `README.md` explaining how to run or use that parser

## ✅ Supported Parsers

| Language | Status  | Folder        | Notes               |
|----------|---------|---------------|---------------------|
| Python   | ✅ Done | `python/`      | CLI + conversion tool |
| Swift    | 🟡 WIP  | `swift/`       | Parser class in progress |

## 🚀 Running a Parser (Python)

Navigate into the `python` folder and run:

```bash
python ftai_parser.py path/to/example.ftai
