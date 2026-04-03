---
type: ai-agent-skills
topic: component-switch
framework: OUDS-iOS
---

# OUDS iOS – Switch / Toggle Component

`OUDSSwitch` is a native iOS toggle.
`OUDSSwitchItem` adds text and optional image to the switch.

**Documentation:**
- Switch only: <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsswitch>
- With texts: <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsswitchitem>

## Switch

```swift
@State var isOn: Bool = false
OUDSSwitch(isOn: $isOn, accessibilityLabel: "Some label to vocalize")
```

## Switch with texts and icon

```swift
@State var isOn: Bool = true
OUDSSwitchItem("Some text",
               isOn: $isOn,
               icon: Image(decorative: "image_name"))
```

## Switch with text only

```swift
@State var isOn: Bool = true
OUDSSwitchItem("Some text", isOn: $isOn)
```
