# ``OUDSThemesOrangeInverse``

@Metadata {
    @PageImage(purpose: icon, source: "ic_theme_orangeinverse")
    @DisplayName("Theme Orange Inverse", style: symbol)
    @TitleHeading("Library")
}
<!-- 
Do not add @PageImage(purpose: card) because not managed for landing page of online doc.
See https://github.com/swiftlang/swift-docc/issues/1283
-->

This Orange theme is a theme with an inversed color palette for some specific use cases.

## Overview

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Theme version: 1.6.0
```

Some Orange products can be designed for very specific use cases. For example dark environments, or for users always on screen or for mobility uses cases.
Thus this inverse theme is based on the Orange theme and it tailored with a dedicated color palette.

> Note: This theme is related to Orange theme module to use some raw tokens of colors.

> Important: The Orange Inverse theme does not embed charts colors yet, and is read-only: it cannot be suclassed or derivated.

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

## Tunable theme

The theme can be tuned with `Tuning` object to give at init.
Some tuning object exists.

```swift
    // Define your theme tuning
    let tuning = Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true)

    // Apply it to your theme
    let theme = OrangeTheme(tuning: tuning)
    // Or in one line
    let theme = OrangeTheme(tuning: Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true))

    // Or apply predefined tunings
    let orangeFranceTheme = OrangeTheme(tuning: Tuning.OrangeFrance)
    let orangeBusinessTheme = OrangeTheme(tuning: Tuning.OrangeBusiness)
    let maxitTheme = OrangeTheme(tuning: Tuning.MaxIt)
```

## Typography

### Helvetica Neue

The Orange theme uses *Helvetica Neue* typography. This font is already available through iOS.
It is possible to use another typography, by the ones recommended are the ones defined in tokens.

```swift
    // The three following instanciations are the same
    let theme = OrangeInverseTheme()
    let theme = OrangeInverseTheme(fontFamily: OrangeBrandFontRawTokens.fontFamilyBrandDefault)
    let theme = OrangeInverseTheme(fontFamily: "HelveticaNeue") // Which is PostScript name of the font

    // This instanciation won't work as the font family is not recognised
    let theme = OrangeInverseTheme(fontFamily: "Helvetica Neue")
```

### Other fonts

However if, in very particular cases, you need to use another font family, you can try using it by changing the value in the theme init.

```swift
    // Supposing you want to use another font:
    // - like the Luciole font (https://luciole-vision.com/) (very good for accessibility)
    // - or the Robot font (https://fonts.google.com/specimen/Roboto) (to support arabic and cyrillic alphabets)
    // 1. Add the TTF files in your project
    
    // 2. Register the fonts with, for example, the function below
    private func registerFonts() {
        let fonts = Bundle.main.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
        fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
    }

    // 3. At theme init, given the font family name, add it to the theme.
    // Keep in mind that it might not work because PostScript name is used combining
    // font family name and font weight.
    // For Luciole font, use "Luciole". For Roboto font, use "Roboto""
    let theme = OrangeInverseTheme(fontFamily: theFontFamilyNameInPostScript)
```

> Note: Specific rules to compute PostScript value are defined in `PostScriptFontNamesMap.swift`

> Tip: If your font family is not well managed, you can [send an issue and explain your needs](https://github.com/Orange-OpenSource/ouds-ios/issues)

> Important: For production products and official tools, *Helvetica Neue* is preferred

> Tip: If for your needs Helvetica Neue is not relevant (because does not support cyrilic and arabic, or not enough accessible, or not aligned with your needs), [feel free to open a discussion](https://github.com/Orange-OpenSource/ouds-ios/discussions)

> Caution: For ecodesign principles you should challenge the use of fonts because they can increase the needed storage of your apps

> Important: Always check the license and terms of uses of the font your are using (distribution, hsoting, usage for comemrcial things, etc.)

## How to enrich the theme

You cannot derivate the *Orange inverse* theme.

## How it looks like
<!-- Use online images because stored in another Swift Package library and do not want to replicate assets -->

### Actions

![A button component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_button_OrangeInverse.png)

### Controls

#### Checkboxes

@TabNavigator {
    @Tab("Checkbox") {
        ![A checkbox component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkbox_OrangeInverse.png)        
    }
    @Tab("Checkbox item") {
        ![A checkbox item component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkboxItem_OrangeInverse.png)
    }
}
<!-- Maybe not relevant to display checkbox picker -->

#### Radios

@TabNavigator {
    @Tab("Radio") {
        ![A radio button component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radio_OrangeInverse.png)        
    }
    @Tab("Radio item") {
        ![A radio item component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radioItem_OrangeInverse.png)
    }
}
<!-- Maybe not relevant to display radio picker -->

#### Switches

@TabNavigator {
    @Tab("Switch") {
        ![A switch component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switch_OrangeInverse.png)        
    }
    @Tab("Switch item") {
        ![A switch item component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switchItem_OrangeInverse.png)
    }
}

#### Chips

@TabNavigator {
    @Tab("Filter chip") {
        ![A filter chip component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_filterChip_OrangeInverse.png)        
    }
    @Tab("Suggestion chip") {
        ![A suggestion chip component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_suggestionChip_OrangeInverse.png)
    }
}
<!-- Maybe not relevant to display chip picker -->

### Indicators

#### Badge

![A badge component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_badge_OrangeInverse.png)

#### Tag

![A tag component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_tag_OrangeInverse.png)

### Layouts

<!-- Maybe not relevant to display colored surface -->

#### Dividers

@TabNavigator {
    @Tab("Horizontal divider") {
        ![An horizontal divider component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_horizontalDivider_OrangeInverse.png)
    }
    @Tab("Vertical divider") {
        ![A vertical divider component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_verticalDivider_OrangeInverse.png)
    }
}

### Navigations

#### Link

![A link component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_link_OrangeInverse.png)

## Topics

### Group

- ``OrangeInverseTheme``
