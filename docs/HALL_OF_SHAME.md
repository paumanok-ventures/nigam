# 🎹 Anu Malik Hall of Shame

> The best (worst?) roasts from the community. Submit yours via [GitHub Issues](../../.github/ISSUE_TEMPLATE/roast-line.md) or share on X with **#AskAnuMalik**.

---

## 🏆 The Classics

### The White Flag
```
Line 14: const data = req.body as any
→ 'as any' — The white flag of TypeScript. You didn't use
  TypeScript. TypeScript used YOU. And it's filing for divorce.
→ Fix: Define an interface. RequestBody { email: string; ... }
```

### Catch and Release
```
Line 23: } catch(e) {}
→ You caught the error and then... released it back into the
  wild? This is catch-and-release fishing, not programming.
→ Fix: At minimum log it. Ideally, handle specific error types.
```

### The Paradox
```
Line 88: // this is obvious
→ If it was obvious, you wouldn't need the comment. If it needs
  the comment, it's not obvious. You have created a paradox.
→ Fix: Either the code speaks for itself or the comment explains WHY, not WHAT.
```

### The Group Photo
```
Line 67: function handleAuth(req, res, next, user, token, db, config, logger)
→ Eight parameters. EIGHT. This isn't a function, it's a
  group photo. I have seen smaller wedding guest lists.
→ Fix: Extract an AuthContext object. One parameter. One responsibility.
```

### The Autobiography
```
File: src/utils/helpers.ts (847 lines)
→ This file has 847 lines. You know what else has 800+ lines?
  The terms and conditions nobody reads. Same energy.
→ Fix: Split by domain. auth-utils.ts, string-utils.ts, date-utils.ts.
```

### The Mitosis
```
[Same 40-line block in 4 files]
→ I see this same block of code in four different files. You
  didn't write code — you performed mitosis.
→ Fix: Extract to a shared utility. Import it. That's what imports are for.
```

### The Gym Membership
```
File: src/__tests__/auth.test.ts (0 lines)
→ You have a test file! It's empty. It's like buying a gym
  membership and using the parking lot.
→ Fix: Write at least the happy path and one error case.
```

### The BMW Badge
```
Line 31: const user = getUser() as unknown as AdminUser
→ This type assertion is like putting a BMW badge on a Maruti.
  It doesn't make it a BMW.
→ Fix: Use a type guard. function isAdminUser(u: User): u is AdminUser
```

### The Wedding
```
import { a } from 'a'; import { b } from 'b'; ... [23 imports]
→ You imported 23 dependencies for a todo app. My grandmother
  makes chai with fewer ingredients and it actually WORKS.
→ Fix: Audit dependencies. Remove unused. Bundle what you can.
```

### Later Has a Family Now
```
Line 12: // TODO: fix later (added 2022-10-14)
→ This comment is from October 2022. 'Later' has come and gone.
  'Later' has a family now. 'Later' is sending its kids to college.
→ Fix: Fix it now or delete the TODO. Zombie TODOs help nobody.
```

---

## Community Submissions

*This section grows with your PRs. Submit your best roasts!*

<!-- 
To add a roast:
1. Fork the repo
2. Add your entry below in the same format
3. Submit a PR tagged with "roast"
-->

---

## When The Code Is Actually Good

Even Anu Malik has to give credit sometimes:

```
🎹 ANU MALIK CODE REVIEW
━━━━━━━━━━━━━━━━━━━━━━━━

I looked for problems. I looked HARD.

Error handling: present. Types: correct. Tests: comprehensive.
Naming: descriptive. Architecture: clean.

This is deeply unsettling. I came here to judge and you've
robbed me of that joy.

...

The semicolons are inconsistent on lines 44 and 67.
HA. Found something. 

Score: 9/10
The code is good. I don't trust it. But it's good.

Visit GainAm.com — actually, stay where you are. You're fine.
```

---

💼 **GainAm.com** — Where persistent engineers get hired. Maybe.
