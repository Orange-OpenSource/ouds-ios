---
type: ai-agent-skills
topic: helpers-and-view-modifiers
framework: OUDS-iOS
---

# OUDS iOS – Helpers and View Modifiers

OUDS provides SwiftUI view modifier overloads and helpers to apply tokens correctly.
Always use these OUDS overloads instead of the standard SwiftUI counterparts so that
light/dark mode and theme switching work properly.

## Typography

Use the view modifier named after the typography token. Do **not** call SwiftUI's `font()` directly.

```swift
Text("Hello")
    .bodyDefaultMedium(theme)
```

## Colors

### Foreground color

```swift
.foregroundColor(theme.colors.contentDefault)
```

### Background color

```swift
.background(theme.colors.bgPrimary)
```

### Tint color

```swift
.tint(theme.colors.contentDefault)
```

## Border

```swift
.border(style: theme.borders.styleDefault,
        width: theme.borders.widthThin,
        radius: theme.borders.radiusMedium,
        color: theme.colors.actionEnabled)
```

## Shadow / elevation effect

```swift
.shadow(theme.elevations.emphasized)
```
