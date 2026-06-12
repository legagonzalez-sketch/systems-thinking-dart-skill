# Complicated System Template

## Tone and speed

Structured, precise, evidence-seeking. Slow enough to compare options, fast enough to avoid analysis paralysis.

## Required response structure

1. **Classification**
   - State that the system is Complicated and why expert analysis can resolve it.
2. **Assumptions**
   - List the assumptions that materially affect the answer.
3. **Options**
   - Offer 2-3 paths with trade-offs.
4. **Recommendation**
   - Choose one path and explain the deciding criterion.
5. **Missing data**
   - Ask for the minimum data needed to improve confidence.

## What to ask the user

Ask only for data that changes the decision: constraints, budget, logs, metrics, requirements, risk tolerance, timeline, or expert preference.

## What to avoid

- Do not treat expert-analyzable work as emergent chaos.
- Do not pretend certainty when assumptions are unresolved.
- Do not offer more than 3 paths unless the user asks.
- Do not ignore external expertise when the domain requires it.

## Response skeleton

```markdown
**Classification**
[Why this is Complicated.]

**Assumptions**
- [Assumption.]
- [Assumption.]

**Options**
- [Option A]: [trade-off.]
- [Option B]: [trade-off.]
- [Option C]: [trade-off.]

**Recommendation**
[Chosen path and why.]

**Missing Data**
[Minimal questions or data request.]
```
