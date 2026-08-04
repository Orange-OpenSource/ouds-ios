---
name: ouds-ios-components-indicators
description: Usage and code examples for OUDS iOS Indicators components — OUDSBadgeStandard / OUDSBadgeCount / OUDSBadgeIcon (statuses, sizes, UInt8 count), OUDSTag (label, status, icon, bullet), OUDSInputTag (removable) and OUDSCircularProgressIndicator (determinate / indeterminate, statuses, gap size, track). Load the ouds-ios-framework-usage skill first for imports, themes and image rules.
license: MIT
---

# OUDS Indicators components

> Prerequisite: load `ouds-ios-framework-usage` first for imports, themes and image rules.

## Badge

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative` — Sizes: `extraSmall`, `small`, `medium`, `large`
Count parameter must be of type `UInt8`.

```swift
OUDSBadgeStandard(accessibilityLabel: "Some label", status: .neutral, size: .medium)
OUDSBadgeCount(3, accessibilityLabel: "Some label", status: .neutral, size: .medium)
OUDSBadgeIcon(status: .neutral(icon: Image("ic")), accessibilityLabel: "Label", size: .medium)
```

---

## Tag

```swift
OUDSTag(label: "Label")
OUDSTag(label: "Label", status: .neutral(icon: OUDSImage(asset: Image("ic"))))
OUDSTag(label: "Label", status: .neutral(icon: OUDSImage(asset: Image("ic"), renderingMode: .original))) // raw image (not tinted)
OUDSTag(label: "Label", status: .neutral(icon: OUDSImage(asset: Image("ic"), flipped: true))) // flipped for RTL
OUDSTag(label: "Label", status: .accent(icon: OUDSImage(asset: Image("ic"))))
OUDSTag(label: "Label", status: .accent(icon: OUDSImage(asset: Image("ic"), renderingMode: .original))) // raw image (not tinted)
OUDSTag(label: "Label", status: .neutral(bullet: true))
```

---

## Input Tag

```swift
OUDSInputTag("Label") { /* remove action */ }
```

---

## Circular Progress Indicator

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative` — Gap sizes: `default`, `small`

```swift
// Determinate — progress is clamped to [0, 1]
OUDSCircularProgressIndicator(progress: 0.75)
OUDSCircularProgressIndicator(progress: 0.5, status: .accent, track: false)
OUDSCircularProgressIndicator(progress: 0.3, status: .warning, gapSize: .small)

// Indeterminate
OUDSCircularProgressIndicator()
OUDSCircularProgressIndicator(status: .info, track: true)

// Custom size — stroke width and gap scale proportionally to the effective size
OUDSCircularProgressIndicator(progress: 0.6)
    .frame(width: 96, height: 96)
```

Notes:
- Default size is `48pt` and scales with Dynamic Type.
- On `OUDSColoredSurface`, the indicator switches to a monochrome rendering: `status` is ignored and the surface content color is used.
- Animations are paused when `accessibilityReduceMotion` is on or when Low Power Mode is enabled.
