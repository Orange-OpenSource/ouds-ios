---
name: ouds-ios-vocabulary
description: Use when the user asks about OUDS-specific terms such as tokenator, token, raw token, semantic token, component token, theme, tuning, token provider, or component
license: MIT
---

# OUDS Vocabulary

| Term | Definition |
|---|---|
| **tokenator** | Internal tool that converts Figma-exported JSON specs into Swift token source files and submits them via pull requests |
| **token** | Named variable holding a design value; most tokens are produced by *tokenator* |
| **raw token** | Token whose value is a primitive Swift type (`String`, `Int`, `CGFloat`, …) |
| **semantic token** | Token that references a raw token and carries semantic meaning; used directly inside components |
| **component token** | Token scoped to a specific component, referencing semantic tokens for per-component overrides |
| **theme** | Cohesive set of tokens + assets (fonts, images) controlling the look and feel of an app |
| **tuning** | Lightweight configuration knobs on a theme (e.g. rounded-corner radius) |
| **token provider** | Object within a theme that groups semantic and component tokens together |
| **component** | SwiftUI view shipped by OUDS with well-defined layout and behaviour (buttons, switches, links, …) |
| **view modifier** | Object which changes the style or look and feel of a component |
| **typography** | Style applied on texts with font line height, letter spacing weight, size and family |

## When to load which skill

| Task | Skill to load |
|---|---|
| Write or review Swift code using OUDS components or tokens | `ouds-ios-framework-usage` |
| Convert a Figma token path to its Swift equivalent | `ouds-ios-figma-to-swift` |
