---
type: ai-agent-skills
topic: component-chips
framework: OUDS-iOS
---

# OUDS iOS – Chips Components

OUDS provides two chip variants (not native iOS components):

| Component | Purpose |
|-----------|---------|
| `OUDSSuggestionChip` | Predictive / recommended selection |
| `OUDSFilterChip` | Filtering with selected/unselected states |
| `OUDSChipPicker` | Group of filter chips for single selection |

**Documentation:**
- Suggestion chip: <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudssuggestionchip>
- Filter chip: <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsfilterchip>
- Chip picker: <https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudschippicker>

## Suggestion chip

```swift
// Text only
OUDSSuggestionChip(text: "Some text") { /* action */ }

// Text and icon
OUDSSuggestionChip(icon: Image("image_name"), text: "Some text") { /* action */ }

// Icon only
OUDSSuggestionChip(icon: Image("image_name"), accessibilityLabel: "Some label to vocalize") { /* action */ }
```

## Filter chip

```swift
// Text only
OUDSFilterChip(text: "Some text") { /* action */ }

// Text and icon
OUDSFilterChip(icon: Image("image_name"), text: "Some text") { /* action */ }

// Icon only
OUDSFilterChip(icon: Image("image_name"), accessibilityLabel: "Some label to vocalize") { /* action */ }
```

## Chip picker (grouped filter chips)

```swift
enum Values: String, CaseIterable {
    case value1, value2, value3
}

var someDataToPopulate: [OUDSChipPickerData<Values>] {
    [
        OUDSChipPickerData(tag: .value1,
                           layout: .textAndIcon("Value 1 label", icon: Image("image_name_1"))),
        OUDSChipPickerData(tag: .value2,
                           layout: .textAndIcon("Value 2 label", icon: Image("image_name_2"))),
        OUDSChipPickerData(tag: .value3,
                           layout: .textAndIcon("Value 3 label", icon: Image("image_name_3"))),
    ]
}

@State var selection: Values? = .value1
OUDSChipPicker(title: "Some text", selection: $selection, chips: someDataToPopulate)
```
