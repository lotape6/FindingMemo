#!/usr/bin/env bash
set -euo pipefail

# Finding Memo - Build Script
# Builds the presentation in all formats

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
cd "$PROJECT_DIR"

mkdir -p output

echo "=== Finding Memo: Build ==="

# Check marp-cli
if ! command -v marp &>/dev/null && ! npx marp --version &>/dev/null; then
    echo "Installing marp-cli..."
    npm install
fi

MARP="npx marp"
THEME="--theme-set assets/themes/finding-memo.css"
INPUT="slides/deck.md"

echo "[1/3] Building HTML..."
$MARP $INPUT $THEME -o output/finding-memo.html --html true

echo "[2/3] Building PDF..."
$MARP $INPUT $THEME --pdf -o output/finding-memo.pdf --html true || echo "PDF build requires Chrome/Chromium. Skipping."

echo "[3/3] Building PPTX..."
$MARP $INPUT $THEME --pptx -o output/finding-memo.pptx --html true || echo "PPTX build failed. Skipping."

echo ""
echo "=== Build complete ==="
ls -lh output/
