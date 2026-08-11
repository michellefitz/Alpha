#!/usr/bin/env bash
# Copy desk: link check.
#
# Runs after an edition is written. Checks every link in it and reports the dead
# ones back into the session so they get fixed before the edition is published.
#
# This is a hook, not an agent, because "does this URL resolve" has a correct
# answer that needs no judgement — and because a hook runs every time, rather
# than whenever the model remembers to.

set -uo pipefail

MAX_LINKS=30      # Cap so a long edition can't stall the session.
CONCURRENCY=6
TIMEOUT=8

payload=$(cat)
file=$(printf '%s' "$payload" \
  | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' \
  | head -1 \
  | sed 's/.*"file_path"[[:space:]]*:[[:space:]]*"//; s/"$//')

# Only interested in editions.
case "$file" in
  */archive/*.md) ;;
  *) exit 0 ;;
esac
[ -f "$file" ] || exit 0
case "$(basename "$file")" in index.md) exit 0 ;; esac

urls=$(grep -oE 'https?://[^)"'"'"'[:space:]]+' "$file" | sed 's/[).,;:]*$//' | sort -u | head -"$MAX_LINKS")
[ -z "$urls" ] && exit 0

work=$(mktemp -d) || exit 0
trap 'rm -rf "$work"' EXIT

n=0
while IFS= read -r url; do
  [ -z "$url" ] && continue
  n=$((n + 1))

  (
    code=$(curl -s -o /dev/null -w '%{http_code}' -L \
      --max-time "$TIMEOUT" -A 'newsdesk-linkcheck' "$url" 2>/dev/null)
    case "$code" in
      2*|3*)   ;;                                                     # fine
      401|403) ;;                                                     # paywall or bot block, not a dead link
      000)     printf '  unreachable (timeout or DNS): %s\n' "$url" > "$work/$n" ;;
      429)     printf '  rate-limited, could not check: %s\n' "$url" > "$work/$n" ;;
      *)       printf '  HTTP %s: %s\n' "$code" "$url" > "$work/$n" ;;
    esac
  ) &

  # Keep a lid on parallel curls.
  while [ "$(jobs -rp | wc -l)" -ge "$CONCURRENCY" ]; do wait -n 2>/dev/null || break; done
done <<< "$urls"
wait

dead=$(cat "$work"/* 2>/dev/null)

if [ -n "$dead" ]; then
  {
    echo "Link check failed on $(basename "$file"):"
    echo ""
    printf '%s\n' "$dead"
    echo ""
    echo "Fix or remove these before the edition is published. A claim whose link"
    echo "does not resolve is a claim with no source."
  } >&2
  exit 2   # Non-zero with stderr: the session sees this and acts on it.
fi

echo "Link check passed: ${n} links in $(basename "$file")."
exit 0
