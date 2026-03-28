---
name: nigam-verify
description: "When planning, executing, or verifying code changes — apply Chat Agent Verification Principles (CAVP): intent verification, plan validation, output checking, regression guarding, and completion auditing."
---

# CAVP — Chat Agent Verification Principles

## Tier 1: Intent (PLAN phase)
Restate task in own words. List assumptions. List ambiguities with interpretations. Confidence < 80% → BLOCKED.

## Tier 2: Plan (PLAN phase)
Each step: INPUT → OUTPUT → RISK → FALLBACK. Adversarial check. Scope check. Confidence [1-10], < 7 → revise.

## Tier 3: Output (EXECUTE phase)
Re-read diffs. Trace happy + edge paths. Syntax/import/consistency check.

## Tier 4: Regression (EXECUTE phase)
List touched code + dependents. Changed signatures → trace callers. Predict verify output.

## Tier 5: Completion (before COMPLETE)
Re-read ORIGINAL task. Cite file:line for each requirement. Check implicit requirements. Run verify one more time.

🎤 "Pehle sun, phir bol" — Listen first, then speak.
