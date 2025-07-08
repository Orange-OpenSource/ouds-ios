# ``OUDSThemesSosh``

The Sosh theme overrides some tokens from the basic `OUDSTheme` and should be seen as the theme for the Sosh brand.

<!-- NOTE: Do not forget to update tokens version -->
```
🧱 Theme version: 1.1.0
```

## Overview

This is the Sosh theme any Sosh product must use, and cannot be subclassed.
It embeds also in its target the Sosh brand colors which are not shared nor exposed in lower level targets or outside any module not depending to it.

In other words, this ``SoshTheme`` is based on the abstract `OUDSTheme`, uses all the *Orange Unified Design System* kit and brings the Sosh brand colors and assets.

## How to use the theme

You can use ``SoshTheme`` directly. To use the ``SoshTheme`` without further modifications, you will have to use the `OUDSThemeableView` for your root view and give it an instance of ``SoshTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you may use only as instance as singleton and not store any properties.

```swift
import OUDS // To get OUDSThemeableView
import OUDSThemesSosh // To get SoshTheme
import SwiftUI

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: SoshTheme()) {
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

## How to use the Sosh fonts

Even if the typography is designed in this Swift Package thanks to tokens and Swift code, the TTF files defining the Sosh fonts are not exposed here and should be added in your project. 
You can get them in the [design system toolbox app](https://github.com/Orange-OpenSource/ouds-ios-design-system-toolbox).

To use the fonts, follow the steps:
- In the Info.plist of your project, add the new groupe entry "Fonts provided by application"
- Then in this group add one new line per font (Sosh-Black.ttf, Sosh-Bold.ttf, Sosh-Medium.ttf, Sosh-Regular.ttf, Sosh-Thinn.ttf) 

## How to enrich the theme

You cannot derivate the Sosh theme.

## Topics

### Group

- ``SoshTheme``
- ``SoshBrandColorRawTokens``
- ``SoshBrandFontRawTokens``
