# Actions

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **actions**.

## Overview

### Buttons

@TabNavigator {
    @Tab("Orange") {
        ![A button component in light and dark mode with Orange theme](component_button_Orange)
    }
    @Tab("Orange Business Tools") {
        ![A button component in light and dark mode with Orange Business Tools theme](component_button_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A button component in light and dark mode with Sosh theme](component_button_Sosh)
    }
    @Tab("Wireframe") {
        ![A button component in light and dark mode with Wireframe theme](component_button_Wireframe)
    }
}

The ``OUDSButton`` proposes layout with text only, icon only or text and icon. 
Four hierarchies are proposed for all layouts: *default*, *strong*, *minimal* and *negative*.
Two style are available: *default* and *loading*. 
If button is placed on colored surface using `OUDSColoredSurface`, the default colors (content, background and border) are automatically adjusted to switch to monochrom.
A button with `OUDSButton.Appearance.Negative` appearance is not allowed as a direct or indirect child of an `OUDSColoredSurface`.

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
        // Icon only with default appearance
        OUDSButton(icon: Image("ic_heart"), accessibilityLabel: "Like", appearance: .default) { /* the action to process */ }

        // Text only with negative appearance
        OUDSButton(text: "Delete", appearance: .negative) {}
        ```
    }
    @Tab("UIKit (experimental)") {
        ```swift
        import OUDSComponentsUIKit
            
        OUDSUIKit.createButton(icon: Image("ic_heart"), // Image here is from SwiftUI
                               accessibilityLabel: "Like",
                               appearance: .default,
                               action: {})
                                          
        OUDSUIKit.createButton(text: "Delete",
                               appearance: .negative,
                               action: {})
        ```
    }
}

For accessibility reasons, if the user in the system settings toggles the option to reduce the animations, the loading indicator will be frozen to be more comfortable for the user.

For ecodesign reasons, if the user toggles the low power mode, the loading indicator will be frozen to prevent the CPU to work and waste energy.
