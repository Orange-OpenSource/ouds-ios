---
type: ai-agent-skills
topic: component-radio
framework: OUDS-iOS
---

# OUDS iOS – Radio Button Component

`OUDSRadio` is a circular toggle button (not a native iOS component), typically used in groups.
`OUDSRadioItem` adds text and optional image to a radio button.
`OUDSRadioPicker` groups multiple radio buttons for single selection.

**Documentation:**
- Radio only: <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsradio/>
- With texts: <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsradioitem/>
- Picker: <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsradiopicker>

## Radio button

```swift
@State var isOn: Bool = false
OUDSRadio(isOn: $isOn, accessibilityLabel: "Some label to vocalize")
```

## Radio button with texts

```swift
@State var isOn: Bool = true
OUDSRadioItem("Some text",
              isOn: $isOn,
              icon: Image(decorative: "image_name"))
```

### Text only (no icon)

```swift
@State var isOn: Bool = true
OUDSRadioItem("Some text", isOn: $isOn)
```

## Radio picker (single selection)

```swift
var someDataToPopulate: [OUDSRadioPickerData<String>] {
    [
        OUDSRadioPickerData<String>(tag: "Choice_1", label: "Label 1"),
        OUDSRadioPickerData<String>(tag: "Choice_2", label: "Label 2"),
        OUDSRadioPickerData<String>(tag: "Choice_3", label: "Label 3"),
    ]
}

@State var selection: String = "Choice_1"
OUDSRadioPicker(selection: $selection, radios: someDataToPopulate, placement: .vertical)
```
