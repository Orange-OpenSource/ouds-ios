# Navigations

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **navigation**.

## Overview

### Links

@TabNavigator {
    @Tab("Orange") {
        ![A link component in light and dark mode with Orange theme](component_link_Orange)
    }
    @Tab("Orange Business Tools") {
        ![A link component in light and dark mode with Orange Business Tools theme](component_link_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A link component in light and dark mode with Sosh theme](component_link_Sosh)
    }
    @Tab("Wireframe") {
        ![A link component in light and dark mode with Wireframe theme](component_link_Wireframe)
    }
}

The ``OUDSLink`` proposes layout with text only or text with icon.
It also proposes layout to navigate forward or backward.
The link can be displayed in `small` or `default` size.

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
            import OUDSSwiftUI
        
            // Text only in small size
            OUDSLink(text: "Feedback", size: .small) { /* the action to process */ }

            // Text and icon in default size
            OUDSLink(text: "Feedback", icon: Image("ic_heart"), size: .default) { /* the action to process */ }

            // Navigate to previous page with link in a default size
            OUDSLink(text: "Back", indicator: .back, size: .default) { /* the action to process */ }
        ```
    }
    @Tab("UIKit (experimental)") {
        ```swift
            import OUDSSwiftUI
            import OUDSComponentsUIKit
        
            // Text only in small size
            OUDSUIKit.createLink(text: "Feedback", size: .small, action: { /* the action to process */ })

            // Text and icon in default size
            OUDSUIKit.createLink(text: "Feedback", icon: Image("ic_heart"), size: .default, action: { /* the action to process */ })

            // Navigate to previous page with link in a default size
            OUDSUIKit.createLink(text: "Back", indicator: .back, size: .default, action: { /* the action to process */ })
        ```

    }
}
