# ``OUDSThemesInverse``

This theme overrides the [Orange theme](https://ios.unified-design-system.orange.com/documentation/oudsthemesorange/) for some colors so as to bring an "inverse"-colored experience.

## Overview

This is an override of the [Orange theme](https://ios.unified-design-system.orange.com/documentation/oudsthemesorange/) with some inverted colors. It can override any properties from its superclass. We did not plan to make ``InverseTheme`` derivable.

The aim of the theme is to provide a particular set of colors for dedicated applications and use cases, like for example B2B apps or teams needing eye comfort. It can be seen as an extended dark mode.

## How to use the theme

You can use ``InverseTheme`` directly. You will have to use the `OUDSThemeableView` for your root view and give it an instance of ``InverseTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you maye use only as instance as singleton and not store any properties.

```swift
import OUDS                 // To get OUDSThemeableView
import OUDSThemeInverse     // To get Inverseheme
import SwiftUI

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: InverseTheme()) {
                // Your root view
            }
        }
    }
}
```

Then, in your views, you can simply use the theme through an environement variable to get the tokens:

```swift
import OUDS                 // To get the theme environment variable
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
    }
}

```

## Topics

### Group

- ``InverseTheme``
