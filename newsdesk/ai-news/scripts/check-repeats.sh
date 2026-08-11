#!/usr/bin/env bash
# Copy desk: repeat check.
#
# Runs after an edition is written. Flags links that already appeared in a recent
# edition, so the same story doesn't get reported twice as though it were new.
#
# The classifier already tries to drop repeats. This catches what it missed —
# which is the whole point of putting a deterministic check behind a judgement
# call. The classifier decides; the hook verifies.

set -uo pipefail

LOOKBACK=14   # editions

payload=$(cat)
file=$(printf '%s' "$payload" \
  | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' \
  | head -1 \
  | sed 's/.*"file_path"[[:space:]]*:[[:space:]]*"//; s/"$//')

case "$file" in
  */archive/*.md) ;;
  *) exit 0 ;;
esac
[ -f "$file" ] || exit 0

this_edition=$(basename "$file")
case "$this_edition" in index.md) exit 0 ;; esac
archive_dir=$(dirname "$file")

urls=$(grep -oE 'https?://[^)"'"'"'[:space:]]+' "$file" | sed 's/[).,;:]*$//' | sort -u)
[ -z "$urls" ] && exit 0

# The most recent editions, excluding this one and the index. Filenames are
# dated, so a reverse sort is newest-first.
prev_list=$(mktemp) || exit 0
trap 'rm -f "$prev_list"' EXIT
find "$archive_dir" -maxdepth 1 -type f -name '*.md' \
  ! -name "$this_edition" ! -name 'index.md' 2>/dev/null \
  | sort -r | head -"$LOOKBACK" > "$prev_list"
[ -s "$prev_list" ] || exit 0

repeats=""
while IFS= read -r url; do
  [ -z "$url" ] && continue
  hit=""
  while IFS= read -r prev; do
    if grep -q -F -- "$url" "$prev" 2>/dev/null; then hit="$prev"; break; fi
  done < "$prev_list"
  [ -n "$hit" ] && repeats="${repeats}  ${url}"$'\n'"      already in $(basename "$hit")"$'\n'
done <<< "$urls"

if [ -n "$repeats" ]; then
  {
    echo "Repeat check on ${this_edition}: these links have run before."
    echo ""
    printf '%s\n' "$repeats"
    echo "A repeat is fine only when it is framed as an update — what changed since"
    echo "last time, stated plainly. If nothing changed, drop it."
  } >&2
  exit 2
fi

echo "Repeat check passed: nothing in ${this_edition} has run before."
exit 0
