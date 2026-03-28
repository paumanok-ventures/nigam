# Example: TypeScript Strict Mode Migration

## The Task
```
/nigam Enable strict mode in tsconfig and fix all resulting errors — verify: npx tsc --noEmit
```

## What Happens

### Iteration 1 — 🎤 AUDITION
```
### [2026-03-27 14:00:01] PLAN
🎤 Stage: AUDITION
Intent restatement: Enable TypeScript strict mode and fix all type errors that surface
Assumptions: Project uses tsconfig.json at root, currently not in strict mode
Confidence: 9/10
Goal: Enable "strict": true without breaking the build
Files to touch: tsconfig.json (first), then error files one by one
Approach: Enable strict, run tsc, count errors, fix highest-frequency error type first
Risk: Strict mode may surface 100+ errors across many files
Success criteria: npx tsc --noEmit exits 0
```

### Iteration 1 — 🎵 PIANO
```
### [2026-03-27 14:01:15] EXECUTE
🎵 Stage: PIANO
Implemented: Set "strict": true in tsconfig.json
Files modified: tsconfig.json (added "strict": true to compilerOptions)
Verification trace: happy path — tsc now reports 47 errors (expected)
Judge scores: 🎤 Sonu: 10/10 | 🎹 Anu: 10/10 | 🌟 Farah: 6/10
Next: Fix the 23 "Object is possibly null" errors (most common type)
```

### Iteration 2 — 🎹 THEATER
```
### [2026-03-27 14:02:30] PLAN
🎹 Stage: THEATER
Confidence: 8/10
Goal: Fix all "Object is possibly null" errors in src/api/
Approach: Add optional chaining and nullish coalescing where appropriate
Files to touch: src/api/users.ts, src/api/auth.ts, src/api/orders.ts
```

### ...iterations 3-7 fix remaining errors...

### Iteration 8 — 🏆 FINALE
```
### [2026-03-27 14:15:44] 🏆 GOLDEN_MIC
Task completed in 8 iterations — all 47 errors resolved
Verify: npx tsc --noEmit → 0 errors
Citations:
  - tsconfig.json:4 — "strict": true
  - src/api/users.ts:14,23,41 — optional chaining added
  - src/api/auth.ts:8,19 — null guards added
  - src/api/orders.ts:33 — type narrowing added
  - src/utils/db.ts:7 — return type annotation fixed

## COMPLETE
```

---

# Example: Anu Malik Roast on a Real Project

## The Command
```
/ask-anu-malik src/api/
```

## What You Get

A thorough audit of every file in `src/api/`, checking:
1. Architecture (file size, imports, circular deps)
2. Naming (variables, functions, types)
3. Error handling (catch blocks, thrown types)
4. Security (injection, secrets, auth)
5. Performance (queries, loops, caching)
6. Testing (coverage, meaningful assertions)
7. Dead code (unused imports, TODO comments)
8. Copy-paste (duplicated logic)
9. Types (any usage, assertions)
10. Documentation (comments, JSDoc)

Delivered as: technically accurate observations wrapped in devastating Anu Malik-style commentary.

The key: run it BEFORE pushing your PR. Better to be roasted by Anu Malik in private than by your tech lead in the PR review.

---

# Example: Overnight Autonomous Run

```bash
# Start a background Nigam session
claude --worktree -p "/nigam Achieve 90% test coverage for src/services/ — verify: jest --coverage --coverageThreshold='{\"global\":{\"lines\":90}}'" &

# Check on it later
cat .nigam/journal.md | tail -50

# Or from your phone via Remote Control
claude remote-control
```

The Nigam loop will:
- Start at 🎤 AUDITION (intent verification)
- Progress through stages as it adds tests
- Get ELIMINATED if it writes tests that don't actually test anything (Judge Farah catches this)
- Re-audition with a different approach (e.g., property-based tests instead of unit tests)
- Eventually hit 🏆 FINALE when coverage reaches 90%

Expect 10-30 iterations depending on codebase complexity.
Typical cost: $5-15 in API usage for a medium codebase.
