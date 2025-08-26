# Navigations

Some components can be used for **navigation**.

## Overview

### Links

![A link component in light and dark mode with Orange theme](component_link_enabled_default_next_Orange)

The ``OUDSLink`` proposes layout with text only or text with icon.
It also proposes layout to navigate forward or backward.
The link can be displayed in `small` or `default` size.

```swift
    // Text only in small size
    OUDSLink(text: "Feedback", size: .small) { /* the action to process */ }

    // Text and icon in default size
    OUDSLink(text: "Feedback", icon: Image("ic_heart"), size: .default) { /* the action to process */ }

    // Navigate to previous page with link in a default size
    OUDSLink(text: "Back", indicator: .back, size: .default) { /* the action to process */ }
```
