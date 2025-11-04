# ``OUDSThemesOrangeBusinessTools``

@Metadata {
    @PageImage(purpose: icon, source: "ic_theme_orangebusinesstools")
    @DisplayName("Theme Orange Business Tools", style: symbol)
    @TitleHeading("Library")
}
<!-- 
Do not add @PageImage(purpose: card) because not managed for landing page of online doc.
See https://github.com/swiftlang/swift-docc/issues/1283
-->

The Orange Business Tools theme is dedicated to applications with strong dimensions constraints.

## Overview

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Theme version: 2.1.0
```

Some products may have heavy and very rich user interfaces with a lot of components and elements to display and
with which users can interact. Thus for such products there are specific constraints of dimensions, spaces and sizes.
That is the reason why this theme exists.

> Note: This theme is related to Orange theme module to use some raw tokens of colors.

> Note: It contains also colors dedicated to charts.

> Important: The Orange Business Tools theme is read-only: it cannot be suclassed or derivated.

## How to use the theme

You can use ``OrangeBusinessToolsTheme`` directly. To use the ``OrangeBusinessToolsTheme`` without further modifications, you will have to use the `OUDSThemeableView` for your root view and give it an instance of ``OrangeBusinessToolsTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you may use only as instance as singleton and not store any properties.

```swift
import OUDSSwiftUI
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
import OUDSSwiftUI
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

This theme embeds and registers the fonts for the `Orange Business Tools` theme, you just need to use the theme object as is.

## Tunable theme

The theme can be tuned with `Tuning` object to give at init.
Some tuning object exists.

```swift
// Define your theme tuning
let tuning = Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true)

// Apply it to your theme
let theme = OrangeBusinessToolsTheme(tuning: tuning)
// Or in one line
let theme = OrangeBusinessToolsTheme(tuning: Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true))

// Or apply predefined tunings
let orangeFranceTheme = OrangeBusinessToolsTheme(tuning: Tuning.OrangeFrance)
let orangeBusinessTheme = OrangeBusinessToolsTheme(tuning: Tuning.OrangeBusiness)
let maxitTheme = OrangeBusinessToolsTheme(tuning: Tuning.MaxIt)
```

A default tuning is applied for this theme:

Tunable elements               | Default values                          
------------------------------ | ------------------------------------- 
rounded corners buttons        | ❌ false  
rounded corners text inputs    | ✅ true

## Typography

### Helvetica Neue

The Orange theme uses *Helvetica Neue* typography. This font is already available through iOS.
It is possible to use another typography, by the ones recommended are the ones defined in tokens.

```swift
// The three following instanciations are the same
let theme = OrangeBusinessToolsTheme()
let theme = OrangeBusinessToolsTheme(family: OrangeBrandFontRawTokens.familyBrandDefault)
let theme = OrangeBusinessToolsTheme(family: "HelveticaNeue") // Which is PostScript name of the font

// This instanciation won't work as the font family is not recognised
let theme = OrangeBusinessToolsTheme(family: "Helvetica Neue")
```

### Other fonts

However if, in very particular cases, you need to use another font family, you can try using it by changing the value in the theme init.

```swift
// Supposing you want to use another font:
// - like the Luciole font (https://luciole-vision.com/) (very good for accessibility)
// - or the Roboto font (https://fonts.google.com/specimen/Roboto) (to support cyrillic alphabet)
// - or hevletica Neue Arabic (for arabic alphabet Helvetica flavoured)
// 1. Add the TTF files in your project
    
// 2. Register the fonts with, for example, the function below
private func registerFonts() {
    let fonts = Bundle.main.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
    fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
}

// 3. At theme init, given the font family name, add it to the theme.
// Keep in mind that it might not work because PostScript name is used combining
// font family name and font weight.
// For Luciole font, use "Luciole", for Roboto font, use "Roboto", etc.
let theme = OrangeBusinessToolsTheme(family: theFontFamilyNameInPostScript)
```

> Note: Specific rules to compute PostScript value are defined in `PostScriptFontNamesMap.swift`

> Tip: If your font family is not well managed, you can [send an issue and explain your needs](https://github.com/Orange-OpenSource/ouds-ios/issues)

> Important: For production products and official tools, *Helvetica Neue* is preferred and should be used

> Tip: If for your needs Helvetica Neue is not relevant (because does not support cyrilic, or not enough accessible, or not aligned with your needs), [feel free to open a discussion](https://github.com/Orange-OpenSource/ouds-ios/discussions)

> Caution: For ecodesign principles you should challenge the use of fonts because they can increase the needed storage of your apps

> Important: Always check the license and terms of uses of the font your are using (distribution, hsoting, usage for comemrcial things, etc.)

## How to enrich the theme

You cannot derivate the *Orange Business Tools* theme.

## How it looks like
<!-- Use online images because stored in another Swift Package library and do not want to replicate assets -->

### Actions

![A button component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_button_OrangeBusinessTools.png)

### Controls

#### Checkboxes

@TabNavigator {
    @Tab("Checkbox") {
        ![A checkbox component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkbox_OrangeBusinessTools.png)        
    }
    @Tab("Checkbox item") {
        ![A checkbox item component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkboxItem_OrangeBusinessTools.png)
    }
}
<!-- Maybe not relevant to display checkbox picker -->

#### Radios

@TabNavigator {
    @Tab("Radio") {
        ![A radio button component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radio_OrangeBusinessTools.png)        
    }
    @Tab("Radio item") {
        ![A radio item component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radioItem_OrangeBusinessTools.png)
    }
}
<!-- Maybe not relevant to display radio picker -->

#### Switches

@TabNavigator {
    @Tab("Switch") {
        ![A switch component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switch_OrangeBusinessTools.png)        
    }
    @Tab("Switch item") {
        ![A switch item component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switchItem_OrangeBusinessTools.png)
    }
}

#### Chips

@TabNavigator {
    @Tab("Filter chip") {
        ![A filter chip component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_filterChip_OrangeBusinessTools.png)        
    }
    @Tab("Suggestion chip") {
        ![A suggestion chip component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_suggestionChip_OrangeBusinessTools.png)
    }
}
<!-- Maybe not relevant to display chip picker -->

#### Text inputs

![A text input component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_textInput_OrangeBusinessTools.png)

### Indicators

#### Badge

![A badge component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_badge_OrangeBusinessTools.png)

#### Tags

@TabNavigator {
    @Tab("Tag") {
        ![A tag component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_tag_OrangeBusinessTools.png)        
    }
    @Tab("Input tag") {
        ![An input tag component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_inputTag_OrangeBusinessTools.png)
    }
}

### Layouts

<!-- Maybe not relevant to display colored surface -->

#### Dividers

@TabNavigator {
    @Tab("Horizontal divider") {
        ![An horizontal divider component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_horizontalDivider_OrangeBusinessTools.png)
    }
    @Tab("Vertical divider") {
        ![A vertical divider component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_verticalDivider_OrangeBusinessTools.png)
    }
}

### Navigations

#### Link

![A link component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_link_OrangeBusinessTools.png)

## Topics

### Group

- ``OrangeBusinessToolsTheme``
