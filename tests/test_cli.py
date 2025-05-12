import subprocess
import sys
import os

PASS_FILE = "tests/vectors/pass/pass_minimal.ftai"
FAIL_FILE = "tests/vectors/fail/fail_quoted_tag_overflow.ftai"


def test_lint_pass_file():
    result = subprocess.run([sys.executable, "-m", "src.ftai_linter.cli", "lint", PASS_FILE], capture_output=True)
    print(result.stdout.decode(), result.stderr.decode())
    assert result.returncode == 0


def test_lint_fail_file():
    result = subprocess.run([sys.executable, "-m", "src.ftai_linter.cli", "lint", FAIL_FILE], capture_output=True)
    print(result.stdout.decode(), result.stderr.decode())
    assert result.returncode != 0 