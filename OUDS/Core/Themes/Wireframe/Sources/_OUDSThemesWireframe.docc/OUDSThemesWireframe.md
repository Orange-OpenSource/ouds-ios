# ``OUDSThemesWireframe``

This Wireframe theme is a theme for some specific usages, like for prototyping and design of journeys with non-Orange charted themes.

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Theme version: 1.5.0
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

You cannot derivate the *Wireframe* theme.

## Previews
<!-- Use online images because stored in another Swift Package library and do not want to replicate assets -->

### Actions

![A button component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_button_enabled_strong_Wireframe.png)

### Controls

#### Checkbox

![A checkbox component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkbox_enabled_selected_Wireframe.png)

#### Checkbox item

![A checkbox item component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkbox_item_Wireframe.png)

<!-- Maybe not relevant to display checkbox picker -->

#### Radio

![A radio button component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radio_enabled_selected_Wireframe.png)

#### Radio item

![A radio item component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radioitem_enabled_selected_Wireframe.png)

<!-- Maybe not relevant to display radio picker -->

#### Switch

![A switch component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switch_enabled_selected_Wireframe.png)

#### Switch item

![A switch item component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switchitem_enabled_selected_Wireframe.png)

#### Filter chip

![A filter chip component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_filterchip_text_enabled_Wireframe.png)

#### Suggestion chip

![A suggestion chip component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_suggestionchip_text_icon_enabled_Wireframe.png)

<!-- Maybe not relevant to display chip picker -->

### Indicators

#### Badge

![A badge component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_badge_count_large_accent_Wireframe.png)

#### Tag

![A tag component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_tag_bullet_emphasized_accent_rounded_default_Wireframe.png)

### Layouts

<!-- Maybe not relevant to display colored surface -->

#### Horizontal divider

![An horizontal divider component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_horizontaldivider_Wireframe.png)

#### Vertical divider

![A vertical divider component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_verticaldivider_Wireframe.png)

### Navigations

#### Link

![A link component in light and dark mode with Wireframe theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_link_enabled_default_next_Wireframe.png)

## Topics

### Group

- ``WireframeTheme``
- ``WireframeBrandColorRawTokens``
- ``WireframeBrandFontRawTokens``
