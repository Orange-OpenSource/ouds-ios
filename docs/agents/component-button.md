---
type: ai-agent-skills
topic: component-button
framework: OUDS-iOS
---

# OUDS iOS – Button Component

**Documentation:** <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsbutton/>

`OUDSButton` supports three layouts (text only, icon only, text + icon) and five appearances.

| Appearance | Description |
|------------|-------------|
| `.default` | Standard button |
| `.strong` | High emphasis |
| `.brand` | Brand-colored |
| `.minimal` | Low emphasis |
| `.negative` | Destructive action |

| Style | Description |
|-------|-------------|
| `.default` | Normal state |
| `.loading` | Shows loading indicator |

## Usage

### Text only

```swift
OUDSButton(text: "Some text", appearance: .default, style: .default) {
    // action
}
```

### Loading state

```swift
OUDSButton(text: "Some text", appearance: .default, style: .loading) {
    // action
}
```

### Text and icon

```swift
OUDSButton(text: "Some text", icon: Image("image_name"), appearance: .default) {
    // action
}
```

### Icon only

```swift
OUDSButton(icon: Image("image_name"), accessibilityLabel: "Some label") {
    // action
}
```
