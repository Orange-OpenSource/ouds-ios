# ``OUDSThemesOrangeInverse``

@Metadata {
    @PageImage(purpose: icon, source: "ic_theme_orangeinverse")
}

This Orange theme is a theme with an inversed color palette for some specific use cases.

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Theme version: 1.5.0
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

You cannot derivate the *Orange inverse* theme.

## Previews
<!-- Use online images because stored in another Swift Package library and do not want to replicate assets -->

### Actions

![A button component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_button_enabled_strong_OrangeInverse.png)

### Controls

#### Checkbox

![A checkbox component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkbox_enabled_selected_OrangeInverse.png)

#### Checkbox item

![A checkbox item component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkbox_item_OrangeInverse.png)

<!-- Maybe not relevant to display checkbox picker -->

#### Radio

![A radio button component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radio_enabled_selected_OrangeInverse.png)

#### Radio item

![A radio item component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radioitem_enabled_selected_OrangeInverse.png)

<!-- Maybe not relevant to display radio picker -->

#### Switch

![A switch component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switch_enabled_selected_OrangeInverse.png)

#### Switch item

![A switch item component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switchitem_enabled_selected_OrangeInverse.png)

#### Filter chip

![A filter chip component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_filterchip_text_enabled_OrangeInverse.png)

#### Suggestion chip

![A suggestion chip component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_suggestionchip_text_icon_enabled_OrangeInverse.png)

<!-- Maybe not relevant to display chip picker -->

### Indicators

#### Badge

![A badge component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_badge_count_large_accent_OrangeInverse.png)

#### Tag

![A tag component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_tag_bullet_emphasized_accent_rounded_default_OrangeInverse.png)

### Layouts

<!-- Maybe not relevant to display colored surface -->

#### Horizontal divider

![An horizontal divider component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_horizontaldivider_OrangeInverse.png)

#### Vertical divider

![A vertical divider component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_verticaldivider_OrangeInverse.png)

### Navigations

#### Link

![A link component in light and dark mode with Orange Inverse theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_link_enabled_default_next_OrangeInverse.png)

## Topics

### Group

- ``OrangeInverseTheme``
