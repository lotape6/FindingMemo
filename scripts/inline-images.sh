#!/usr/bin/env bash
set -euo pipefail

# Inline all local image references as base64 data URIs in the HTML file.
# Makes the presentation fully self-contained (offline, PPTX, GitHub Pages).

HTML_FILE="${1:?Usage: inline-images.sh <html-file>}"
PROJECT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

if [ ! -f "$HTML_FILE" ]; then
  echo "Error: $HTML_FILE not found"
  exit 1
fi

python3 -c "
import re, base64, os, sys

html_file = sys.argv[1]
project_dir = sys.argv[2]

with open(html_file, 'r') as f:
    content = f.read()

def resolve(path):
    if path.startswith('../'):
        return os.path.join(project_dir, path[3:])
    elif path.startswith('./'):
        return os.path.join(project_dir, path[2:])
    return os.path.join(project_dir, path)

def get_mime(path):
    ext = path.rsplit('.', 1)[-1].lower()
    return {'jpg': 'image/jpeg', 'jpeg': 'image/jpeg', 'png': 'image/png',
            'gif': 'image/gif', 'webp': 'image/webp', 'svg': 'image/svg+xml'}.get(ext, 'image/jpeg')

pattern = re.compile(r'url\(&quot;([^&]+\.(?:jpg|jpeg|png|gif|webp|svg))&quot;\)')
matches = set(pattern.findall(content))

for img_path in sorted(matches):
    resolved = resolve(img_path)
    if os.path.isfile(resolved):
        with open(resolved, 'rb') as f:
            b64 = base64.b64encode(f.read()).decode()
        data_uri = f'data:{get_mime(img_path)};base64,{b64}'
        content = content.replace(img_path, data_uri)
        size = os.path.getsize(resolved)
        print(f'  Inlined: {img_path} ({size // 1024}K)')
    else:
        print(f'  Warning: {resolved} not found, skipping')

with open(html_file, 'w') as f:
    f.write(content)

print(f'Done. {len(content) // 1024}K total.')
" "$HTML_FILE" "$PROJECT_DIR"
