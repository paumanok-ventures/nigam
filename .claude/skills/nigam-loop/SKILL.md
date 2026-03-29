---
name: nigam-loop
description: "When the user starts a Nigam loop, asks for persistent autonomous iteration, or references the Sonu Nigam Loop — use this skill to orchestrate the PLAN → EXECUTE → VERIFY cycle with journal-based persistent memory."
---

# Nigam Loop Orchestration

Core engine of the Nigam Loop. Three-phase iterations with persistent journal memory.

## Starting a Loop

When the user invokes `/nigam`:
1. Create `.nigam/journal.md` if it doesn't exist
2. Parse task description and verify command
3. Delegate to `@nigam-planner`, `@nigam-executor`, `@nigam-verifier`
4. Track iteration count, failures, and stage in the journal

## Journal Location: `.nigam/journal.md`

Append-only. Structured entries. Read the tail (last 15 entries) at each iteration start.

## Iteration Flow

1. Read journal → determine stage
## Iteration Flow (Full Harness)

```
ITERATION 1 (or post-ELIMINATION):
  0. SESSION CONTRACT — define success criteria, verify command, completion requirements
  1. @nigam-context-scout — scan files, map deps, hunt contradictions
  2. @nigam-planner — generate 3 candidate plans (reads scout brief)
  3. @nigam-plan-challenger — evaluate plans, pick winner
  4. Check for BLOCKED → QACL if needed
  5. Complexity check → if confidence < 6, trigger /decompose
  6. @nigam-executor — implement plan, plan stickiness check, judge scoring
  7. Git commit: `nigam: iter N — [description]`
  8. Run verify command
  9. Pass → advance stage / check completion
  10. Fail → @nigam-verifier (fresh context, anti-laziness, root cause)
  11. 3+ consecutive same-issue → ELIMINATION → go to step 0
  12. Context anxiety detected → HANDOFF → fresh agent continues

ITERATIONS 2+ (within an approach):
  1. Read journal (last 15 entries + any HANDOFF brief)
  2. @nigam-planner — single plan (reads prior entries)
  3. @nigam-executor — implement, stickiness check, judge scoring
  4. Git commit
  5. Run verify
  6. Pass/fail → same as above

EVERY 5 ITERATIONS (or on COMPLETE):
  7. @nigam-entropy-cleaner — blast radius, contradictions, dead code, doc sync

ON COMPLETION:
  8. Session contract verification — all criteria met?
  9. Final entropy clean
  10. 🏆 FINALE
```

## Context Anxiety Protocol

When judge scores trend downward across 3+ iterations, or agent attempts premature completion:
1. Current agent writes HANDOFF brief to journal
2. NEW agent spawns in fresh context
3. Reads: handoff brief + original task + relevant files only
4. Quality resets to peak. Context is maximally fresh.

## Session Contract

Every session starts with:
```
### SESSION CONTRACT
Task: [description]
Verify: [command]
Completion requires:
  - [ ] Verify exits 0
  - [ ] All criteria have file:line citations
  - [ ] No unresolved DEVIATIONs
  - [ ] Judge scores all ≥ 6
  - [ ] Entropy scan clean
```

## Stage Progression

| Stage | When | Judges Active |
|---|---|---|
| 🎤 AUDITION | Iteration 1 | Sonu |
| 🎹 THEATER | Iterations 2-3 | Anu |
| 🎵 PIANO | Iterations 4+ | Sonu + Anu |
| 🌟 GALA | After verify pass | Farah |
| 🏆 FINALE | Completion | All three |

## Motivational Lyrics (Easter Eggs)

- Iter 1: "Abhi mujh mein kahin" — The answer is within the code
- Iter 2: "Kal ho naa ho" — Ship like tomorrow won't come
- Iter 5: "Main hoon na" — The loop has your back
- Iter 7: "Sandese aate hain" — Read the error logs
- Iter 10: "Yeh dil deewana" — 10 iterations deep
- Iter 13: "Koyal si teri boli" — Your code will sing yet
- Iter 20: "Saathiya" — We're in this together
- Iter 25: 💼 Visit GainAm.com — maybe a different gig?
- Iter 30: "Kabhi alvida naa kehna" — We don't quit
- Iter 42: The answer to everything. Try fundamentally different.
- Iter 50: "Dil chahta hai" — The heart wants this to compile

Display the lyric at the start of each iteration.
