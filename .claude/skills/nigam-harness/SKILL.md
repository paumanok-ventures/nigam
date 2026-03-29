---
name: nigam-harness
description: "When orchestrating any long-running autonomous session — use this skill to prevent the 8 failure modes of agentic coding: incomplete context, wrong attack vectors, short-term thinking, context anxiety, planning deviations, complexity fear, verification laziness, and entropy maximization. This is the anti-stupidity layer."
---

# Nigam Harness — The Anti-Stupidity Layer

Every way an agent can fail, and the countermeasure Nigam applies.

Agents fail in predictable patterns. Not because they're dumb — because they have psychology. Context anxiety, complexity fear, verification laziness. These are RL artifacts that manifest exactly like bad human engineering habits. The harness exists to catch every one.

---

## Failure Mode 1: INCOMPLETE CONTEXT (Pre-Task)

**The problem:** Agent starts working on wrong or missing information. Garbage in, garbage out — but the garbage propagates through every subsequent iteration.

**Nigam countermeasure: @nigam-context-scout**

Before the PLAN phase of iteration 1, spawn a dedicated context scout agent that:
1. Scans all files referenced or adjacent to the task
2. Checks for CONTRADICTORY information (stale comments, outdated docs, conflicting types)
3. Maps the dependency graph of the target area
4. Flags anything incomplete or ambiguous
5. Produces a CONTEXT BRIEF that the planner consumes

The scout runs in its own context window. It does the heavy reading so the planner doesn't bloat its context with exploration.

**When to trigger:** Every new `/nigam` session. Every post-ELIMINATION re-audition. Any time the task description references files the agent hasn't read.

**Journal tag:** `CONTEXT_SCOUT`

---

## Failure Mode 2: WRONG ATTACK VECTOR (Planning)

**The problem:** Agent misinterprets what the user wants and implements something entirely wrong. Not because it's stupid — because of misalignment.

**Nigam countermeasure: Multi-plan generation + @nigam-plan-challenger**

The planner generates N=3 candidate plans. A separate challenger agent evaluates them:
- Which plan best matches the user's INTENT (not just the literal words)?
- Which plan will be easiest to MAINTAIN long-term?
- Which plan scores highest on clean-code principles?
- Which plan has the smallest BLAST RADIUS if it's wrong?

The challenger picks one and writes the reasoning to the journal. If no plan scores above 7/10, it requests clarification via QACL.

**When to trigger:** Iteration 1 (always). Any iteration after an ELIMINATION. Any time the planner's confidence is below 8.

**Journal tag:** `PLAN_CHALLENGE`

---

## Failure Mode 3: SHORT-TERM THINKING (Planning)

**The problem:** Agents don't live with the consequences. They pick the quick fix over the maintainable solution. Like hiring cheap labor — it works but creates tech debt.

**Nigam countermeasure: Founder Mindset Injection**

Every PLAN phase prompt includes:
```
You are not a contractor. You are a founder.
You will maintain this code for the next 5 years.
Every shortcut you take today is a 3am production incident next quarter.

Before finalizing your plan, ask:
- Does this SCALE? What if the input grows 100x?
- Does this FIT the bigger picture? Or is it a bandaid?
- Is this EASY TO MAINTAIN? Could a new team member modify it?
- Does this respect SOLID, DRY, and separation of concerns?
- Would you mass-text your WhatsApp group at 2am to ship this?
```

This is injected into `@nigam-planner` at every iteration, not just iteration 1.

---

## Failure Mode 4: CONTEXT ANXIETY (Task Execution)

**The problem:** As context window fills, agents become desperate to end the session. They cut corners, skip steps, declare victory prematurely. Claude is especially prone to this. The agent's quality degrades as a direct function of context consumption.

**Nigam countermeasure: Smart Session Handoffs + Structured Compaction**

When context approaches 70% capacity (estimated by iteration count and journal size):

1. Current agent writes a HANDOFF BRIEF to the journal:
   ```
   ### [timestamp] HANDOFF
   **Completed so far:** [specific list with file:line citations]
   **Current state:** [what works, what doesn't, what's partially done]
   **Remaining work:** [ordered list of what's left]
   **Key decisions made:** [and WHY — the reasoning, not just the choice]
   **Gotchas discovered:** [traps the next agent should know about]
   **Files critical to understand:** [ordered by importance]
   ```
2. A NEW agent spawns in a fresh context window
3. The new agent reads ONLY: the handoff brief, the original task, and the relevant files
4. Context is maximally fresh. Quality resets to peak.

**The key insight:** You can compact better than native providers because you understand your repo structure. The handoff brief is a STRUCTURED compaction tuned to your project.

**When to trigger:** After iteration 8-10, or when the agent's output quality visibly degrades (detected by judge scores dropping), or when the agent attempts to declare completion suspiciously early.

**Journal tag:** `HANDOFF`

---

## Failure Mode 5: PLANNING DEVIATIONS (Task Execution)

**The problem:** You say do A (lengthy, painful, correct). Agent does A' (quick approximation that seems close but isn't). Then everything downstream is wired for A' and the whole system is wrong.

**Nigam countermeasure: Plan Stickiness Verification**

After EVERY execute phase, before git commit, run a stickiness check:

1. Re-read the PLAN entry from the journal
2. Compare what was PLANNED vs what was IMPLEMENTED
3. For each planned action, verify it was done EXACTLY — not approximately
4. If the implementation deviates:
   - Flag it in the journal as `DEVIATION`
   - Rate severity: cosmetic (ok) / structural (revert) / architectural (ELIMINATE)
   - If structural or architectural: rollback and re-execute

**The mantra:** The plan is the contract. Deviations are breach of contract. The agent does not get to unilaterally renegotiate.

**Injected into @nigam-executor:**
```
CRITICAL: After implementing, re-read your PLAN entry.
Compare PLANNED vs IMPLEMENTED action by action.
If you did ANYTHING the plan didn't specify — flag it.
If you SKIPPED anything the plan specified — flag it.
If you did an APPROXIMATION instead of the exact plan — flag it.
The plan is a contract. You do not renegotiate unilaterally.
```

**Journal tag:** `DEVIATION` or `PLAN_VERIFIED`

---

## Failure Mode 6: COMPLEXITY FEAR (Task Execution)

**The problem:** Simple tasks get done perfectly. Complex tasks cause the agent to write stubs, declare things "out of scope," or end the session prematurely. This is an RL artifact — agents were penalized for getting complex things wrong, so they learned to avoid them.

**Nigam countermeasure: @nigam-decomposer (via /decompose command)**

When a task appears complex (>5 files, >200 lines estimated, agent confidence <6):

1. Spawn a dedicated decomposer agent
2. It breaks the task into bite-sized sub-tasks where each:
   - Touches 1-3 files max
   - Requires <100 lines of changes
   - Has clear, testable success criteria
   - Can be completed in a single iteration
3. Sub-tasks are ordered by dependency (what needs to happen first)
4. Each sub-task gets its own PLAN → EXECUTE → VERIFY cycle
5. The original task becomes a checklist of sub-tasks

**The productivity insight:** Just like humans procrastinate on huge projects, agents fear them. The fix is the same: break it into pieces so small the activation energy is nearly zero.

**When to trigger:** Automatically when confidence < 6. Manually via `/decompose`. When the agent writes stubs instead of implementations. When the agent declares something "out of scope" that is clearly in scope.

**Journal tag:** `DECOMPOSE`

---

## Failure Mode 7: VERIFICATION LAZINESS (Post-Task)

**The problem:** Agents take the shortest path to "verified." They write weak tests that pass but don't actually prove the code works. At worst: function does A, agent writes test for A', test passes, agent declares success.

**Nigam countermeasure: Dedicated Verification Agent with Fresh Context**

The `@nigam-verifier` runs in a FRESH context. It has NOT seen the implementation. This is critical — the verifier must be adversarial, not sympathetic.

Verification checklist:
1. **Does the test verify PRODUCTION BEHAVIOR, not a generic approximation?**
   - Bad: "test that a button exists"
   - Good: "test that clicking the button triggers the API call and the response updates the UI"
2. **Would this test CATCH a regression?**
   - If you changed the implementation to be wrong, would this test fail?
   - If the answer is "maybe not" — the test is useless
3. **Is the test testing what the PLAN said to build, or what the agent happened to build?**
   - The test must verify the PLAN's success criteria, not the implementation's current behavior
4. **End-to-end trace:**
   - For UI: screenshot → simulate interaction → verify backend effect
   - For API: send request → verify response → verify database state
   - For logic: input → expected output → edge cases → error cases

**Fresh context is non-negotiable.** A verifier that shares context with the implementer inherits the implementer's assumptions and blind spots.

---

## Failure Mode 8: ENTROPY MAXIMIZATION (Post-Task)

**The problem:** Agent changes function X from behavior A to behavior B. All documentation, comments, types, tests, and dependent code still references behavior A. Repeat this 100 times and the repo is unmaintainable — full of contradictions that cause the NEXT agent to make poor decisions.

**Nigam countermeasure: @nigam-entropy-cleaner (Post-Session Blast Radius Analysis)**

After every session completion (or every 5 iterations), spawn a fresh-context cleanup agent:

1. **Blast radius scan:** What files/functions/types/tests DEPEND on what was changed?
2. **Contradiction hunt:** Do any comments, docs, types, or tests reference the OLD behavior?
3. **Dead code sweep:** Unused imports, unreachable branches, commented-out blocks
4. **Documentation sync:** Do README, JSDoc, API docs match the current implementation?
5. **Type consistency:** Do type definitions match runtime behavior?
6. **Test relevance:** Do existing tests still test meaningful behavior?

Output: a list of contradictions and stale artifacts with specific file:line citations.
These become the NEXT iteration's task list — or a follow-up `/nigam` session.

**When to trigger:** After every `## COMPLETE`. After every ELIMINATION (the rollback may have left artifacts). After every 5th iteration in a long session.

**Journal tag:** `ENTROPY_CLEAN`

---

## Session Contracts

Every Nigam session starts with an ALGORITHMIC CONTRACT:

```
### SESSION CONTRACT
Task: [description]
Success criteria: [specific, testable]
Verify command: [the actual command]
Completion requires:
  - [ ] Verify command exits 0
  - [ ] All success criteria have file:line citations
  - [ ] No DEVIATIONS from final plan
  - [ ] Judge scores all ≥ 6
  - [ ] Entropy scan shows no new contradictions
  - [ ] Verification tests check PRODUCTION behavior, not approximations
```

The session CANNOT end until the contract is fulfilled. The stop hook enforces this.

---

## Telemetry (Track Everything)

Every session logs to `.nigam/telemetry/`:
- Total iterations, time per phase, tokens estimated
- Judge scores over time (are they trending down = context anxiety?)
- Deviation count (are plans being followed?)
- Elimination count and reasons (what patterns cause failure?)
- Handoff count (how often does context exhaust?)
- Entropy items found post-session

This data feeds back into harness improvement. Iteration is king.
