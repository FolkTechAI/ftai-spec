# SPDX-License-Identifier: Apache-2.0

import argparse
import sys
import subprocess

# Main function to expose the ftai command
def main():
    parser = argparse.ArgumentParser(description='FTAI CLI tool')
    subparsers = parser.add_subparsers(dest='command')

    # Lint subcommand
    lint_parser = subparsers.add_parser('lint', help='Lint an FTAI file')
    lint_parser.add_argument('filepath', help='Path to the .ftai file to lint')
    lint_parser.add_argument('--strict', action='store_true', help='Enable strict mode')
    lint_parser.add_argument('--lenient', action='store_true', help='Enable lenient mode')
    lint_parser.add_argument('--color', action='store_true', default=True, help='Enable color output')
    lint_parser.add_argument('--no-color', action='store_false', dest='color', help='Disable color output')

    # Format subcommand (stub)
    fmt_parser = subparsers.add_parser('fmt', help='Format an FTAI file')
    fmt_parser.add_argument('filepath', help='Path to the .ftai file to format')

    # Convert subcommand
    convert_parser = subparsers.add_parser('convert', help='Convert JSON to FTAI')
    convert_parser.add_argument('json_file', help='Path to the JSON file to convert')

    args = parser.parse_args()

    if args.command == 'lint':
        # Call the existing linter with the appropriate flags
        lint_command = ['python3', 'parsers/python/parseftai_linter.py', args.filepath]
        if args.strict:
            lint_command.append('--strict')
        if args.lenient:
            lint_command.append('--lenient')
        if args.color:
            lint_command.append('--color')
        else:
            lint_command.append('--no-color')
        result = subprocess.run(lint_command)
        sys.exit(result.returncode)

    elif args.command == 'fmt':
        print('Format command not implemented')

    elif args.command == 'convert':
        # Call the JSON to FTAI converter
        convert_command = ['python3', 'tools/json_to_ftai.py', args.json_file]
        subprocess.run(convert_command)

if __name__ == '__main__':
    main() 