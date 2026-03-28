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
2. PLAN via @nigam-planner (CAVP Tier 1-2)
3. Check for BLOCKED → QACL if needed
4. EXECUTE via @nigam-executor (CAVP Tier 3-4, judge scoring)
5. Git commit: `nigam: iter N — [description]`
6. Run verify command
7. Pass → advance stage / check completion
8. Fail → VERIFY via @nigam-verifier (root cause, loop detection)
9. 3+ consecutive same-issue failures → ELIMINATION
10. Loop or declare COMPLETE with file:line citations

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
