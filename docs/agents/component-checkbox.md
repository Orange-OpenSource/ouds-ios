---
type: ai-agent-skills
topic: component-checkbox
framework: OUDS-iOS
---

# OUDS iOS – Checkbox Component

`OUDSCheckbox` is a square toggle button (not a native iOS component).
`OUDSCheckboxItem` adds text and optional image to a checkbox.
`OUDSCheckboxPicker` groups multiple checkboxes for multi-selection.

**Documentation:**
- Checkbox only: <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudscheckbox/>
- With texts: <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudscheckboxitem>
- Picker: <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudscheckboxpicker>

## Checkbox

```swift
@State var isOn: Bool = true
OUDSCheckbox(isOn: $isOn, accessibilityLabel: "Some label to vocalize")
```

## Checkbox with texts

```swift
@State var isOn: Bool = true
OUDSCheckboxItem("An important text",
                 isOn: $isOn,
                 description: "A secondary text",
                 icon: Image(decorative: "image_name"))
```

### Text only (no icon)

```swift
@State var isOn: Bool = true
OUDSCheckboxItem("Hello world", isOn: $isOn)
```

## Checkbox picker (multi-selection)

```swift
var someDataToPopulate: [OUDSCheckboxPickerData<String>] {
    [
        OUDSCheckboxPickerData<String>(tag: "Choice_1", label: "Label 1"),
        OUDSCheckboxPickerData<String>(tag: "Choice_2", label: "Label 2"),
        OUDSCheckboxPickerData<String>(tag: "Choice_3", label: "Label 3"),
    ]
}

@State var selections: [String] = ["Choice_1"] // pre-selected; empty = nothing selected
OUDSCheckboxPicker(selections: $selections, checkboxes: someDataToPopulate)
```
