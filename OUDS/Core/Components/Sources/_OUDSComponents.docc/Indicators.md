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
