---
name: ouds-ios-components-actions
description: Usage and code examples for OUDS iOS Action components — OUDSButton (text, icon, loading state, text+icon, icon-only with accessibility label). Load the ouds-ios-framework-usage skill first for imports, themes, tokens, and image rules.
license: MIT
---

# OUDS Actions components

> Prerequisite: load `ouds-ios-framework-usage` first for imports, themes,
> token usage and image rules (`OUDSImage`, `// swiftlint:disable:next accessibility_label_for_image`).

## OUDSButton

```swift
OUDSButton(text: "Label", appearance: .default) {}
OUDSButton(text: "Label", appearance: .default, style: .loading()) {}
OUDSButton(text: "Label", icon: Image("ic"), appearance: .default, size: .small) {}
OUDSButton(icon: Image("ic"), accessibilityLabel: "Label", size: .small) {}
```
