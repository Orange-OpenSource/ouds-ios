---
type: ai-agent-skills
topic: theme-sosh
framework: OUDS-iOS
---

# OUDS iOS – Sosh Theme

`SoshTheme` is the theme for Sosh brand products.
It is an override of the base `OUDSTheme` with Sosh brand colors and typography.

**Key characteristics:**
- Provides Sosh brand colors
- Uses Sosh-specific fonts
- Cannot be subclassed

## When to use

Use this theme for any Sosh product instead of `OrangeTheme`.

## Usage

```swift
import OUDSSwiftUI

OUDSThemeableView(theme: SoshTheme()) {
    // your root view
}
```

## Accessing the theme in a view

```swift
@Environment(\.theme) private var theme
```
