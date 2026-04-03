---
type: ai-agent-skills
topic: theme-orange-compact
framework: OUDS-iOS
---

# OUDS iOS – Orange Compact Theme

`OrangeCompactTheme` is a variant of `OrangeTheme` designed for products with heavy,
information-dense user interfaces. It applies tighter spacings and smaller sizings while
maintaining the Orange brand look and feel.

**Key characteristics:**
- Derived from `OrangeTheme`
- Overrides spacing and sizing tokens with compact values
- Same brand colors and typography as `OrangeTheme`
- Cannot be further subclassed

## When to use

Use this theme when your product has a very rich UI with many components and interaction elements,
and you need more content to fit on screen.

## Usage

```swift
import OUDSSwiftUI

OUDSThemeableView(theme: OrangeCompactTheme()) {
    // your root view
}
```

## Accessing the theme in a view

```swift
@Environment(\.theme) private var theme
```
