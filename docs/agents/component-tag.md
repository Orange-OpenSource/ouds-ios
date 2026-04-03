---
type: ai-agent-skills
topic: component-tag
framework: OUDS-iOS
---

# OUDS iOS – Tag Components

## Tag (`OUDSTag`)

Small label showing keywords or categories (not a native iOS component).

**Documentation:** <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudstag>

| Statuses | `positive`, `info`, `negative`, `warning`, `neutral`, `accent` |
|----------|---------------------------------------------------------------|
| Appearances | `emphasized`, `muted` |
| Shapes | `square`, `rounded` |
| Sizes | `default`, `small` |

### Text only (default neutral)

```swift
OUDSTag(label: "Label")
```

### With icon

```swift
OUDSTag(label: "Label", status: .neutral(icon: Image("image_name")))
```

### With bullet indicator

```swift
OUDSTag(label: "Label", status: .neutral(bullet: true))
```

---

## Input Tag (`OUDSInputTag`)

A removable tag (not a native iOS component). Tapping it triggers an action (e.g. removal from a list).

**Documentation:** <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsinputtag>

```swift
OUDSInputTag("Label") {
    // usually: remove this tag from a list
}
```
