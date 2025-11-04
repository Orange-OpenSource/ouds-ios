# ``OUDSThemesSosh``

@Metadata {
    @PageImage(purpose: icon, source: "ic_theme_sosh")
    @DisplayName("Theme Sosh", style: symbol)
    @TitleHeading("Library")
}
<!-- 
Do not add @PageImage(purpose: card) because not managed for landing page of online doc.
See https://github.com/swiftlang/swift-docc/issues/1283
-->

The Sosh theme is the theme dedicated to the Sosh brand only.

## Overview

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Theme version: 2.1.0
```

This is the Sosh theme any Sosh product must use, and cannot be subclassed.
It embeds also in its target the Sosh brand colors which are not shared nor exposed in lower level targets or outside any module not depending to it.
In other words, this ``SoshTheme`` is based on the abstract `OUDSTheme`, uses all the *Orange Unified Design System* kit and brings the Sosh brand colors and assets.

> Tip: This theme embeds and registers the fonts for the Sosh theme, you just need to use the theme object as is.

> Important: The Sosh theme does not embed colors for charts yet and is read-only: it cannot be subclassed or derivated

## How to use the theme

You can use ``SoshTheme`` directly. To use the ``SoshTheme`` without further modifications, you will have to use the `OUDSThemeableView` for your root view and give it an instance of ``SoshTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you may use only as instance as singleton and not store any properties.

```swift
import OUDSSwiftUI
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

## How to tune the theme

You cannot tune the Sosh theme.

## Typography

The Sosh theme uses its Sosh font and must not use others.

## How to enrich the theme

You cannot derivate the Sosh theme.

## How it looks like
<!-- Use online images because stored in another Swift Package library and do not want to replicate assets -->

### Actions

![A button component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_button_Sosh.png)

### Controls

#### Checkboxes

@TabNavigator {
    @Tab("Checkbox") {
        ![A checkbox component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkbox_Sosh.png)        
    }
    @Tab("Checkbox item") {
        ![A checkbox item component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkboxItem_Sosh.png)
    }
}
<!-- Maybe not relevant to display checkbox picker -->

#### Radios

@TabNavigator {
    @Tab("Radio") {
        ![A radio button component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radio_Sosh.png)        
    }
    @Tab("Radio item") {
        ![A radio item component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radioItem_Sosh.png)
    }
}
<!-- Maybe not relevant to display radio picker -->

#### Switches

@TabNavigator {
    @Tab("Switch") {
        ![A switch component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switch_Sosh.png)        
    }
    @Tab("Switch item") {
        ![A switch item component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switchItem_Sosh.png)
    }
}

#### Chips

@TabNavigator {
    @Tab("Filter chip") {
        ![A filter chip component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_filterChip_Sosh.png)        
    }
    @Tab("Suggestion chip") {
        ![A suggestion chip component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_suggestionChip_Sosh.png)
    }
}
<!-- Maybe not relevant to display chip picker -->

#### Text inputs

![A text input component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_textInput_Sosh.png)

### Indicators

#### Badge

![A badge component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_badge_Sosh.png)

#### Tags

@TabNavigator {
    @Tab("Tag") {
        ![A tag component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_tag_Sosh.png)        
    }
    @Tab("Input tag") {
        ![An input tag component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_inputTag_Sosh.png)
    }
}

### Layouts

<!-- Maybe not relevant to display colored surface -->

#### Dividers

@TabNavigator {
    @Tab("Horizontal divider") {
        ![An horizontal divider component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_horizontalDivider_Sosh.png)
    }
    @Tab("Vertical divider") {
        ![A vertical divider component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_verticalDivider_Sosh.png)
    }
}

### Navigations

#### Link

![A link component in light and dark mode with Sosh theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_link_Sosh.png)

## Topics

### Group

- ``SoshTheme``
- ``SoshBrandColorRawTokens``
- ``SoshBrandFontRawTokens``
