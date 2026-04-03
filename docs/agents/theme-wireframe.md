---
type: ai-agent-skills
topic: theme-wireframe
framework: OUDS-iOS
---

# OUDS iOS – Wireframe Theme

`WireframeTheme` is a neutral theme intended for prototyping, mockups, and design of
user journeys without Orange or Sosh brand colors.

**Key characteristics:**
- No brand colors — uses neutral palette
- Useful for early-stage design and wireframing
- Cannot be subclassed

## When to use

Use this theme when creating prototypes or non-branded demos.
Do **not** use it in production Orange or Sosh products.

## Usage

```swift
import OUDSSwiftUI

OUDSThemeableView(theme: WireframeTheme()) {
    // your root view
}
```

## Accessing the theme in a view

```swift
@Environment(\.theme) private var theme
```
