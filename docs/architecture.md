# Architecture

`systems-thinking-dart` is a routing layer for agent responses. It does not replace model reasoning; it decides which kind of reasoning and response shape the agent should use.

Cynefin is introduced here as a lightweight classification model: Clear problems have obvious procedures, Complicated problems need expert analysis, Complex problems require probes, and Chaotic problems require immediate stabilization.

## Flow

```mermaid
flowchart LR
    A[User Request] --> B[Activation Scorer]
    B -->|skip| C[Direct Response]
    B -->|active| D[DART Loop]
    D --> D1[Deconstruct]
    D1 --> D2[Analyze]
    D2 --> D3[Recognize]
    D3 --> D4[Test]
    D4 --> E[Classifier]
    E --> F[Router]
    F --> G{Template}
    G --> G1[Clear]
    G --> G2[Complicated]
    G --> G3[Complex]
    G --> G4[Chaotic]
    G1 --> H[Adapter Layer]
    G2 --> H
    G3 --> H
    G4 --> H
    H --> I[Final Response]

    J[External Observer Protocol<br/>Mentors / Data / Time] --> D
    J --> E
```

## Components

### Activation Scorer

Decides whether the skill should run. It prevents overhead on trivial, reversible, low-impact tasks.

### DART Loop

Runs the core method:

- Deconstruct the situation.
- Analyze cause and effect.
- Recognize patterns and anti-patterns.
- Test with a small experiment, unless the system is Chaotic.

### Classifier

Assigns one of four systems:

- Clear.
- Complicated.
- Complex.
- Chaotic.

### Router

Loads exactly one response template from `systems-thinking-dart/response-templates/`.

### Adapter Layer

Adjusts reasoning depth, output shape, tool use, context handling, and sampling for a specific model family.

### External Observer Protocol

Uses Mentors, Data, and Time when classification is low confidence, stakes are high, incentives matter, or narrative is replacing evidence.
