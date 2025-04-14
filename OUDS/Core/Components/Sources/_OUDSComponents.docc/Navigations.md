# Navigation

Some components can be used for **navigation**.

## Overview

### Links

The ``OUDSLink`` proposes layout with text only or text with icon.
It also proposes layout to navigate forward or backward.
The link can be displayed in `small` or `medium` size.

```swift
    // Text only in small size
    OUDSLink(text: "Feedback", size: .small) { /* the action to process */ }

    // Text and icon in medium size
    OUDSLink(text: "Feedback", icon: Image("ic_heart"), size: .medium) { /* the action to process */ }

    // Navigate to previous page with link in a medium size
    OUDSLink(text: "Back", indicator: .back, size: .medium) { /* the action to process */ }
```
