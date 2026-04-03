---
type: ai-agent-skills
topic: component-colored-surface
framework: OUDS-iOS
---

# OUDS iOS – Colored Surface Component

`OUDSColoredSurface` applies a surface color to a background and automatically adjusts the colors
of OUDS components placed inside it (buttons, links, etc.) for optimal contrast.

**Documentation:** <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudscoloredsurface>

Color mode tokens are available under `theme.colorModes`.

## Usage

```swift
OUDSColoredSurface(color: theme.colorModes.onStatusPositiveEmphasized) {
    // Views and components placed here automatically adapt their colors
}
```
