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

The Orange Business Tools theme overrides some tokens from the basic `OUDSTheme` and should be seen as the theme for the Orange Business Tools brand.

## Overview

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Theme version: 1.5.0
```

Some products may have heavy and very rich user interfaces with a lot of components and elements to displays and
with which users can interact. Thus for such products there are specific constraints of spaces and sizes.
That is the reason why this team is created.
This is the Orange Business Tools theme any for some business tools products, and cannot be subclassed.

> Note: This theme is related to Orange theme module to use some raw tokens of colors.

> Note: It contains also colors dedicated to charts.

> Important: The Orange Business Tools theme is read-only: it cannot be suclassed or derivated.

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

This theme embeds and registers the fonts for the Orange Business Tools theme, you just need to use the theme object as is.

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

### Indicators

#### Badge

![A badge component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_badge_OrangeBusinessTools.png)

#### Tag

![A tag component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_tag_OrangeBusinessTools.png)

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
