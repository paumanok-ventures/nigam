---
description: "Break a complex task into bite-sized sub-tasks that an agent can handle without complexity fear. Each sub-task: 1-3 files, <100 lines, clear success criteria. Usage: /decompose <complex task>"
---

# 🔨 Decompose — Complexity Fear Breaker

Agents fear complexity. They write stubs, declare things "out of scope," or end sessions prematurely when facing large tasks. The fix is the same as for humans: break it into pieces so small the activation energy is nearly zero.

## Process

1. Read the task description
2. Read the relevant codebase area (use @nigam-context-scout if needed)
3. Break the task into sub-tasks where EACH:
   - Touches 1-3 files maximum
   - Requires < 100 lines of changes
   - Has clear, testable success criteria
   - Can be completed in a single Nigam iteration
   - Has no ambiguity about what "done" means
4. Order sub-tasks by dependency (what must happen first)
5. Identify which sub-tasks can run in PARALLEL (independent changes)

## Output Format

```
### DECOMPOSITION: [original task]

Total sub-tasks: N
Estimated iterations: N
Parallelizable: N tasks can run simultaneously

#### Sub-task 1 of N (MUST be first)
**Do:** [specific action, <1 sentence]
**Files:** [1-3 files]
**Changes:** ~[N] lines
**Success:** [testable criteria]
**Depends on:** nothing

#### Sub-task 2 of N
**Do:** [specific action]
**Files:** [1-3 files]  
**Changes:** ~[N] lines
**Success:** [testable criteria]
**Depends on:** Sub-task 1

...
```

## Rules
- NEVER have a sub-task that requires >100 lines. If it does, decompose further.
- NEVER have a sub-task that touches >3 files. If it does, split it.
- Every sub-task must have success criteria that can be VERIFIED by running a command.
- The sum of all sub-tasks must equal the original task. Nothing missing, nothing extra.
- Order matters. Dependencies must be explicit.

## Auto-trigger

This command auto-triggers when:
- Agent confidence drops below 6 during planning
- Agent writes stubs instead of implementations
- Agent declares something "out of scope" that is clearly in scope
- Agent attempts to end session on a task that's obviously incomplete

🎤 "The journey of a thousand lines begins with a single function."
