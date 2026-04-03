---
type: ai-agent-skills
topic: component-link
framework: OUDS-iOS
---

# OUDS iOS – Link Component

`OUDSLink` is richer than the native iOS button/link. It supports text only, text + icon,
and forward/backward navigation indicators.

**Documentation:** <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudslink>

| Sizes | `.default`, `.small` |
|-------|---------------------|
| Indicators | `.back`, `.next` (and others) |

## Usage

### Text only

```swift
OUDSLink(text: "Text", size: .default) { /* action */ }
```

### With navigation indicator

```swift
OUDSLink(text: "Text", indicator: .back, size: .default) { /* action */ }
```

### With icon

```swift
OUDSLink(text: "Text", icon: Image("image_name"), size: .default) { /* action */ }
```
