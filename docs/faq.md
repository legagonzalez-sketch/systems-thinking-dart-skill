# FAQ

## What is Cynefin?

Cynefin is a decision framework developed by Dave Snowden. It helps classify situations by the relationship between cause and effect, so the response fits the context.

## What is DART?

DART is the operational loop used by this skill: Deconstruct, Analyze, Recognize, Test. It turns classification into an answer route.

## Does this replace reasoning models?

No. Reasoning models can think deeply, but they still benefit from explicit classification, anti-Cobra checks, delayed-loop checks, and self-deactivation for trivial tasks.

## When should the skill not activate?

It should skip mechanical tasks, direct factual lookups, simple translations, trivial formatting, and low-impact reversible requests.

## Why include adapters?

Different models need different scaffolding. A small local model may need rigid templates; a thinking-native model may only need a compact validation block.

## What is the Cobra Effect?

The Cobra Effect happens when an incentive rewards the behavior it is trying to reduce. The skill checks for this explicitly in the Recognize phase.

## What are delayed feedback loops?

They are effects that arrive late enough to mislead current decisions. For example, cutting support costs may look good immediately while customer churn rises months later.

## Can I use this in commercial projects?

Yes. The repo is MIT licensed.

## Can I add a new model adapter?

Yes. Follow [contributing-adapters.md](contributing-adapters.md) and open a PR.
