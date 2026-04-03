---
type: ai-agent-skills
topic: component-badge
framework: OUDS-iOS
---

# OUDS iOS – Badge Component

`OUDSBadge` highlights status, notifications, or categorization.
It is richer than the native iOS badge component.

**Documentation:** <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsbadge>

| Statuses | `neutral`, `accent`, `positive`, `info`, `warning`, `negative` |
|----------|---------------------------------------------------------------|
| Sizes | `extraSmall`, `small`, `medium`, `large` |

## Usage

### Empty badge

```swift
OUDSBadge(status: .neutral, size: .medium)
```

### Badge with count

```swift
OUDSBadge(count: 1, status: .neutral, size: .medium)
```

### Badge with icon

```swift
OUDSBadge(status: .neutral(icon: Image("image_name")),
           accessibilityLabel: "Label for image",
           size: .medium)
```
