---
type: ai-agent-skills
topic: theme-orange
framework: OUDS-iOS
---

# OUDS iOS – Orange Theme

`OrangeTheme` is the default theme for all Orange products.
It is the base theme of the OUDS library and can be subclassed for customization.

**Key characteristics:**
- Uses system font families (no Helvetica embedded)
- Provides Orange brand colors and color charts tokens
- Provides standard sizings, spacings and dimensions

## Usage

```swift
import OUDSSwiftUI

OUDSThemeableView(theme: OrangeTheme()) {
    // your root view
}
```

## Accessing the theme in a view

```swift
@Environment(\.theme) private var theme
```

## Notes

- This is the recommended theme for any Orange product.
- It can be derived (subclassed) if you need to override specific tokens while keeping the Orange look and feel.
- For a compact variant with tighter spacings, use `OrangeCompactTheme` instead.
