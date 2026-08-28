---
name: ouds-ios-components-indicators
description: Usage and code examples for OUDS iOS Indicators components — OUDSBadgeStandard / OUDSBadgeCount / OUDSBadgeIcon (statuses, sizes, UInt8 count), OUDSTag (label, status, icon, bullet), OUDSInputTag (removable), OUDSCircularProgressIndicator (determinate / indeterminate, statuses, gap size, track, animated reveal) and OUDSLinearProgressIndicator (determinate / indeterminate, statuses, gap size, track, stop indicator, helper text). Load the ouds-ios-framework-usage skill first for imports, themes and image rules.
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

## Linear Progress Indicator

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative` — Gap sizes: `default` (4pt), `small` (1pt)

The determinate and indeterminate initializers have **different** signatures — this is not a mistake. `stopIndicator` and `animated` are **determinate-only** parameters. The Material 3 indeterminate variant does not expose a stop indicator (no meaningful end position) and is always animated (motion is only disabled by Reduce Motion / Low Power Mode).

```swift
// ── Determinate ──────────────────────────────────────────────────────────────

// Progress is clamped to [0, 1]. By default the bar animates from 0 to `progress` on first display
// and on every change, using the same Material 3 critically-damped spring as the circular indicator
// (~1.5s).
OUDSLinearProgressIndicator(progress: 0.75)
OUDSLinearProgressIndicator(progress: 0.5, status: .accent, track: false)
OUDSLinearProgressIndicator(progress: 0.3, status: .warning, gapSize: .small)

// With a stop indicator (small square at the end of the track).
// Required for accessibility when the track contrast is below 3:1 with its container.
OUDSLinearProgressIndicator(progress: 0.5, stopIndicator: true)

// With a centered helper text below the bar. 
// The helper text without progress information (percent) is displayed according to alignment.
// it is also exposed as the accessibility label (VoiceOver reads e.g. "Uploading. 75 percent") even if 
// percent is not displayed.
OUDSLinearProgressIndicator(progress: 0.75, helperText: .description("Uploading…", alignment: .start))

// The helper text is displayed with a progress information (percent) according to alignment.
// The value and its "%" symbol are assembled through the localized wording key
// `core_progressIndicator_percent_value`, so the rendering follows the typographic rules of the
// current language (e.g. "75%" in English, "75 %" in French, "٪75" in Arabic) — there is no
// `spaceBefore` boolean to set manually.
OUDSLinearProgressIndicator(progress: 0.75, helperText: .percent(description: "Uploading…", alignment: .start))
  
// Determinate without the reveal animation: the bar is shown instantly at its target value.
OUDSLinearProgressIndicator(progress: 0.75, animated: false)

// ── Indeterminate ────────────────────────────────────────────────────────────

// Always animated (except Reduce Motion / Low Power Mode → static bar at 70%).
OUDSLinearProgressIndicator()
OUDSLinearProgressIndicator(status: .info, track: true, helperText: "Processing…")
OUDSLinearProgressIndicator(status: .accent, gapSize: .small)

// ── Custom width ─────────────────────────────────────────────────────────────

// The bar fills the available horizontal space by default; constrain it via .frame if needed.
OUDSLinearProgressIndicator(progress: 0.6)
    .frame(width: 240)
```

Notes:
- Default bar height is `4pt` (theme token `sizeLinearIndicatorHeight`) and scales with Dynamic Type.
- The bar fills the horizontal space of its container (`.frame(maxWidth: .infinity)`). Constrain its width with `.frame(width:)` if needed.
- Rounded stroke caps follow the theme tuning: `Tuning.hasRoundedProgressIndicators`. The gap is auto-compensated so the visible spacing between the foreground bar and the track stays constant regardless of the cap.
- On `OUDSColoredSurface`, the indicator switches to a monochrome rendering: `status` is ignored and the surface content color is used.
- **Determinate** animations (reveal + updates) are disabled when `accessibilityReduceMotion` is on, when Low Power Mode is enabled, or when `animated: false` is passed — the bar is then shown instantly at its target value.
- **Indeterminate** animation is intrinsic to the mode: there is no `animated` parameter on this initializer. Motion is disabled automatically when `accessibilityReduceMotion` is on or when Low Power Mode is enabled, and a static bar at 70% is displayed instead.
- **Stop indicator** is only available on the determinate variant.
- **Accessibility**: determinate exposes the percentage as `accessibilityValue`; when `helperText` is provided, it is exposed as `accessibilityLabel`. Indeterminate without helper text is hidden from VoiceOver; with a helper text, only the label is exposed (no value).
- **Percent wording**: the `.percent` helper text (and the accessibility value) is built from the localized wording key `core_progressIndicator_percent_value` (`%lld` placeholder for the value). Add/override translations per language instead of a `spaceBefore` flag.
