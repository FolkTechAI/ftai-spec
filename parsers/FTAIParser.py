import re
from collections import defaultdict

# Terminal color codes
RED = "\033[91m"
YELLOW = "\033[93m"
GREEN = "\033[92m"
RESET = "\033[0m"

# Core .ftai v2.0 tags
CORE_TAGS = {
    "@ftai", "@document", "@schema", "@ai", "@ai_note", "@memory",
    "@task", "@config", "@agent", "@end"
}

BLOCK_TAGS = {"@ai", "@task", "@agent", "@memory", "@config"}

def parse_ftai_with_lines(filepath):
    with open(filepath, 'r') as file:
        lines = file.readlines()

    tag_data = []
    buffer = []
    current_tag = None
    line_number = 0

    for i, raw_line in enumerate(lines):
        line = raw_line.strip()
        line_number = i + 1

        if line.startswith("@"):
            if current_tag:
                tag_data.append((current_tag, buffer, tag_start))
                buffer = []
            tag_start = line_number
            current_tag = line
        elif line == "---":
            continue
        else:
            buffer.append((line_number, line))

    if current_tag:
        tag_data.append((current_tag, buffer, tag_start))

    return tag_data

def validate_ftai(tag_data):
    errors = []
    warnings = []
    seen_tags = set()
    quoted_tag_count = 0
    has_ftai = False
    has_document = False

    for tag, body, line_num in tag_data:
        tag_clean = tag.split()[0]

        if tag_clean.startswith('@"'):
            quoted_tag_count += 1
        elif tag_clean not in CORE_TAGS:
            errors.append((line_num, f"Unknown tag used: {tag_clean}"))
        else:
            seen_tags.add(tag_clean)

        if tag_clean == "@ftai":
            if line_num != 1:
                warnings.append((line_num, "`@ftai` should be the first tag in the file."))
            has_ftai = True
        if tag_clean == "@document":
            has_document = True
        if tag_clean in BLOCK_TAGS:
            if not any(subtag[1].strip() == "@end" for subtag in body):
                errors.append((line_num, f"Missing `@end` block terminator for {tag_clean}."))

    if not has_ftai:
        errors.append((0, "Missing required `@ftai` declaration."))
    if not has_document:
        errors.append((0, "Missing required `@document` block."))

    if quoted_tag_count > 10:
        warnings.append((0, "Excessive use of quoted tags (@\"...\"). Consider defining a schema."))

    return errors, warnings

def print_report(errors, warnings):
    if errors:
        print(f"{RED}❌ FATAL ERRORS:{RESET}")
        for line, msg in errors:
            print(f"{RED}[Line {line}] {msg}{RESET}")
    if warnings:
        print(f"{YELLOW}⚠️  WARNINGS:{RESET}")
        for line, msg in warnings:
            print(f"{YELLOW}[Line {line}] {msg}{RESET}")
    if not errors:
        print(f"{GREEN}✅ PASS: .ftai document is valid.{RESET}")

# Example usage
if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        print("Usage: python3 ftai_linter.py <file.ftai>")
    else:
        file_path = sys.argv[1]
        parsed_data = parse_ftai_with_lines(file_path)
        errs, warns = validate_ftai(parsed_data)
        print_report(errs, warns)

