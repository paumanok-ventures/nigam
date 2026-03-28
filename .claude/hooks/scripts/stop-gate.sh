#!/usr/bin/env bash
# Nigam Stop Hook — blocks exit during active loop until COMPLETE
set -euo pipefail
JOURNAL=".nigam/journal.md"
[[ ! -f "$JOURNAL" ]] && exit 0
grep -q "^## COMPLETE" "$JOURNAL" 2>/dev/null && exit 0
grep -q "### \[.*\] ABORT" "$JOURNAL" 2>/dev/null && exit 0
echo "🎤 Nigam loop active. Task not complete. Continuing..."
exit 1
