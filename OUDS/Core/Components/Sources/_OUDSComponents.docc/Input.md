# Input

Some components can be used for **inputs**.

## Overview

### Checkboxes

#### Checkbox (only)

The library proposes layout to add in your views some checkboxes components, even if this type of component is not iOS-native one.
You can use a simple checkbox without any labels and images.

```swift
     // A simple checkbox, with only a selector
     // The component must be instanciated with a string parameter used as accessibility label that will be
     // vocalized by Voice Over. 
     OUDSCheckbox(state: $state, accessibilityLabel: "Select the element")
```

#### Checkbox item

The library proposes also a checkbox which has in its layout some labels and icons.
The selector can be leading or trailing.

```swift
     // A leading checkbox with a label
     OUDSCheckboxItem(state: $state, label: "Hello world")

     // A trailing checkbox with a label, an helper text, an icon, a divider and is about an error
     // with an inverse layout
     OUDSCheckboxItem(state: $state,
                      labelText: "We live in a fabled world",
                      helperText: "Of dreaming boys and wide-eyed girls",
                      icon: Image(decorative: "ic_heart"),
                      isInversed: true,
                      isError: true,
                      hasDivider: true)
```

### Radios

#### Radio (only)

The library proposes layout to add in your views some radio buttons components, even if this type of component is not iOS-native one.
You can use a simple radio without any labels and images.

```swift
     // A simple radio, with only a selector
     // The component must be instanciated with a string parameter used as accessibility label that will 
     // be vocalized by Voice Over. 
     OUDSRadio(isOn: $selection, accessibilityLabel: "Select the element")
```

#### Radio item

The library proposes also a radio which has in its layout some labels and icons.
The selector can be leading or trailing.

```swift
     // A leading radio with a label
     OUDSRadiotem(isOn: $selection, label: "Lucy in the Sky with Diamonds")

     // A trailing radio with a label, an additional label, an helper text, an icon, a divider and is about an
     // error with an inverse layout
     OUDSRadiotem(isOn: $selection,
                  labelText: "Lucy in the Sky with Diamonds",
                  additionalLabelText: "The Beatles"
                  helperText: "1967",
                  icon: Image(decorative: "ic_heart"),
                  isInversed: true,
                  isError: true,
                  hasDivider: true)
```
