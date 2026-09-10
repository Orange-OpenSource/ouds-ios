---
name: ouds-ios-components-layouts
description: Usage and code examples for OUDS iOS Layouts components — OUDSColoredSurface (color-mode tokens container) and OUDSHorizontalDivider / OUDSVerticalDivider. Load the ouds-ios-framework-usage skill first for imports, themes and token namespaces.
license: MIT
---

# OUDS Layouts components

> Prerequisite: load `ouds-ios-framework-usage` first for imports, themes and token namespaces.

## Colored Surface

```swift
OUDSColoredSurface(color: theme.colorModes.onStatusPositiveEmphasized) {
    // child views
}
```

---

## Divider

```swift
OUDSHorizontalDivider(color: .brandPrimary)
OUDSVerticalDivider(color: .brandPrimary)
```
