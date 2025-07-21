# ``OUDSThemesOrangeBusinessToolsTheme``

The Sosh theme overrides some tokens from the basic `OUDSTheme` and should be seen as the theme for the Sosh brand.

<!-- NOTE: Do not forget to update tokens version -->
```
🧱 Theme version: 1.1.0
```

## Overview

This is the Orange Business Tools theme any for some business tools products, and cannot be subclassed.
This theme is related to `OrangeTheme` module sp as to get some raw tokens of colors and colors charts.

Some products may have heavy and very rich user interfaces with a lot of components and elements to displays and
with which users can interact. Thus for such products there are specific constraints of spaces and sizes.
That is the reason why this team is created.

## How to use the theme

You can use ``OrangeBusinessToolsTheme`` directly. To use the ``OrangeBusinessToolsTheme`` without further modifications, you will have to use the `OUDSThemeableView` for your root view and give it an instance of ``OrangeBusinessToolsTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you may use only as instance as singleton and not store any properties.

```swift
import OUDS // To get OUDSThemeableView
import OUDSThemesOrangeBusinessTools // To get OrangeBusinessToolsTheme
import SwiftUI

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeBusinessToolsTheme()) {
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

This theme embeds and registers the fonts for the Sosh theme, you just need to use the theme object as is.

## How to enrich the theme

You cannot derivate the Sosh theme.

## Topics

### Group

- ``SoshTheme``
- ``SoshBrandColorRawTokens``
- ``SoshBrandFontRawTokens``
