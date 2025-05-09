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
                                  label: "Dead Robot Zombie Cop",
                                  helper: "from Outer Space II")

    // A trailing checkbox with a label, an helper text, an icon, a divider and is about an error
    // with a reversed layout, and exposing only two states through isOn binding
    OUDSCheckboxItem(isOn: $isOn,
                     label: "We live in a fabled world",
                     helper: "Of dreaming boys and wide-eyed girls",
                     icon: Image(decorative: "ic_heart"),
                     isReversed: true,
                     isError: true,
                     hasDivider: true)
```

#### Checkbox picker

Checkboxes can be embeded in a checkbox picker so as to let the users to select one or more items within several.
```swift
     // Define the elements to display in checkboxes using OUDSCheckboxPickerData.
     // This object has the same properties as the OUDSCheckboxItem,
     // and some of them are optional with default values set
     var someDataToPopulate: [OUDSCheckboxPickerData<String>] {
         [
         OUDSCheckboxPickerData<String>(tag: "Choice_1",
                                        label: "Virgin Holy Lava",
                                        additionalLabel: "Very spicy",
                                        helper: "No alcohol, only tasty flavors",
                                        icon: Image(systemName: "flame")),

         OUDSCheckboxPickerData<String>(tag: "Choice_2",
                                       label: "IPA beer",
                                        helper: "From Brewdog company",
                                        icon: Image(systemName: "dog.fill")),

         OUDSCheckboxPickerData<String>(tag: "Choice_3",
                                        label: "Mineral water",
                                        icon: Image(systemName: "waterbottle.fill")),
         ]
     }

     // Prepare the selection, with a value previously selected
     // Use the data and the binding for the picker.
     @State var selections: [String] = ["Choice_1"] // or empty if nothing selected
     // Here the picker is vertical by default
     OUDSCheckboxPicker(selections: $selections, checkboxes: someDataToPopulate)

     // The picker can be vertical and have a root item with a label and a counter
     OUDSCheckboxPicker(selections: $selections,
                        placement: .verticalRooted(label, .textAndCount))

     // The picker can apply some settings to all its radio buttons.
     // It can be also horizontal with a scroll indicator.
     // Here all the the checkboxes are in read only mode and use reversed layout.
     // Here the picker is horizontal and shows the scroll indicator
     OUDSCheckboxPicker(selections: $selections,
                        checkboxes: someDataToPopulate)
                        isReversed: true,
                        isReadOnly: true,
                        placement: .horizontal(true))
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
                   label: "Lucy in the Sky with Diamonds",
                   additionalLabel: "The Beatles"
                   helper: "1967",
                   icon: Image(decorative: "ic_heart"),
                   isReversed: true,
                   isError: true,
                   hasDivider: true)
```

#### Radio picker

Radio items can be embeded in a radio picker so as to let the users to select only one item within several.

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
```

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
    // A leading switch with a label and exposing the state through isOn binding
    OUDSSwitchItem(isOn: $isOn, label: "Hello world")

    // A leading switch with a label, an helper text
    OUDSSwitchItem(isOn: $isOn, 
                   label: "Dead Robot Zombie Cop",
                   helper: "from Outer Space II")

    // A trailing switch with a label, an helper text, an icon, a divider and is about an error
    // with an inverse layout
    OUDSSwitchItem(isOn: $isOn,
                   label: "We live in a fabled world",
                   helper: "Of dreaming boys and wide-eyed girls",
                   icon: Image(decorative: "ic_heart"),
                   isReversed: true,
                   isError: true,
                   hasDivider: true)
```
