---
name: ouds-ios-components-dialogs
description: Usage and code examples for OUDS iOS Dialogs components — OUDSAlertBanner, OUDSAlertMessage (statuses, bullet list, link, dismiss) and OUDSInlineAlert (statuses, icon). Load the ouds-ios-framework-usage skill first for imports, themes and image rules.
license: MIT
---

# OUDS Dialogs components

> Prerequisite: load `ouds-ios-framework-usage` first for imports, themes and image rules.

## Alert Banner

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`

Two layouts: `.center` (basic, centered content) and `.start` (full, leading-aligned content).

```swift
// Center layout - basic banner with centered content
OUDSAlertBanner(layout: .center(label: "Success!", status: .positive))

// Center layout with action button
OUDSAlertBanner(layout: .center(label: "Warning!",
                                 status: .warning,
                                 action: (label: "Action", onClick: { /* do something */ })))

// Start layout - full banner with description and close button
OUDSAlertBanner(layout: .start(label: "Warning",
                               status: .warning,
                               description: "Some details about the warning",
                               onClose: { /* dismiss banner */ }))

// Start layout with custom action link at bottom
let actionLink = OUDSAlertBanner.ActionLink(text: "Learn more", position: .bottom) {
    // open URL or perform action
}
OUDSAlertBanner(layout: .start(label: "Info",
                               status: .info,
                               actionLink: actionLink))

// Start layout with action link at top trailing position
let topActionLink = OUDSAlertBanner.ActionLink(text: "Action", position: .topTrailing) {}
OUDSAlertBanner(layout: .start(label: "Label",
                               status: .warning,
                               actionLink: topActionLink,
                               alignment: .center))

// With custom icon (neutral/accent only)
OUDSAlertBanner(layout: .start(label: "Custom",
                               status: .neutral(image: OUDSImage(asset: Image("ic_heart"), renderingMode: .original))))
```

### ActionLink Position

- `.bottom` (default): Link displayed below the main message content
- `.topTrailing`: Link displayed at the top-end corner of the banner

### Alignment

- `.top` (default): Containers aligned to the top of the banner
- `.center`: Containers vertically centered within the banner

### Rich text

`label` and `description` are `OUDSTextualContent`: raw (string literal), `.localized(_:tableName:bundle:)` or `.rich(AttributedString)`:

```swift
OUDSAlertBanner(layout: .start(label: .rich(AttributedString("Important")),
                               status: .warning,
                               description: .localized("alert.description.key", bundle: .module)))
```

---

## Alert Message

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`

```swift
OUDSAlertMessage(label: "Label")
OUDSAlertMessage(label: "Label", status: .warning, description: "Details") { /* dismiss */ }
OUDSAlertMessage(label: "Label",
                 status: .neutral(image: OUDSImage(asset: Image("ic_heart"), renderingMode: .original)), // .original to avoid to have tinted images
                 bulletList: ["A", "B"],
                 link: .init(text: "More", position: .bottom) {},
                 disableVoiceOverAnnouncement: true, // default false: VoiceOver announces the alert on appear
                 onClose: {})
// description and bulletList elements are OUDSTextualContent: raw (string literal), localized or rich
OUDSAlertMessage(label: "Label",
                 description: .rich(AttributedString(…)),
                 bulletList: ["Raw", .localized("key", bundle: Bundle.module), .rich(AttributedString(…))])
```

> **Literal pitfall**: with the `LocalizedStringKey` initializer (`OUDSAlertMessage(LocalizedStringKey("key"), …)`), a bare `description: "abc"`
> may select a deprecated initializer and emit a deprecation warning, because `AttributedString` is itself expressible by a string literal.
> Write `description: .raw("abc")` in that case. With the `label:` initializer a bare literal is fine.

---

## Inline Alert

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`

```swift
OUDSInlineAlert(label: "Label")
OUDSInlineAlert(label: "Label", status: .warning)
OUDSInlineAlert(label: "Label", status: .accent(image: OUDSImage(asset: Image("ic_heart"))))
OUDSInlineAlert(label: "Label", status: .info, disableVoiceOverAnnouncement: true) // default false: VoiceOver announces the alert on appear
```
