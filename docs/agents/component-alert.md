---
type: ai-agent-skills
topic: component-alert
framework: OUDS-iOS
---

# OUDS iOS – Alert Components

## Alert Message (`OUDSAlertMessage`)

Persistent UI element for system feedback, status changes, or required actions.
Remains visible until dismissed or resolved by the user.

**Documentation:** <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsalertmessage>

Available statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`.
`neutral` and `accent` support a custom icon.

### Basic (positive by default)

```swift
OUDSAlertMessage(label: "Label")
```

### With description and close action

```swift
OUDSAlertMessage(label: "Warning",
                 status: .warning,
                 description: "Some details about the warning") {
    // dismiss action
}
```

### With custom icon, bullet list and detail link

```swift
OUDSAlertMessage(label: "Label",
                 status: .neutral(icon: OUDSIcon(asset: Image("ic_heart"))),
                 bulletList: ["Bullet 1", "Bullet 2", "Bullet 3"],
                 link: .init(text: "Link", position: .bottom) { /* link action */ },
                 onClose: { /* close action */ })
```

---

## Inline Alert (`OUDSInlineAlert`)

Lightweight, non-actionable alert placed inline in the content flow.
Does not include a close button or action link, and does not disappear automatically.

**Documentation:** <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsinlinealert>

Available statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`.
`neutral` and `accent` support a custom icon.

### Basic (neutral by default)

```swift
OUDSInlineAlert(label: "Label")
```

### With a different status

```swift
OUDSInlineAlert(label: "Warning", status: .warning)
```

### With custom icon (accent / neutral)

```swift
OUDSInlineAlert(label: "Label", status: .accent(icon: OUDSIcon(asset: Image("ic_heart"))))
OUDSInlineAlert(label: "Label", status: .neutral(icon: OUDSIcon(asset: Image("ic_heart"))))
```
