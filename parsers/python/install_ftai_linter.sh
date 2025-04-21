#!/bin/bash

echo "🔧 Installing FTAI Linter..."

if [ ! -f ftai_linter.py ]; then
  echo "❌ Error: ftai_linter.py not found in current directory."
  echo "Please run this script from the folder where ftai_linter.py exists."
  exit 1
fi

cp ftai_linter.py /usr/local/bin/ftai_linter
chmod +x /usr/local/bin/ftai_linter

echo "✅ Done. You can now use the FTAI linter anywhere with:"
echo "   ftai_linter yourfile.ftai"
