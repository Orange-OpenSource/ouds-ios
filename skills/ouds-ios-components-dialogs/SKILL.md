---
name: ouds-ios-components-dialogs
description: Usage and code examples for OUDS iOS Dialogs components — OUDSAlertMessage (statuses, bullet list, link, dismiss) and OUDSInlineAlert (statuses, icon). Load the ouds-ios-framework-usage skill first for imports, themes and image rules.
license: MIT
---

# OUDS Dialogs components

> Prerequisite: load `ouds-ios-framework-usage` first for imports, themes and image rules.

## Alert Message

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`

```swift
OUDSAlertMessage(label: "Label")
OUDSAlertMessage(label: "Label", status: .warning, description: "Details") { /* dismiss */ }
OUDSAlertMessage(label: "Label",
                 status: .neutral(image: OUDSImage(asset: Image("ic_heart"), renderingMode: .original)), // .original to avoid to have tinted images
                 bulletList: ["A", "B"],
                 link: .init(text: "More", position: .bottom) {},
                 onClose: {})
// description and bulletList elements are OUDSTextualContent: raw (string literal), localized or rich
OUDSAlertMessage(label: "Label",
                 description: .rich(AttributedString(…)),
                 bulletList: ["Raw", .localized("key", bundle: Bundle.module), .rich(AttributedString(…))])
```

---

## Inline Alert

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`

```swift
OUDSInlineAlert(label: "Label")
OUDSInlineAlert(label: "Label", status: .warning)
OUDSInlineAlert(label: "Label", status: .accent(image: OUDSImage(asset: Image("ic_heart"))))
```
