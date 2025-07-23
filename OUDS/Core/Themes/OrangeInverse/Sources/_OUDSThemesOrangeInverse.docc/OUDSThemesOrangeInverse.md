# ``OUDSThemesOrangeInverse``

This Orange theme is a theme with an inversed color palette for some specific use cases.

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Theme version: 1.1.0
```

## Overview

Some Orange products can be designed for very specific use cases. For example dark environments, or for users always on screen or for mobility uses cases.

Thus this inverse theme is based on the Orange theme and it tailored with a dedicated color palette.

The ``OrangeInverseTheme`` does not embed charts colors yet, and is read-only: it cannot be suclassed or derivated.

## How to use the theme

You can use ``OrangeInverseTheme`` directly. To use the ``OrangeInverseTheme`` without further modifications, you will have to use the `OUDSThemeableView` for your root view and give it an instance of ``OrangeInverseTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you may use only as instance as singleton and not store any properties.

```swift
import OUDS // To get OUDSThemeableView
import OUDSThemesOrangeInverse // To get OrangeInverseTheme
import SwiftUI

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeInverseTheme()) {
                // Your root view
            }
        }
    }
}
```

Then, in your views, you can simply use the theme through an environment variable to get the tokens:

```swift
import OUDS // To get the theme environment variable
import SwiftUI

struct SomeView: View {

    // Get OUDS environment variable for theme thanks to themeable view
    @Environment(\.theme) var theme
    
    var body: some View {
        
        // Use the theme to retrieve the tokens
        // For spaces: theme.spaces
        // For sizes: theme.sizes
        // For borders: theme.borders
        // For elevations: theme.elevations
        // For opacities: theme.opacities
        // For colors: theme.colors
        // For button configuration: theme.button
        // For link configuration: theme.link
        // Etc.
    }
}
```

## How to enrich the theme

You cannot derivate the Orange inverse theme.

## Topics

### Group

- ``OrangeInverseTheme``
