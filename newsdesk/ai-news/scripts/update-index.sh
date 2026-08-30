#!/usr/bin/env bash
# Copy desk: index update.
#
# Runs after an edition is written. Rebuilds archive/index.md from whatever is
# actually in archive/, newest first.
#
# Rebuilt, not appended to. An append can be forgotten, run twice, or written
# from a stale idea of what the archive holds; a rebuild reads the directory and
# is correct regardless of what happened before it. This is bookkeeping with a
# right answer, so no agent should be spending judgement on it.

set -uo pipefail

payload=$(cat)
file=$(printf '%s' "$payload" \
  | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' \
  | head -1 \
  | sed 's/.*"file_path"[[:space:]]*:[[:space:]]*"//; s/"$//')

case "$file" in
  */archive/*.md) ;;
  *) exit 0 ;;
esac
case "$(basename "$file")" in index.md) exit 0 ;; esac   # Never recurse on our own output.
[ -f "$file" ] || exit 0

archive_dir=$(dirname "$file")
index="$archive_dir/index.md"

tmp=$(mktemp) || exit 0
trap 'rm -f "$tmp"' EXIT

{
  echo "# Archive"
  echo ""
  echo "Every edition, newest first. Rebuilt automatically after each run."
  echo ""
} > "$tmp"

count=0
while IFS= read -r edition; do
  name=$(basename "$edition")
  slug="${name%.md}"

  # The first heading is the edition's title; fall back to the filename.
  title=$(grep -m1 '^#[[:space:]]' "$edition" 2>/dev/null | sed 's/^#[[:space:]]*//; s/[[:space:]]*$//')
  [ -z "$title" ] && title="$slug"

  # First paragraph of prose, as a one-line description. Editions hard-wrap, so
  # this joins the wrapped lines and then cuts at the first sentence end —
  # taking a single line would clip mid-sentence.
  blurb=$(awk '
      /^[[:space:]]*$/ { if (found) exit; next }
      /^#|^[-*>|]|^!\[|^```/ { if (found) exit; next }
      { found = 1; printf "%s ", $0 }
    ' "$edition" 2>/dev/null \
    | sed 's/\[\([^]]*\)\]([^)]*)/\1/g; s/[*_`]//g; s/[[:space:]]\+/ /g; s/^ //; s/ $//')

  # Prefer a whole sentence; otherwise fall back to a clean word boundary.
  if printf '%s' "$blurb" | grep -qE '[.!?] '; then
    blurb=$(printf '%s' "$blurb" | sed 's/\([.!?]\) .*/\1/')
  fi
  if [ "${#blurb}" -gt 120 ]; then
    blurb="$(printf '%s' "${blurb:0:120}" | sed 's/ [^ ]*$//')…"
  fi

  if [ -n "$blurb" ] && [ "$blurb" != "$title" ]; then
    printf -- '- **[%s](%s)** — %s\n' "$title" "$name" "$blurb" >> "$tmp"
  else
    printf -- '- **[%s](%s)**\n' "$title" "$name" >> "$tmp"
  fi
  count=$((count + 1))
done < <(find "$archive_dir" -maxdepth 1 -type f -name '*.md' ! -name 'index.md' 2>/dev/null | sort -r)

if [ "$count" -eq 0 ]; then
  exit 0
fi

# Only rewrite when something actually changed, so the file's mtime stays honest.
if [ -f "$index" ] && cmp -s "$tmp" "$index"; then
  exit 0
fi

mv "$tmp" "$index"
echo "Index rebuilt: ${count} editions."
exit 0
