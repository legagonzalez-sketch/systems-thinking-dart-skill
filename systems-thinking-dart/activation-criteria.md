# Activation Criteria

Use this file to decide in under 5 seconds whether `systems-thinking-dart` should run.

## Activate if

- Ambiguity is medium or high.
- There are at least 2 plausible causes.
- The decision is irreversible, costly, or reputation-sensitive.
- There is time pressure or an active incident.
- Multiple stakeholders have conflicting incentives.
- There is suspicion of feedback loops, delayed effects, or second-order consequences.
- The user asks for diagnosis, strategy, prioritization, trade-offs, risk, or decision support.

## Do not activate if

- The task is mechanical: formatting, translation, syntax cleanup, trivial refactor, boilerplate, autocomplete.
- The user asks for a purely creative artifact without a decision or risk judgment.
- The request is a factual lookup with a direct answer.
- The problem is obvious, low-impact, and reversible.
- The user explicitly asks for a brief direct answer and no classification is needed for safety or correctness.

## Quick score: 0-5

Add 1 point for each true statement:

1. The request has medium or high ambiguity.
2. There are at least 2 plausible causes or paths.
3. A wrong answer could be costly, irreversible, unsafe, or reputation-damaging.
4. Time pressure or instability is present.
5. Stakeholders, incentives, feedback loops, or delayed effects matter.

Decision:

- **0-1:** skip skill.
- **2-3:** activate lightweight DART.
- **4-5:** activate full DART and consider Mentors/Data/Time.

## Fast default

When score is exactly 2 and the task looks reversible, use a compact `<dart>` block and the shortest matching template.
