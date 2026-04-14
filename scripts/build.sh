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
  lesson_name=$(basename "$lesson_dir")
  out_dir="$DIST/lessons/$lesson_name"
  mkdir -p "$out_dir"

  if [ -f "$lesson_dir/deck.md" ]; then
    # MARP lesson
    echo "[*] Building $lesson_name (MARP)..."
    $MARP "$lesson_dir/deck.md" $THEME $FLAGS -o "$out_dir/index.html"
    bash scripts/inline-images.sh "$out_dir/index.html"
  elif [ -f "$lesson_dir/index.html" ]; then
    # Static HTML lesson (e.g., session visualizer)
    echo "[*] Copying $lesson_name (HTML)..."
    cp "$lesson_dir/index.html" "$out_dir/index.html"
  fi
done

# Build company edition for each lesson (if deck-company.md exists)
for lesson_dir in lessons/*/; do
  lesson_name=$(basename "$lesson_dir")
  out_dir="$DIST/lessons/$lesson_name"

  if [ -f "$lesson_dir/deck-company.md" ]; then
    echo "[*] Building $lesson_name company edition (MARP)..."
    $MARP "$lesson_dir/deck-company.md" $THEME $FLAGS -o "$out_dir/company.html"
    bash scripts/inline-images.sh "$out_dir/company.html"
  fi
done

# Copy shared assets for lessons that reference them
cp -r assets "$DIST/assets" 2>/dev/null || true

echo ""
echo "=== Build complete ==="
find "$DIST" -name "*.html" -exec du -h {} \;
