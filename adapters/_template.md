# Model Adapter Template

Target models: [model family, provider, size, context window]

Status: ❓ untested

## Reasoning depth

Describe how explicit DART should be for this model.

- Private native reasoning:
- Visible scaffolding:
- Split complex cases across turns:

## Output format

Describe the preferred diagnostic and final-answer format.

- Internal format:
- External `<dart>` contract:
- Final response format:

## Tool use

Describe tools recommended for the External Observer Protocol.

- Mentors:
- Data:
- Time:

## Context handling

Describe how the model should compress or preserve context.

- Maximum facts:
- Maximum assumptions:
- Summary strategy:
- Long-context risks:

## Sampling

Recommended settings:

- Deconstruct:
- Analyze:
- Recognize:
- Test:
- Final answer:

## Known failure modes

List observed or expected failures.

- Misclassification risks:
- Output contract risks:
- Overthinking risks:
- Underthinking risks:

## Eval results

Report results using `systems-thinking-dart/tests/eval-cases.jsonl`.

- Date:
- Model:
- Provider:
- Eval suite version:
- Classification accuracy:
- Output contract adherence:
- Trap-case self-deactivation:
- Notes:
