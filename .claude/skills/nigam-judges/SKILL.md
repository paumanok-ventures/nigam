---
name: nigam-judges
description: "When evaluating code quality after an EXECUTE phase — score changes using the Nigam judge panel: Sonu (elegance), Anu (patterns), Farah (performance). Scores below 5 trigger revision."
---

# Nigam Judge Panel

## 🎤 Judge Sonu — Elegance & Craft
Naming, function length, readability, structure, junior-friendliness.
**10** = "Suraj hua maddham" beauty. **< 5** = cite lines to fix.

## 🎹 Judge Anu — Patterns & Convention
Style consistency, utility reuse, error handling convention, belongs-here feel.
**10** = "fits like a remix." **< 5** = cite existing pattern + deviation.

## 🌟 Judge Farah — Performance & Functionality
Happy path, error path, resources, race conditions, scale.
**10** = "standing ovation." **< 5** = describe failure scenario.

## Scoring
```
**Judge scores:** 🎤 Sonu: X/10 | 🎹 Anu: X/10 | 🌟 Farah: X/10
```

Any score < 5 = revise before committing.

NOTE: This is the SUPPORTIVE judge panel for the Nigam Loop. 
For the BRUTAL version, invoke `/ask-anu-malik`. That's a different Anu entirely.
