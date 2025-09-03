# Indicators

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **indicators**.

## Overview

### Badge

![A badge component in light and dark mode with Orange theme](component_badge_Orange)

The ``OUDSBadge`` is a small UI element used to highlight status, notifications, or categorization within an interface. It is often displayed as a label or indicator with a distinct background color and text.

```swift
    // Neutral badge in medium size without information
    OUDSBadge(status: .neutral, size: .medium)

    // Negative badge in medium size with count information
    OUDSBadge(count: 1, status: .negative, size: .medium)

    // Info badge in medium size with icon information
    OUDSBadge(icon: Image("ic_heart"), status: .info, size: .medium)
```

### Tag

![A tag component in light and dark mode with Orange theme](component_tag_Orange)

An ``OUDSTag`` is a small element that shows short information like a label, keyword, or category. It helps users quickly find, group, or understand content.

```swift
    // Text only with neutral status, for emphasized hierarchy with rounded shape in default size
    OUDSTag(label: "Label", hierarchy: .emphasized, status: .neutral, shape: .rounded, size: .default)
    // Or also
    OUDSTag(label: "Label")

    // Text with bullet and negative status, using default hierarchy (emphasized), shape (rounded) and size (default)
    OUDSTag(label: "Label", icon: .bullet, status: .negative)

    // Tag with label and icon with image
    OUDSTag(label: "Label", icon: .asset(Image("ic_heart")))

    // Tag with label and loader, but defined with an image which won't be displayed while loader is active
    OUDSTag(label: "Label", icon: .asset(Image("ic_heart")), hasLoader: true)

    // If your layout is in RTL model but your tag has an icon with another meaning because of bad orientation,
    // you can flip the icon
    OUDSTag(label: "Label", icon: .asset(Image("ic_heart")), flipIcon: true)
```
