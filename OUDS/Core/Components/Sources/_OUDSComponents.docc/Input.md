# Input

Some components can be used for **inputs**.

## Overview

### Checkbox

The library proposes layout to add in your views some checkboxes components, even if this type of component is not iOS-native one.
You can use a simple checkbox without any labels and images.

```swift
     // A simple checkbox, with only a selector
     OUDSCheckbox(state: $state)
```

### Checkbox item

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
