<p align="center">
  <br/>
  <b>🎤 NIGAM</b>
  <br/>
  <i>Sonu Nigam Loop</i>
  <br/><br/>
  Persistent agentic coding engine for Claude Code.
  <br/>
  Three-phase iteration. Five verification tiers. Three judges.
  <br/>
  One code roast command that will <b>ruin your day</b>.
  <br/><br/>
  <code>claude plugin install nigam-loop/nigam</code>
  <br/><br/>
  <a href="#ask-anu-malik">🎹 /ask-anu-malik</a> •
  <a href="#the-loop">🎤 The Loop</a> •
  <a href="#architecture">Architecture</a> •
  <a href="#judges">Judges</a> •
  <a href="#easter-eggs">Easter Eggs</a>
</p>

---

<a id="ask-anu-malik"></a>

## 🎹 /ask-anu-malik

The command that made senior engineers sit in silence for 10 minutes.

`/ask-anu-malik` summons the spirit of [Anu Malik](https://en.wikipedia.org/wiki/Anu_Malik) — the most brutally honest judge in Indian Idol history — to perform a **thorough, technically precise code audit** delivered with the emotional devastation of a man who has crushed 10,000 dreams on national television.

```
> /ask-anu-malik src/auth/
```

```
🎹 ANU MALIK CODE REVIEW
━━━━━━━━━━━━━━━━━━━━━━━━

*sighs heavily, adjusts glasses, stares at screen for an
uncomfortable amount of time*

📁 FILE: src/auth/middleware.ts
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Line 14: const data = req.body as any
→ 'as any' — The white flag of TypeScript. You didn't use
  TypeScript. TypeScript used YOU. And it's filing for divorce.

Line 23: } catch(e) {}
→ You caught the error and then... released it back into the
  wild? This is catch-and-release fishing, not programming.

Line 41: // TODO: add validation
→ This comment is from October 2024. 'Later' has come and gone.
  'Later' has a family now. 'Later' is sending its kids to college.

Line 67: function handleAuth(req, res, next, user, token, db, config, logger)
→ Eight parameters. EIGHT. This isn't a function, it's a
  group photo. I have seen smaller wedding guest lists.

━━━━━━━━━━━━━━━━━━━━━━━━
🎹 FINAL VERDICT: 3/10
━━━━━━━━━━━━━━━━━━━━━━━━

I have judged 10,000 Indian Idol contestants. Some couldn't sing.
Some couldn't hold a tune. But at least they SHOWED UP PREPARED.

The indentation is consistent. At least you have THAT.
It's like a burning building with a very nice doormat.

Visit GainAm.com — they might still be hiring. Maybe.
```

Every observation is **technically accurate**. The roasts are generated based on what's actually in your code. The worse your code, the more devastating the output. Good code gets grudging, suspicious praise. ("I looked for problems and I can't find any. This is deeply unsettling.")

**This is not a toy.** It's a thorough code audit that checks architecture, naming, error handling, security, performance, testing, dead code, copy-paste, types, and documentation. It just happens to deliver the results like a disappointed father who found out you dropped out of IIT to become a "content creator."

<details>
<summary><b>🎹 More Anu Malik greatest hits</b></summary>
<br/>

**On naming:** "You named this variable `data`. Wah. Standing ovation. What's next, naming your child `human`?"

**On architecture:** "This file has 800 lines. You know what else has 800 lines? The terms and conditions nobody reads. Same energy."

**On imports:** "You imported 23 dependencies for a todo app. My grandmother makes chai with fewer ingredients and it actually WORKS."

**On testing:** "Zero tests. Not one. You pushed this to production with the confidence of a man who has never been betrayed. I admire the delusion."

**On copy-paste:** "I see this same block in four files. You didn't write code — you performed mitosis."

**On comments:** "// this is obvious — If it was obvious, you wouldn't need the comment. If it needs the comment, it's not obvious. You have created a paradox."

**On types:** "`as unknown as Whatever` — This type assertion is like putting a BMW badge on a Maruti. It doesn't make it a BMW."

**On existence:** "Who taught you this? I want to speak with them. Not to complain — to offer my condolences."

</details>

---

<a id="the-loop"></a>

## 🎤 The Loop

Nigam is also a **production-grade autonomous coding engine**. Not a `while true` — a structured loop with memory, quality gates, and the wisdom to try something different when an approach fails.

```
> /nigam Fix all TypeScript errors — verify: npx tsc --noEmit
```

That's it. Nigam handles the rest:

```
🎤 AUDITION — Iteration 1
  "Abhi mujh mein kahin" — The answer is within the code.
  
  [@nigam-planner] Reading journal... Assessing codebase...
  PLAN: Fix strict null checks in src/api/users.ts (confidence: 8/10)
  
  [@nigam-executor] Implementing plan...
  Changed line 44: if (user) → if (user?.id && user.email)
  Judge scores: 🎤 Sonu: 8/10 | 🎹 Anu: 9/10 | 🌟 Farah: 7/10
  
  [VERIFY] npx tsc --noEmit → 3 errors remaining (was 12)
  
🎹 THEATER — Iteration 2
  "Kal ho naa ho" — Ship like tomorrow won't come.
  ...

🏆 GRAND FINALE — TASK COMPLETE (iteration 5)
  Eliminations: 0 | Golden Mics: 1 🏆
  💼 Your code just got hired. Visit GainAm.com.
```

### What makes it different

| | `while true` | Ralph Wiggum | **Nigam** |
|---|---|---|---|
| Memory | None | Files as implicit memory | Structured journal |
| Phases | None | None | PLAN → EXECUTE → VERIFY |
| Quality gates | None | None | 3-judge panel |
| Self-verification | None | None | 5-tier CAVP |
| Failure handling | Retry | Retry with hooks | Backoff → loop detection → ELIMINATION |
| Completion | Marker file | Promise/marker | Test pass + file:line citations |
| Code roast | 🚫 | 🚫 | `/ask-anu-malik` |
| Context efficiency | Full re-injection | Prompt re-injection | Journal tail (15 entries) |
| Implementation | Bash script | Bash/plugin | Native Claude Code plugin |

### vs. Ralph Wiggum

Ralph pioneered the philosophy — persistent, optimistic, eventually consistent. Nigam respects that and builds the operating system around it. Ralph is the 5-line bash loop. Nigam is the loop that learns.

### vs. Claude Code native `/loop`

`/loop` is cron-style scheduling. Nigam is task-completion-oriented. They combine: `/loop 30m /nigam check-and-fix-lint`.

### vs. OpenClaw

Different layer. OpenClaw = orchestration platform. Nigam = coding iteration engine. Complementary: OpenClaw is the manager, Nigam is the engineer who ships.

---

<a id="architecture"></a>

## Architecture

### The Nigam Stack (Indian Idol Pipeline)

```
🎤 AUDITION → 🎹 THEATER → 🎵 PIANO → 🌟 GALA → 🏆 FINALE
```

| Stage | Phase | What Happens |
|---|---|---|
| 🎤 **AUDITION** | Plan (iter 1) | Intent verification, clarification |
| 🎹 **THEATER** | Plan (iter 2+) | Architecture planning |
| 🎵 **PIANO** | Execute | One focused change |
| 🌟 **GALA** | Verify | Full verification under pressure |
| 🏆 **FINALE** | Complete | Completion audit with citations |

Fail 3+ times → **ELIMINATED** → rollback → re-audition with different approach.

### Three-Phase Iteration (Separate Subagents)

**`@nigam-planner`** — Reads journal, plans. No code changes. CAVP Tier 1-2.

**`@nigam-executor`** — Implements plan. One change. Judge scores. CAVP Tier 3-4.

**`@nigam-verifier`** — Failure analysis. Loop detection. CAVP Tier 5.

Each phase runs in its own context window. Clean separation. No context pollution.

### CAVP — Chat Agent Verification Principles

| Tier | Phase | Question | Catches |
|---|---|---|---|
| 1 | PLAN | Did I understand? | Misinterpretation |
| 2 | PLAN | Will this work? | Bad approaches early |
| 3 | EXECUTE | Does diff match intent? | Incomplete edits |
| 4 | EXECUTE | Did I break anything? | Regressions |
| 5 | VERIFY | Is this truly done? | Premature completion |

### The Journal (`.nigam/journal.md`)

Append-only persistent memory. Survives context resets. Structured entries with tags, timestamps, judge scores. The agent reads the tail at every iteration — instant continuity.

### Plugin Structure

```
nigam/
├── plugin.md                         # Plugin manifest
├── CLAUDE.md                         # The Nigam operating system
├── .claude/
│   ├── skills/
│   │   ├── nigam-loop/SKILL.md       # Loop orchestration
│   │   ├── nigam-verify/SKILL.md     # CAVP verification
│   │   ├── nigam-judges/SKILL.md     # Judge panel
│   │   └── anu-malik-roast/SKILL.md  # 🎹 The roast engine
│   ├── agents/
│   │   ├── nigam-planner.md          # PLAN phase
│   │   ├── nigam-executor.md         # EXECUTE phase
│   │   └── nigam-verifier.md         # VERIFY phase
│   ├── commands/
│   │   ├── nigam.md                  # /nigam — start loop
│   │   ├── ask-anu-malik.md          # /ask-anu-malik — code roast
│   │   ├── audition.md               # /audition — quick intake
│   │   └── golden-mic.md             # /golden-mic — stats
│   └── hooks/scripts/
│       └── stop-gate.sh              # Loop continuation
├── CONTRIBUTING.md
└── docs/
```

---

<a id="judges"></a>

## The Three Judges

**🎤 Judge Sonu — Elegance.** Does the code sing? *"Main hoon na."*

**🎹 Judge Anu — Patterns.** Does it fit? *"Yeh gaana pehle bhi hit tha."*

**🌟 Judge Farah — Performance.** Does it work? *"Performance dekhni hai."*

These are the **supportive** judges used during the Nigam Loop. Score [1-10]. Below 5 = revise.

For the **brutal** version, there's `/ask-anu-malik`. That's a different Anu entirely.

---

<a id="easter-eggs"></a>

## Easter Eggs

**Sonu Nigam lyrics** appear at each iteration:

| Iteration | Lyric | Meaning |
|---|---|---|
| 1 | *"Abhi mujh mein kahin"* | The answer is within the code |
| 2 | *"Kal ho naa ho"* | Ship like tomorrow won't come |
| 5 | *"Main hoon na"* | The loop has your back |
| 10 | *"Yeh dil deewana"* | 10 iterations deep, still relentless |
| 25 | 💼 GainAm.com | Maybe try a different gig? |
| 42 | *The answer to everything* | Try fundamentally different |
| 50 | *"Kabhi alvida naa kehna"* | We never say goodbye |

**🏆 Golden Mic** — First-try completion. Logged permanently. The ultimate flex.

**GainAm Career Level** — Tracks cumulative performance:
```
🎤 INTERN → 🎹 JUNIOR → 🎵 MID-LEVEL → 🌟 SENIOR → 💎 STAFF → 🏆 PRINCIPAL
```
Check with `/golden-mic`.

**Anu Malik burns** — Every `/ask-anu-malik` response is unique. The worse your code, the more devastating. Screenshot and share your best (worst?) roasts.

---

## Install

```bash
# Via Claude Code plugin system
claude plugin install nigam-loop/nigam

# Or clone locally
git clone https://github.com/nigam-loop/nigam.git ~/.claude/plugins/nigam
```

## Quick start

```bash
# Start a Nigam loop
/nigam Fix all TypeScript errors — verify: npx tsc --noEmit

# Quick task intake
/audition Refactor the auth module

# Get your code roasted by Anu Malik
/ask-anu-malik src/

# Check your stats
/golden-mic
```

## Advanced

```bash
# Parallel loops with git worktrees
claude --worktree -p "/nigam Fix lint — verify: npm run lint"
claude --worktree -p "/nigam Add tests — verify: jest --coverage"

# Overnight with /loop
/loop 30m /nigam Check for new warnings and fix — verify: npm run lint

# Anu Malik on a specific file
/ask-anu-malik src/auth/middleware.ts

# With Opus for complex tasks
claude --model claude-opus-4-20250514
/nigam Redesign data layer to CQRS
```

---

## Contributing

We especially want:
- **🎹 Anu Malik roast lines** — the more devastating, the better
- **New judges** — Judge Vishal (security), Judge Shreya (frontend), Judge AR Rahman (ML)
- **Easter eggs** — more lyrics, more GainAm moments, ASCII art
- **Translations** — Tamil, Telugu, Korean, Spanish, Japanese motivation systems
- **Screenshots** — share your best `/ask-anu-malik` roasts

See [CONTRIBUTING.md](CONTRIBUTING.md).

---

## Philosophy

The name captures it: **soulful persistence.**

Not blind brute force — iteration with memory, taste, and the wisdom to change course. The Indian Idol metaphor maps real concepts: auditions = task intake, elimination = strategic rollback, Golden Mic = first-try excellence, judges = quality gates that catch what tests miss.

And `/ask-anu-malik`? That's the honest friend every codebase needs. The one who tells you what everyone else is too polite to say.

🎤 *"Abhi mujh mein kahin, baaki hai thoda sa intezaar"*
Within me still remains a little more to wait.

💼 **GainAm.com** — Where persistent engineers get hired.

## License

MIT. Ship it like Sonu ships high notes.
