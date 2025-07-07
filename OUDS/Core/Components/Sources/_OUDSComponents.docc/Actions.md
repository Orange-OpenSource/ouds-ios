# Actions

Some components can be used for **actions**.

## Overview

### Buttons

The ``OUDSButton`` propose layout with text only, icon only or text and icon. 
Four hierarchies are proposed for all layouts: *default*, *strong*, *minimal* and *negative*.
Two style are available: *default* and *loading*.
If button is placed on colored surface using `OUDSColoredSurface`, the default colors (content, background and border) are automatically adjusted to switch to monochrom.
A button with `OUDSButton.Hierarchy.Negative` hierarchy is not allowed as a direct or indirect child of an `OUDSColoredSurface`.

```swift
     // Icon only with default hierarchy
     OUDSButton(icon: Image("ic_heart"), hierarchy: .default) {}

     // Text only with negative hierarchy
     OUDSButton(text: "Delete", hierarchy: .negative) {}
```

For accessibility reasons, if the user in the system settings toggles the option to reduce the animations, the loading indicator will be frozen to be more comfortable for the user.

For ecodesign reasons, if the user toggles the low power mode, the loading indicator will be frozen to prevent the CPU to work and waste energy.
