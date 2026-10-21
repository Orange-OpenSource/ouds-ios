---
name: ouds-ios-components-content-display
description: Usage and code examples for OUDS iOS Content Display components — OUDSBulletList (unordered, ordered, nested items, raw / localized / rich `OUDSTextualContent` texts). Load the ouds-ios-framework-usage skill first for imports, themes, and shared rules.
license: MIT
---

# OUDS Content Display components

> Prerequisite: load `ouds-ios-framework-usage` first for imports, themes and shared rules.

## OUDSBulletList

```swift
OUDSBulletList {
    OUDSBulletList.Item("Label 1")
    OUDSBulletList.Item("Label 2")
}

OUDSBulletList(type: .ordered) {
    OUDSBulletList.Item("Label 1") { OUDSBulletList.Item("Label 1.1") }
}

// Item text is an OUDSTextualContent: raw (string literal), localized or rich
OUDSBulletList {
    OUDSBulletList.Item("Raw text")
    OUDSBulletList.Item(.localized("item_label", bundle: Bundle.module))
    OUDSBulletList.Item(.rich(AttributedString(…)))
}
```
