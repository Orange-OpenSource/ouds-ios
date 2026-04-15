---
name: ouds-vocabulary
description: OUDS-specific glossary with definitions of tokenator, token, raw token, semantic token, component token, theme, tuning, token provider and component
license: MIT
compatibility: opencode
---

# OUDS Vocabulary

- **tokenator**: internal tool that converts Figma-exported JSON specs into Swift token source files and submits them via pull requests
- **token**: a named variable holding a design value; most tokens are produced by *tokenator*
- **raw token**: a token whose value is a primitive Swift type (`String`, `Int`, `CGFloat`, …)
- **semantic token**: a token that references a raw token and carries semantic meaning in its name; used directly inside components
- **component token**: a token scoped to a specific component, referencing semantic tokens when fine-grained per-component overrides are needed
- **theme**: a cohesive set of tokens plus assets (fonts, images) that controls the look and feel of an app
- **tuning**: lightweight configuration knobs on a theme (e.g. rounded-corner radius)
- **token provider**: an object within a theme that groups semantic and component tokens together
- **component**: a SwiftUI view shipped by OUDS with well-defined layout and behaviour (buttons, switches, links, …)
