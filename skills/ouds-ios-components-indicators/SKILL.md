---
name: ouds-ios-components-indicators
description: Usage and code examples for OUDS iOS Indicators components — OUDSBadgeStandard / OUDSBadgeCount / OUDSBadgeIcon (statuses, sizes, UInt8 count), OUDSTag (label, status, icon, bullet), OUDSInputTag (removable), OUDSCircularProgressIndicator (determinate / indeterminate, statuses, gap size, track, animated reveal) and OUDSAssistantCircularProgressIndicator (AI-thinking indeterminate variant with 4-color cycling). Load the ouds-ios-framework-usage skill first for imports, themes and image rules.
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
// By default the arc animates from 0 to `progress` on first display and on every change,
// using a Material 3 critically-damped spring (~1.5s).
OUDSCircularProgressIndicator(progress: 0.75)
OUDSCircularProgressIndicator(progress: 0.5, status: .accent, track: false)
OUDSCircularProgressIndicator(progress: 0.3, status: .warning, gapSize: .small)

// Determinate without the reveal animation: the arc is shown instantly at its target value.
OUDSCircularProgressIndicator(progress: 0.75, animated: false)

// Indeterminate — Material 3 spinner (global rotation + additional 90° kicks + sweep respiration)
OUDSCircularProgressIndicator()
OUDSCircularProgressIndicator(status: .info, track: true)

// Custom size — stroke width and gap scale proportionally to the effective size
OUDSCircularProgressIndicator(progress: 0.6)
    .frame(width: 96, height: 96)
```

Notes:
- Default size is `48pt` and scales with Dynamic Type.
- Rounded stroke caps follow the theme tuning: `Tuning.hasRoundedProgressIndicators` picks between the default (butt) and the rounded cap, exactly like `hasRoundedButtons` does for buttons. The gap is auto-compensated so the visible spacing between the foreground arc and the track stays constant regardless of the cap.
- On `OUDSColoredSurface`, the indicator switches to a monochrome rendering: `status` is ignored and the surface content color is used.
- Determinate animations (reveal + updates) are disabled when `accessibilityReduceMotion` is on or when Low Power Mode is enabled — the arc is then shown instantly at its target value. The `animated: false` flag has the same effect on demand.
- Indeterminate rotation is paused in the same conditions (Reduce Motion / Low Power Mode) and falls back to a static arc.

---

## Assistant Circular Progress Indicator

Indeterminate-only variant dedicated to AI assistant contexts (a "thinking" indicator).
The foreground color cycles through `theme.colors.colorAiPrimary → colorAiSecondary
→ colorAiTertiary → colorAiQuaternary → …` once per sweep respiration cycle (~3s),
with a short cross-fade between two successive colors.

The assistant variant never displays a track and always uses the default gap size —
the API therefore exposes no parameter.

```swift
// Default size (48pt), scales with Dynamic Type
OUDSAssistantCircularProgressIndicator()

// Custom size — stroke width scales proportionally to the effective size
OUDSAssistantCircularProgressIndicator()
    .frame(width: 96, height: 96)
```

Notes:
- Indeterminate only — no `progress`, no `status`, no `track`, no `gapSize` parameter.
- On `OUDSColoredSurface`, the AI color cycling is disabled and the surface content color is used instead (monochrome rendering).
- Motion is disabled when `accessibilityReduceMotion` is on or when Low Power Mode is enabled — a static arc is displayed using `colorAiPrimary`.
