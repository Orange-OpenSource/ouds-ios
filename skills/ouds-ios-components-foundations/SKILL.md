---
name: ouds-ios-components-foundations
description: Usage and code examples for OUDS iOS Foundations components — Typography (OUDSDisplay, OUDSHeading, OUDSBody, OUDSLabel, OUDSCode). Load the ouds-ios-framework-usage skill first for imports, themes and image rules.
license: MIT
---

# OUDS Foundations components

> Prerequisite: load `ouds-ios-framework-usage` first for imports, themes and shared rules.

## Typography

## Display

Three sizes for `OUDSDisplay`: `.large` (default), `.medium`, `.small`.
Four sizes for `OUDSHeading`: `.xLarge`, `.large` (default), `.medium`, `.small`.
Three sizes for `OUDSBody`: `.large`, `.medium` (default), `.small`.
Four sizes for `OUDSLabel`: `.xLarge`, `.large`, `.medium` (default), `.small`
Three weights for `OUDSBody` and `OUDSLabel`: `.default` (default), `.moderate`, `.strong`.

```swift
OUDSDisplay(text: "Welcome")
OUDSDisplay(text: "Welcome", size: .medium)
OUDSDisplay(LocalizedStringKey("welcome_title"), bundle: .module, size: .small)

OUDSHeading(text: "Title")
OUDSHeading(text: "Sub-section", size: .medium)
OUDSHeading(LocalizedStringKey("section_title"), bundle: .module, size: .xLarge)

OUDSBody(text: "Lorem ipsum dolor sit amet.")
OUDSBody(text: "Lorem ipsum", size: .large, weight: .strong)
OUDSBody(LocalizedStringKey("body_content"), bundle: .module, size: .small, weight: .moderate)

OUDSLabel(text: "Label")
OUDSLabel(text: "Label", size: .xLarge, weight: .strong)
OUDSLabel(LocalizedStringKey("label_key"), bundle: .module, size: .small, weight: .moderate)

OUDSCode(text: "let x = 42")
OUDSCode(LocalizedStringKey("code_sample"), bundle: .module)
```

`OUDSHeading` can have *marker*. `hasMarker: true` draws a small brand-coloured marker below the text — only when:
- `size == .large`, AND
- the current theme supports it (`theme.hasTypographyHeadingLargeMarker == true`, e.g. Orange, Orange Compact, Wireframe).

A dedicated initializer takes a `coloredText: String` sub-string rendered with `theme.colors.contentBrandSecondary`. 
Useful to emphasise a specific word (typically a brand name). Works on themes that do not support the marker.
