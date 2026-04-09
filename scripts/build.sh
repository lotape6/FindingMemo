#!/usr/bin/env bash
set -euo pipefail

# Finding Memo — Build all lessons and landing page

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
cd "$PROJECT_DIR"

MARP="npx marp"
THEME="--theme-set assets/themes/finding-memo.css"
FLAGS="--html true --allow-local-files"
DIST="dist"

echo "=== Finding Memo: Build ==="

mkdir -p "$DIST"

# Build landing page
echo "[1] Copying landing page..."
cp index.html "$DIST/index.html"

# Build each lesson
for lesson_dir in lessons/*/; do
  if [ -f "$lesson_dir/deck.md" ]; then
    lesson_name=$(basename "$lesson_dir")
    out_dir="$DIST/lessons/$lesson_name"
    mkdir -p "$out_dir"

    echo "[*] Building $lesson_name..."
    $MARP "$lesson_dir/deck.md" $THEME $FLAGS -o "$out_dir/index.html"
    bash scripts/inline-images.sh "$out_dir/index.html"
  fi
done

echo ""
echo "=== Build complete ==="
find "$DIST" -name "*.html" -exec du -h {} \;
