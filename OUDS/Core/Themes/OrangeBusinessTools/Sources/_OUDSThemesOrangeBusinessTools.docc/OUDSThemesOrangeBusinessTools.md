# ``OUDSThemesOrangeBusinessTools``

@Metadata {
    @PageImage(purpose: icon, source: "ic_theme_orangebusinesstools")
}

The Orange Business Tools theme overrides some tokens from the basic `OUDSTheme` and should be seen as the theme for the Orange Business Tools brand.

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Theme version: 1.5.0
```

## Overview

This is the Orange Business Tools theme any for some business tools products, and cannot be subclassed.
This theme is related to `OrangeTheme` module to use some raw tokens of colors.

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

This theme embeds and registers the fonts for the Orange Business Tools theme, you just need to use the theme object as is.

## How to enrich the theme

You cannot derivate the *Orange Business Tools* theme.

## Previews
<!-- Use online images because stored in another Swift Package library and do not want to replicate assets -->

### Actions

![A button component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_button_enabled_strong_OrangeBusinessTools.png)

### Controls

#### Checkbox

![A checkbox component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkbox_enabled_selected_OrangeBusinessTools.png)

#### Checkbox item

![A checkbox item component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkbox_item_OrangeBusinessTools.png)

<!-- Maybe not relevant to display checkbox picker -->

#### Radio

![A radio button component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radio_enabled_selected_OrangeBusinessTools.png)

#### Radio item

![A radio item component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radioitem_enabled_selected_OrangeBusinessTools.png)

<!-- Maybe not relevant to display radio picker -->

#### Switch

![A switch component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switch_enabled_selected_OrangeBusinessTools.png)

#### Switch item

![A switch item component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switchitem_enabled_selected_OrangeBusinessTools.png)

#### Filter chip

![A filter chip component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_filterchip_text_enabled_OrangeBusinessTools.png)

#### Suggestion chip

![A suggestion chip component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_suggestionchip_text_icon_enabled_OrangeBusinessTools.png)

<!-- Maybe not relevant to display chip picker -->

### Indicators

#### Badge

![A badge component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_badge_count_large_accent_OrangeBusinessTools.png)

#### Tag

![A tag component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_tag_bullet_emphasized_accent_rounded_default_OrangeBusinessTools.png)

### Layouts

<!-- Maybe not relevant to display colored surface -->

#### Horizontal divider

![An horizontal divider component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_horizontaldivider_OrangeBusinessTools.png)

#### Vertical divider

![A vertical divider component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_verticaldivider_OrangeBusinessTools.png)

### Navigations

#### Link

![A link component in light and dark mode with Orange Business Tools theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_link_enabled_default_next_OrangeBusinessTools.png)

## Topics

### Group

- ``OrangeBusinessToolsTheme``
