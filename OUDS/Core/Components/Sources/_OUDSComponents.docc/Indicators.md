# Indicator

Some components can be used for **indicators**.

## Overview

### Badge

The Badge is a small UI element used to highlight status, notifications, or categorization within an interface. It is often displayed as a label or indicator with a distinct background color and text.

```swift
    // Neutral badge in medium size without information
    OUDSBadge(status: .neutral, size: .medium)

    // Negative badge in medium size with count information
    OUDSBadge(count: 1, status: .negative, size: .medium)

    // Info badge in medium size with icon information
    OUDSBadge(icon: Image("ic_heart"), status: .info, size: .medium)
```

### Tag

A tag is a small element that shows short information like a label, keyword, or category. It helps users quickly find, group, or understand content.

```swift
    // Text only with neutral status, for emphasized hierarchy with unded shape in default size
     OUDSTag(label: "Label", hierarchy: .emphasized, status: .neutral, shape: .rounded, size: .default)
     // Or also
     OUDSTag(label: "Label")

     // Text with bullet and negative status, using default hierarchy (emphasized), shape (rounded) and size (default)
     OUDSTag(label: "Label", hasBullet: true, status: .negative)

     // Tag with label and icon
     OUDSTag(icon: Image("ic_heart"), label: "Label")

     // Tag with label and loader
     OUDSTag(icon: Image("ic_heart"), label: "Label", loader: true)
```
