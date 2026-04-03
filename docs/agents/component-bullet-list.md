---
type: ai-agent-skills
topic: component-bullet-list
framework: OUDS-iOS
---

# OUDS iOS – Bullet List Component

**Documentation:** <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsbulletlist/>

`OUDSBulletList` displays an ordered, unordered (default), or bare list with up to 3 levels of depth.

| Type | Description |
|------|-------------|
| `.unordered` | Bullet chips (default) |
| `.ordered` | Numbered indices |
| `.bare` | No leading indicator |

## Usage

### Unordered (default)

```swift
OUDSBulletList {
    OUDSBulletList.Item("Label 1")
    OUDSBulletList.Item("Label 2")
    OUDSBulletList.Item("Label 3")
}
```

### Ordered with nested levels

```swift
OUDSBulletList(type: .ordered) {
    OUDSBulletList.Item("Label 1") {
        OUDSBulletList.Item("Label 1.1") {
            OUDSBulletList.Item("Label 1.1.1")
            OUDSBulletList.Item("Label 1.1.2")
        }
    }
    OUDSBulletList.Item("Label 2")
    OUDSBulletList.Item("Label 3")
}
```
