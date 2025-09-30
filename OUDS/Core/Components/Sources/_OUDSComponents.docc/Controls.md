# Controls

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **controls** and **inputs**.

## Overview

### Checkboxes

#### Checkbox (only)

@TabNavigator {
    @Tab("Orange") {
        ![A checkbox component in light and dark mode with Orange theme](component_checkbox_Orange)
    }
    @Tab("Orange Inverse") {
        ![A checkbox component in light and dark mode with Orange Inverse theme](component_checkbox_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A checkbox component in light and dark mode with Orange Business Tools theme](component_checkbox_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A checkbox component in light and dark mode with Sosh theme](component_checkbox_Sosh)
    }
    @Tab("Wireframe") {
        ![A checkbox component in light and dark mode with Wireframe theme](component_checkbox_Wireframe)
    }
}

The library proposes layout to add in your views some checkboxes components, even if this type of component is not iOS-native one.
You can use a simple checkbox without any labels and images using ``OUDSCheckbox``.
This checkbox can provide two values (selected and unselected) or three values (selected, unselected and indeterminate)

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
            import OUDSComponents
            
            // A simple checkbox, with only an indicator
            // The component must be instanciated with a string parameter used as accessibility label that will be
            // vocalized by Voice Over. 

            // The isOn parameter can have only two values: true (selected), false (unselected)
            OUDSCheckbox(isOn: $isOn, accessibilityLabel: "Select the element")

            // The selection parameter can have only three values: selected, unselected and indeterminate
            OUDSCheckboxIndeterminate(selection: $selection, accessibilityLabel: "Select the element")
        ```
    }
    @Tab("UIKit") {
        ```swift
            import OUDSComponentsUIKit

            // A simple checkbox, with only an indicator
            // The component must be instanciated with a string parameter used as accessibility label that will be
            // vocalized by Voice Over. 

            // The isOn parameter can have only two values: true (selected), false (unselected)
            // Where target is a reference to the hosting UIViewController
            // Where action is a selector of a method to trigger when value of the checkbox has changed
            OUDSUIKit.createCheckbox(isOn: false, accessibilityLabel: "Select the element", target: self, action: action)
        ```
    }
}

#### Checkbox item

@TabNavigator {
    @Tab("Orange") {
        ![A checkbox item component in light and dark mode with Orange theme](component_checkboxItem_Orange)
    }
    @Tab("Orange Inverse") {
        ![A checkbox item component in light and dark mode with Orange Inverse theme](component_checkboxItem_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A checkbox item component in light and dark mode with Orange Inverse theme](component_checkboxItem_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A checkbox item component in light and dark mode with Sosh theme](component_checkboxItem_Sosh)
    }
    @Tab("Wireframe") {
        ![A checkbox item component in light and dark mode with Wireframe theme](component_checkboxItem_Wireframe)
    }
}

The library proposes also a checkbox which has in its layout some labels and icons.
The indicator can be leading or trailing.
It can be be used for two-states (``OUDSCheckboxItem``) or three-states management (``OUDSCheckboxItemIndeterminate``).

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

@TabNavigator {
    @Tab("Orange") {
        ![A checkbox picker component in light and dark mode with Orange theme](component_checkboxPicker_Orange)
    }
    @Tab("Orange Inverse") {
        ![A checkbox picker component in light and dark mode with Orange Inverse theme](component_checkboxPicker_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A checkbox picker component in light and dark mode with Orange Business Tools theme](component_checkboxPicker_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A checkbox picker component in light and dark mode with Sosh theme](component_checkboxPicker_Sosh)
    }
    @Tab("Wireframe") {
        ![A checkbox picker component in light and dark mode with Wireframe theme](component_checkboxPicker_Wireframe)
    }
}

Checkboxes can be embeded in a checkbox picker (``OUDSCheckboxPicker``) so as to let the users to select one or more items within several.

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

@TabNavigator {
    @Tab("Orange") {
        ![A radio button component in light and dark mode with Orange theme](component_radio_Orange)
    }
    @Tab("Orange Inverse") {
        ![A radio button component in light and dark mode with Orange Inverse theme](component_radio_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A radio button component in light and dark mode with Orange Business Tools theme](component_radio_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A radio button component in light and dark mode with Sosh theme](component_radio_Sosh)
    }
    @Tab("Wireframe") {
        ![A radio button component in light and dark mode with Wireframe theme](component_radio_Wireframe)
    }
}

The library proposes layout to add in your views some radio buttons components, even if this type of component is not iOS-native one.
You can use a simple radio without any labels and images thanks to ``OUDSRadio``.

```swift
     // A simple radio, with only an indicator
     // The component must be instanciated with a string parameter used as accessibility label that will 
     // be vocalized by Voice Over. 
     OUDSRadio(isOn: $selection, accessibilityLabel: "Select the element")
```

#### Radio item

@TabNavigator {
    @Tab("Orange") {
        ![A radio item component in light and dark mode with Orange theme](component_radioItem_Orange)
    }
    @Tab("Orange Inverse") {
        ![A radio item component in light and dark mode with Orange Inverse theme](component_radioItem_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A radio item component in light and dark mode with Orange Business Tools theme](component_radioItem_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A radio item component in light and dark mode with Sosh theme](component_radioItem_Sosh)
    }
    @Tab("Wireframe") {
        ![A radio item component in light and dark mode with Wireframe theme](component_radioItem_Wireframe)
    }
}

The library proposes also a radio which has in its layout some labels and icons (``OUDSRadioItem``).
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

@TabNavigator {
    @Tab("Orange") {
        ![A radio picker component in light and dark mode with Orange theme](component_radioPicker_Orange)
    }
    @Tab("Orange Inverse") {
        ![A radio picker component in light and dark mode with Orange Inverse theme](component_radioPicker_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A radio picker component in light and dark mode with Orange Business Tools theme](component_radioPicker_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A radio picker component in light and dark mode with Sosh theme](component_radioPicker_Sosh)
    }
    @Tab("Wireframe") {
        ![A radio picker component in light and dark mode with Wireframe theme](component_radioPicker_Wireframe)
    }
}

Radio items can be embeded in a radio picker so as to let the users to select only one item within several (``OUDSRadioPicker``).

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

@TabNavigator {
    @Tab("Orange") {
        ![A switch component in light and dark mode with Orange theme](component_switch_Orange)
    }
    @Tab("Orange Inverse") {
        ![A switch component in light and dark mode with Orange Inverse theme](component_switch_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A switch component in light and dark mode with Orange Business Tools theme](component_switch_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A switch component in light and dark mode with Sosh theme](component_switch_Sosh)
    }
    @Tab("Wireframe") {
        ![A switch component in light and dark mode with Wireframe theme](component_switch_Wireframe)
    }
}

The library proposes a new layout for the switch component. The native it not used anymore.
You can use a simple switch without any labels and images thanks to the ``OUDSSwitch``.

```swift
    // A simple switch, with only an indicator
    // The component must be instanciated with a string parameter used as accessibility label that will be
    // vocalized by Voice Over. 

    // The isOn parameter can have only two values: true (selected), false (unselected)
    OUDSSwitch(isOn: $isOn, accessibilityLabel: "Select the element")
```

#### Switch item

@TabNavigator {
    @Tab("Orange") {
        ![A switch item component in light and dark mode with Orange theme](component_switchItem_Orange)
    }
    @Tab("Orange Inverse") {
        ![A switch item component in light and dark mode with Orange Inverse theme](component_switchItem_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A switch item component in light and dark mode with Orange Business Tools theme](component_switchItem_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A switch item component in light and dark mode with Sosh theme](component_switchItem_Sosh)
    }
    @Tab("Wireframe") {
        ![A switch item component in light and dark mode with Wireframe theme](component_switchItem_Wireframe)
    }
}

The library proposes also a switch which has in its layout some labels and icons (``OUDSSwitchItem``)
The indicator can be leading or trailing.

```swift
    // A leading switch with a label and exposing the state through isOn binding
    OUDSSwitchItem(i"Hello world", isOn: $isOn)

    // A leading switch with a label, an helper text
    OUDSSwitchItem("Dead Robot Zombie Cop",
                   isOn: $isOn,
                   helper: "from Outer Space II")

    // A trailing switch with a label, an helper text, an icon, a divider and is about an error
    // with an inverse layout
    OUDSSwitchItem("We live in a fabled world",
                   isOn: $isOn,
                   helper: "Of dreaming boys and wide-eyed girls",
                   icon: Image(decorative: "ic_heart"),
                   isReversed: true,
                   isError: true,
                   hasDivider: true)
```

### Chips

#### Suggestion

@TabNavigator {
    @Tab("Orange") {
        ![A suggestion chip component in light and dark mode with Orange theme](component_suggestionChip_Orange)
    }
    @Tab("Orange Inverse") {
        ![A suggestion chip component in light and dark mode with Orange Inverse theme](component_suggestionChip_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A suggestion chip component in light and dark mode with Orange Business Tools theme](component_suggestionChip_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A suggestion chip component in light and dark mode with Sosh theme](component_suggestionChip_Sosh)
    }
    @Tab("Wireframe") {
        ![A suggestion chip component in light and dark mode with Wireframe theme](component_suggestionChip_Wireframe)
    }
}

The library proposes suggestion (``OUDSSuggestionChip``) chip component to make some predicitve or recommended selection.

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
            import OUDSComponents

            // Suggestion chip with icon only 
            OUDSSuggestionChip(icon: Image("ic_heart"), accessibilityLabel: "Heart") { /* the action to process */ }

            // Layout with text only
            OUDSSuggestionChip(text: "Heart") { /* the action to process */ }

            // Layout with text and icon
            OUDSSuggestionChip(icon: Image("ic_heart"), text: "Heart") { /* the action to process */ }
        ```
    }
    @Tab("UIKit") {
        ```swift
            import OUDSComponentsUIKit

            // Suggestion chip with icon only 
            OUDSUIKit.createSuggestionChip(icon: Image("ic_heart"), accessibilityLabel: "Heart", action: { /* the action to process */ })

            // Layout with text only
            OUDSUIKit.createSuggestionChip(text: "Heart", action: { /* the action to process */ })

            // Layout with text and icon
            OUDSUIKit.createSuggestionChip(icon: Image("ic_heart"), text: "Heart", action: { /* the action to process */ })
        ```
    }
}

#### Filter

@TabNavigator {
    @Tab("Orange") {
        ![A fiter chip component in light and dark mode with Orange theme](component_filterChip_Orange)
    }
    @Tab("Orange Inverse") {
        ![A fiter chip component in light and dark mode with Orange Inverse theme](component_filterChip_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A fiter chip component in light and dark mode with Orange Business Tools theme](component_filterChip_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A fiter chip component in light and dark mode with Sosh theme](component_filterChip_Sosh)
    }
    @Tab("Wireframe") {
        ![A fiter chip component in light and dark mode with Wireframe theme](component_filterChip_Wireframe)
    }
}

The library proposes filter chip component to make some filtering with selected or unselected options.

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
            import OUDSComponents
            
            // Filter chip with icon only as selected 
            OUDSFilterChip(icon: Image("ic_heart"), accessibilityLabel: "Heart", selected: true) { /* the action to process */ }
            
            // Filter chip with text only as not selected
            OUDSFilterChip(text: "Heart") { /* the action to process */ }
            
            // Filter chip with text and icon layout an in selected state
            OUDSFilterChip(icon: Image("ic_heart"), text: "Heart", selected: true) { /* the action to process */ }
        ```    
    }
    @Tab("UIKit") {
        ```swift
            import OUDSComponentsUIKit
            
            // Filter chip with icon only as selected 
            OUDSUIKit.createFilterChip(icon: Image("ic_heart"), accessibilityLabel: "Heart", selected: true, action: { /* the action to process */ })

            // Filter chip with text only as not selected
            OUDSUIKit.createFilterChip(text: "Heart", action: { /* the action to process */ })

            // Filter chip with text and icon layout an in selected state
            OUDSUIKit.createFilterChip(icon: Image("ic_heart"), text: "Heart", selected: true, action: { /* the action to process */ })
        ```
    }
}


#### Chip picker

@TabNavigator {
    @Tab("Orange") {
        ![A chip picker component in light and dark mode with Orange theme](component_chipPicker_Orange)
    }
    @Tab("Orange Inverse") {
        ![A chip picker component in light and dark mode with Orange Inverse theme](component_chipPicker_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A chip picker component in light and dark mode with Orange Business Tools theme](component_chipPicker_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A chip picker component in light and dark mode with Sosh theme](component_chipPicker_Sosh)
    }
    @Tab("Wireframe") {
        ![A chip picker component in light and dark mode with Wireframe theme](component_chipPicker_Wireframe)
    }
}

The library proposes a chip picker to make easily filtering with two kinds of selection:
- **single or none**: to select or unselect one option only
- **single**: to select at least one option
- **multiple**: to select several options

```swift
    // Define the elements to display in filter chip using OUDSChipPickerData.
    enum Drink: String, CaseIterable {
        case virginHolyLava, ipaBeer, mineralWater
    }

    var someDataToPopulate: [OUDSChipPickerData<Drink>] {
         [
             OUDSChipPickerData(tag: Drink.virginHolyLava,
                                layout: .textAndIcon("Virgin Holy Lava", icon: Image(systemName: "flame")),

             OUDSChipPickerData(tag: Dring.ipaBeer,
                                layout: .textAndIcon("IPA Beer", icon: Image(systemName: "dog.fill")),

             OUDSChipPickerData(tag: Drink.mineralWater,
                                layout: .textAndIcon("Mineral water", icon: Image(systemName: "waterbottle.fill")),
         ]
     }

    // MARK: - Simple selection, one or zero

    // Prepare the selection, with a value previously selected
    // Use the data and the binding for the picker.
    @State var selection: Drink? = .mineralWater

    // Here the picker with title, selection and data
    OUDSChipPicker(title: Select a drink, selection: $selection, chips: someDataToPopulate)

    // MARK: - Simple selection

    // Prepare the selection, with a value previously selected
    // Use the data and the binding for the picker.
    @State var selection: Drink = .mineralWater

    // Here the picker with title, selection and data
    OUDSChipPicker(title: Select a drink, selection: $selection, chips: someDataToPopulate)

    // MARK: - Multiple selection

    // Prepare the selection, with a value previously selected
    // Use the data and the binding for the picker.
    @State var selections: [Drink] = [.mineralWater]

    // Here the picker with title, selection and data
    OUDSChipPicker(title: Select a drink, selections: $selections, chips: someDataToPopulate)
 ```
