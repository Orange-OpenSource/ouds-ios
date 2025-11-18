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
        // A simple checkbox, with only an indicator
        // The component must be instanciated with a string parameter used as accessibility label that will be
        // vocalized by Voice Over. 

        // The isOn parameter can have only two values: true (selected), false (unselected)
        OUDSCheckbox(isOn: $isOn, accessibilityLabel: "Select the element")

        // The selection parameter can have only three values: selected, unselected and indeterminate
        OUDSCheckboxIndeterminate(selection: $selection, accessibilityLabel: "Select the element")
        ```
    }
    @Tab("UIKit (experimental)") {
        ```swift
        import OUDSComponentsUIKit

        // A simple checkbox, with only an indicator
        // The component must be instanciated with a string parameter used as accessibility label that will be
        // vocalized by Voice Over. 

        // Where target is a reference to the hosting UIViewController
        // Where action is a selector of a method to trigger when value of the checkbox has changed
            
        // The isOn parameter can have only two values: true (selected), false (unselected)
        OUDSUIKit.createCheckbox(isOn: isOn, accessibilityLabel: "Select the element", target: self, action: action)
        
        // The selection parameter can have three values: selected, unselected and indeterminate
        OUDSUIKit.createCheckboxIndeterminate(selection: selection, accessibilityLabel: "Select the element", target: self, action: action)
        ```
    }
}

#### Checkbox item

@TabNavigator {
    @Tab("Orange") {
        ![A checkbox item component in light and dark mode with Orange theme](component_checkboxItem_Orange)
    }
    @Tab("Orange Business Tools") {
        ![A checkbox item component in light and dark mode with Orange Business Tools theme](component_checkboxItem_OrangeBusinessTools)
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

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
        // A leading checkbox with a label, with only two states
        OUDSCheckboxItem(isOn: $isOn, label: "Hello world", target: self, action: action)

        // A leading checkbox with a label, an helper text, and exposing a three-values-based state with selection binding
        OUDSCheckboxItemIndeterminate(selection: $selection, 
                                      label: "Dead Robot Zombie Cop",
                                      description: "from Outer Space II",
                                      target: self, 
                                      action: action)

        // A trailing checkbox with a label, an helper text, an icon, a divider and is about an error
        // with a reversed layout, and exposing only two states through isOn binding
        OUDSCheckboxItem(isOn: $isOn,
                         label: "We live in a fabled world",
                         description: "Of dreaming boys and wide-eyed girls",
                         icon: Image(decorative: "ic_heart"),
                         isReversed: true,
                         isError: true,
                         hasDivider: true,
                         target: self, 
                         action: action)
        ```
    }
    @Tab("UIKit (experimental)") {
        ```swift
        import OUDSComponentsUIKit
            
        // Where target is a reference to the hosting UIViewController
        // Where action is a selector of a method to trigger when value of the checkbox has changed
        
        // A leading checkbox with a label, with only two states
        OUDSUIKit.createCheckboxItem(isOn: isOn, label: "Hello world", target: self, action: action)

        // A leading checkbox with a label, an helper text, and with a three-values-based state with selection binding
        OUDSUIKit.createCheckboxItemIndeterminate(selection: selection,
                                                  label: "Dead Robot Zombie Cop",
                                                  description: "from Outer Space II"
                                                  target: self,
                                                  action: action)

        // A trailing checkbox with a label, an helper text, an icon, a divider and is about an error
        // with a reversed layout, and with two states
        OUDSUIKit.createCheckboxItem(isOn: isOn,
                                     label: "We live in a fabled world",
                                     description: "Of dreaming boys and wide-eyed girls",
                                     icon: Image(decorative: "ic_heart"),
                                     isReversed: true,
                                     isError: true,
                                     hasDivider: true,
                                     target: self,
                                     action: action)
        ```
    }
}

#### Checkbox picker

@TabNavigator {
    @Tab("Orange") {
        ![A checkbox picker component in light and dark mode with Orange theme](component_checkboxPicker_Orange)
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
                                        description: "No alcohol, only tasty flavors",
                                        icon: Image(systemName: "flame")),

         OUDSCheckboxPickerData<String>(tag: "Choice_2",
                                        label: "IPA beer",
                                        description: "From Brewdog company",
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

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift            
        // A simple radio, with only an indicator
        // The component must be instanciated with a string parameter used as accessibility label that will 
        // be vocalized by Voice Over. 
        OUDSRadio(isOn: $isOn, accessibilityLabel: "Select the element")
        ```    
    }
    @Tab("UIKit (experimental)") {
        ```swift
        import OUDSComponentsUIKit
             
        // Where target is a reference to the hosting UIViewController
        // Where action is a selector of a method to trigger when value of the checkbox has changed
             
        // A simple radio, with only an indicator
        // The component must be instanciated with a string parameter used as accessibility label that will 
        // be vocalized by Voice Over. 
        OUDSUIKit.createRadio(isOn: isOn, accessibilityLabel: "Select the element", target: target, action: action)
        ```
    }
}

#### Radio item

@TabNavigator {
    @Tab("Orange") {
        ![A radio item component in light and dark mode with Orange theme](component_radioItem_Orange)
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

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift        
        // A leading radio with a label
        OUDSRadioItem(isOn: $isOn, label: "Lucy in the Sky with Diamonds", target: target, action: action)

        // A trailing radio with a label, an additional label, a descrption, an icon, a divider and is about an
        // error with a reversed layout
        OUDSRadioItem(isOn: $isOn,
                      label: "Lucy in the Sky with Diamonds",
                      additionalLabel: "The Beatles"
                      description: "1967",
                      icon: Image(decorative: "ic_heart"),
                      isReversed: true,
                      isError: true,
                      hasDivider: true,
                      target: target, 
                      action: action)
        ```
    }
    @Tab("UIKit (experimental)") {
        ```swift
          import OUDSComponentsUIKit
             
          // Where target is a reference to the hosting UIViewController
          // Where action is a selector of a method to trigger when value of the checkbox has changed
             
          // A leading radio with a label
          OUDSUIKit.createRadioItem(isOn: isOn, label: "Lucy in the Sky with Diamonds")

          // A trailing radio with a label, an additional label, a description, an icon, a divider and is about an rror with a reversed layout
          OUDSUIKit.createRadioItem(isOn: isOn,
                                    label: "Lucy in the Sky with Diamonds",
                                    additionalLabel: "The Beatles"
                                    description: "1967",
                                    icon: Image(decorative: "ic_heart"),
                                    isReversed: true,
                                    isError: true,
                                    hasDivider: true)
        ```
    }
}

#### Radio picker

@TabNavigator {
    @Tab("Orange") {
        ![A radio picker component in light and dark mode with Orange theme](component_radioPicker_Orange)
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
                                        description: "No alcohol, only tasty flavors",
                                        icon: Image(systemName: "flame")),

            OUDSRadioPickerData<String>(tag: "Choice_2",
                                        label: "IPA beer",
                                        description: "From Brewdog company",
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

The library proposes a new layout for the switch component. The native one is not used.
You can use a simple switch without any labels and images thanks to the ``OUDSSwitch``.

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift            
        // A simple switch, with only an indicator
        // The component must be instanciated with a string parameter used as accessibility label that will be
        // vocalized by Voice Over. 

        // The isOn parameter can have only two values: true (selected), false (unselected)
        OUDSSwitch(isOn: $isOn, accessibilityLabel: "Select the element")
        ```
    }
    @Tab("UIKit (experimental)") {
        ```swift
        import OUDSComponentsUIKit

        // Where target is a reference to the hosting UIViewController
        // Where action is a selector of a method to trigger when value of the checkbox has changed
            
        // A simple switch, with only an indicator
        // The component must be instanciated with a string parameter used as accessibility label that will be
        // vocalized by Voice Over. 

        // The isOn parameter can have only two values: true (selected), false (unselected)
        OUDSUIKit.createSwitch(isOn: isOn, accessibilityLabel: "Select the element", target: target, action: action)
        ```
    }
}

#### Switch item

@TabNavigator {
    @Tab("Orange") {
        ![A switch item component in light and dark mode with Orange theme](component_switchItem_Orange)
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

The library proposes also a switch which has in its layout some labels and icons (``OUDSSwitchItem``).
The indicator can be leading or trailing.

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
        // A leading switch with a label and exposing the state through isOn binding
        OUDSSwitchItem("Hello world", isOn: $isOn)

        // A leading switch with a label and a description
        OUDSSwitchItem("Dead Robot Zombie Cop",
                       isOn: $isOn,
                       description: "from Outer Space II")

        // A trailing switch with a label, a description, an icon, a divider and is about an error
        // with an inverse layout
        OUDSSwitchItem("We live in a fabled world",
                        isOn: $isOn,
                        description: "Of dreaming boys and wide-eyed girls",
                        icon: Image(decorative: "ic_heart"),
                        isReversed: true,
                        isError: true,
                        hasDivider: true)
        ```
    }
    @Tab("UIKit (experimental)") {
        ```swift
        import OUDSComponentsUIKit
            
        // Where target is a reference to the hosting UIViewController
        // Where action is a selector of a method to trigger when value of the checkbox has changed

        // A leading switch with a label and exposing the state through isOn binding
        OUDSUIKit.createSwitchItem("Hello world", isOn: isOn, target: target, action: action)

        // A leading switch with a label, an helper text
        OUDUIKit.createSwitchItem("Dead Robot Zombie Cop",
                                  isOn: isOn,
                                  helper: "from Outer Space II",
                                  target: target, 
                                  action: action)

        // A trailing switch with a label, a description text, an icon, a divider and is about an error
        // with an inverse layout
        OUDSUIKit.createSwitchItem("We live in a fabled world",
                                   isOn: isOn,
                                   description: "Of dreaming boys and wide-eyed girls",
                                   icon: Image(decorative: "ic_heart"),
                                   isReversed: true,
                                   isError: true,
                                   hasDivider: true,
                                   target: target, 
                                   action: action)
        ```
    }
}

### Chips

#### Suggestion

@TabNavigator {
    @Tab("Orange") {
        ![A suggestion chip component in light and dark mode with Orange theme](component_suggestionChip_Orange)
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
        // Suggestion chip with icon only 
        OUDSSuggestionChip(icon: Image("ic_heart"), accessibilityLabel: "Heart") { /* the action to process */ }

        // Layout with text only
        OUDSSuggestionChip(text: "Heart") { /* the action to process */ }

        // Layout with text and icon
        OUDSSuggestionChip(icon: Image("ic_heart"), text: "Heart") { /* the action to process */ }
        ```
    }
    @Tab("UIKit (experimental)") {
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
        // Filter chip with icon only as selected 
        OUDSFilterChip(icon: Image("ic_heart"), accessibilityLabel: "Heart", selected: true) { /* the action to process */ }
            
        // Filter chip with text only as not selected
        OUDSFilterChip(text: "Heart") { /* the action to process */ }
            
        // Filter chip with text and icon layout an in selected state
        OUDSFilterChip(icon: Image("ic_heart"), text: "Heart", selected: true) { /* the action to process */ }
        ```    
    }
    @Tab("UIKit (experimental)") {
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

### Text input

@TabNavigator {
    @Tab("Orange") {
        ![A text input component in light and dark mode with Orange theme](component_textInput_Orange)
    }
    @Tab("Orange Business Tools") {
        ![A text input component in light and dark mode with Orange Business Tools theme](component_textInput_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A text input component in light and dark mode with Sosh theme](component_textInput_Sosh)
    }
    @Tab("Wireframe") {
        ![A text input component in light and dark mode with Wireframe theme](component_textInput_Wireframe)
    }
}

The library provides useful components for forms like ``OUDSTextInput`` to let user write text data and be helped if needed.
Such components can have or not a leading icon or a trailing action with or without placeholders.

```swift
// The text to display and edit
@State var text: String = ""

// Empty text and no placeholder
OUDSTextInput(label: "Email", text: $text)

// Empty text with prefix and suffix
OUDSTextInput(label: "Email", text: $text, prefix: "Distance", suffix: "km")

// Add a leading icon for more context
OUDSTextInput(label: "Email", text: $text, placeholder: "firstName.lastName", suffix: "@orange.com", leadingIcon: Image(systemName: "envelope"))

// Add a trailing button with local image namde "ic_cross" for additional action
let trailingAction = OUDSTextInput.TrailingAction(icon: Image("ic_cross"), accessibilityLabel: "Delete") { text = "" }
OUDSTextInput(label: "Email", text: $text, trailingAction: trailingAction)

// With helper text
OUDSTextInput(label: "Email",
              text: $text,
              placeholder: "firstName.lastName",
              suffix: "@orange.com",
              helperText: "The email will be automatically completed with @orange.com")

// With helper link
@Environment(\.openURL) private var openUrl

let helperLink = OUDSTextInput.HelperLink(text: "Helper Link") {
    openUrl.callAsFunction(url)
}

OUDSTextInput(label: "Label", text: $text, placeholder: "Placeholder", helperLink: helperLink)
```
