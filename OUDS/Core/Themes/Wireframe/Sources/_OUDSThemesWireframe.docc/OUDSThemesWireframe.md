# ``OUDSThemesWireframe``

This Wireframe theme is a theme for some specific usages, like for prototyping and design of journeys with non-Orange charted themes.

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Theme version: 1.1.0
```

## Overview

The ``WireframeTheme`` does not embed charts colors yet, and is read-only: it cannot be suclassed or derivated.
The ``WireframeTheme`` uses the **ChalkboardSE** font family available in the iOS system.

## How to use the theme

You can use ``WireframeTheme`` directly. To use the ``WireframeTheme`` without further modifications, you will have to use the `OUDSThemeableView` for your root view and give it an instance of ``WireframeTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you may use only as instance as singleton and not store any properties.

```swift
import OUDS // To get OUDSThemeableView
import OUDSThemesWireframe // To get WireframeTheme
import SwiftUI

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: WireframeTheme()) {
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

You cannot derivate the Wireframe theme.

## Topics

### Group

- ``WireframeTheme``
