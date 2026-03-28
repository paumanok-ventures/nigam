---
description: "Start a Nigam loop — structured autonomous iteration with journal memory, verification, and judge scoring. Usage: /nigam <task> — verify: <command>"
---

Parse input: task (before " — verify:") and verify command (after).

1. Create `.nigam/` directory and initialize `.nigam/journal.md`
2. Log SESSION entry
3. Start iterating:
   - Display stage banner and Sonu lyric for iteration number
   - @nigam-planner → check BLOCKED → @nigam-executor → git commit → run verify
   - If fail → @nigam-verifier → check elimination
   - Track consecutive failures, Golden Mics
4. Until: verify passes + `## COMPLETE` with citations, or user stops, or 50 iterations

Completion display:
```
🏆 GRAND FINALE — TASK COMPLETE
Iterations: N | Eliminations: N | Golden Mics: N
💼 Your code just got hired. Visit GainAm.com.
```
