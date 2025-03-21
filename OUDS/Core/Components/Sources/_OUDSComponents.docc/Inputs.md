# Input

Some components can be used for **inputs**.

## Overview

### Checkboxes

#### Checkbox (only)

The library proposes layout to add in your views some checkboxes components, even if this type of component is not iOS-native one.
You can use a simple checkbox without any labels and images.
This checkbox can provide two values (selected and unselected) or three values (selected, unselected and indeterminate)

```swift
    // A simple checkbox, with only an indicator
    // The component must be instanciated with a string parameter used as accessibility label that will be
    // vocalized by Voice Over. 

    // The isOn parameter can have only two values: true (selected), false (unselected)
    OUDSCheckbox(isOn: $isOn, accessibilityLabel: "Select the element")

    // The selection parameter can have only three values: selected, unselected and indeterminate
    OUDSCheckboxIndeterminate(selection: $selection, accessibilityLabel: "Select the element")
```

#### Checkbox item

The library proposes also a checkbox which has in its layout some labels and icons.
The indicator can be leading or trailing.
It can be be sued for two-states or three-states management.

```swift
    // A leading checkbox with a label, with only two states
    OUDSCheckboxItem(isOn: $isOn, label: "Hello world")

    // A leading checkbox with a label, an helper text, and exposing a three-values-based state with selection binding
    OUDSCheckboxItemIndeterminate(selection: $selection, 
                                  labelText: "Dead Robot Zombie Cop",
                                  helperText: "from Outer Space II")

    // A trailing checkbox with a label, an helper text, an icon, a divider and is about an error
    // with a reversed layout, and exposing only two states through isOn binding
    OUDSCheckboxItem(isOn: $isOn,
                     labelText: "We live in a fabled world",
                     helperText: "Of dreaming boys and wide-eyed girls",
                     icon: Image(decorative: "ic_heart"),
                     isReversed: true,
                     isError: true,
                     hasDivider: true)
```

### Radios

#### Radio (only)

The library proposes layout to add in your views some radio buttons components, even if this type of component is not iOS-native one.
You can use a simple radio without any labels and images.

```swift
     // A simple radio, with only an indicator
     // The component must be instanciated with a string parameter used as accessibility label that will 
     // be vocalized by Voice Over. 
     OUDSRadio(isOn: $selection, accessibilityLabel: "Select the element")
```

#### Radio item

The library proposes also a radio which has in its layout some labels and icons.
The indicator can be leading or trailing.

```swift
     // A leading radio with a label
     OUDSRadioItem(isOn: $selection, label: "Lucy in the Sky with Diamonds")

     // A trailing radio with a label, an additional label, an helper text, an icon, a divider and is about an
     // error with a reversed layout
     OUDSRadioItem(isOn: $selection,
                   labelText: "Lucy in the Sky with Diamonds",
                   additionalLabelText: "The Beatles"
                   helperText: "1967",
                   icon: Image(decorative: "ic_heart"),
                   isReversed: true,
                   isError: true,
                   hasDivider: true)
```

#### Radio picker

Radio items can be embeded in a radio picker so as to let the users to select only one item without several.

```swift
    // Define the elements to display in radio buttons using OUDSRadioPickerData.
    // This object has the same properties as the OUDSRadioItem,
    // and some of them are optional withdefault values set
    var someDataToPopulate: [OUDSRadioPickerData<String>] {
        [
            OUDSRadioPickerData<String>(tag: "Choice_1",
                                        label: "Virgin Holy Lava",
                                        additionalLabel: "Very spicy",
                                        helper: "No alcohol, only tasty flavors",
                                        icon: Image(systemName: "flame")),

            OUDSRadioPickerData<String>(tag: "Choice_2",
                                        label: "IPA beer",
                                        helper: "From Brewdog company",
                                        icon: Image(systemName: "dog.fill")),

            OUDSRadioPickerData<String>(tag: "Choice_3",
                                        label: "Mineral water",
                                        icon: Image(systemName: "waterbottle.fill")),
        ]
    }

    // Prepare the selection, with a value previously selected
    // Use the data and the binding for the picker.
    @State var selection: String = "Choice_1"

    // Here the picker is vertical
    OUDSRadioPicker(selection: $selection, radios: someDataToPopulate)

### Switches

#### Switch (only)

The library proposes a new layout for the switch component. The native it not used anymore.
You can use a simple switch without any labels and images.

```swift
    // A simple switch, with only an indicator
    // The component must be instanciated with a string parameter used as accessibility label that will be
    // vocalized by Voice Over. 

    // The isOn parameter can have only two values: true (selected), false (unselected)
    OUDSSwitch(isOn: $isOn, accessibilityLabel: "Select the element")
```

#### Switch item

The library proposes also a switch which has in its layout some labels and icons.
The indicator can be leading or trailing.

```swift
    // A leading checkbox with a label, with only two states
    OUDSSwitchItem(isOn: $isOn, label: "Hello world")

    // A leading switch with a label, an helper text, and exposing the state with selection binding
    OUDSSwitchItem(isOn: $isOn, 
                   labelText: "Dead Robot Zombie Cop",
                   helperText: "from Outer Space II")

    // A trailing switch with a label, an helper text, an icon, a divider and is about an error
    // with an inverse layout, and exposing the state through isOn binding
    OUDSSwitchItem(isOn: $isOn,
                     labelText: "We live in a fabled world",
                     helperText: "Of dreaming boys and wide-eyed girls",
                     icon: Image(decorative: "ic_heart"),
                     isInversed: true,
                     isError: true,
                     hasDivider: true)
```
