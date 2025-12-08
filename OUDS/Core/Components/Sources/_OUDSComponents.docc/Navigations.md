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
        ![A link component in light and dark modes with Orange theme](component_link_Orange)
    }
    @Tab("Orange Business Tools") {
        ![A link component in light and dark modes with Orange Business Tools theme](component_link_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A link component in light and dark modes with Sosh theme](component_link_Sosh)
    }
    @Tab("Wireframe") {
        ![A link component in light and dark modes with Wireframe theme](component_link_Wireframe)
    }
}

The ``OUDSLink`` proposes layout with text only or text with icon.
It also proposes layout to navigate forward or backward.
The link can be displayed in `small` or `default` size.

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift        
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

### Tab bars

@TabNavigator {
    @Tab("Orange (Liquid Glass)") {
        ![A tab bar component with Liquid Glass in light mode with Orange theme](component_tabBar_LiquidGlass_Orange_light)
        ![A tab bar component with Liquid Glass in dark mode with Orange theme](component_tabBar_LiquidGlass_Orange_dark)
    }
    @Tab("Orange Business Tools (Liquid Glass)") {
        ![A tab bar component with Liquid Glass in light mode with Orange Business Tools theme](component_tabBar_LiquidGlass_OrangeBusinessTools_light)
        ![A tab bar component with Liquid Glass in dark mode with Orange Business Tools theme](component_tabBar_LiquidGlass_OrangeBusinessTools_dark)
    }
    @Tab("Sosh (Liquid Glass)") {
        ![A tab bar component with Liquid Glass in light mode with Sosh theme](component_tabBar_LiquidGlass_Sosh_light)
        ![A tab bar component with Liquid Glass in dark mode with Sosh theme](component_tabBar_LiquidGlass_Sosh_dark)
    }
    @Tab("Wireframe (Liquid Glass)") {
        ![A tab bar component with Liquid Glass in light mode with Wireframe theme](component_tabBar_LiquidGlass_Wireframe_light)
        ![A tab bar component with Liquid Glass in dark mode with Wireframe theme](component_tabBar_LiquidGlass_Wireframe_dark)
    }
}

@TabNavigator {
    @Tab("Orange") {
        ![A tab bar component without Liquid Glass in light mode with Orange theme](component_tabBar_Orange_light)
        ![A tab bar component without Liquid Glass in dark mode with Orange theme](component_tabBar_Orange_dark)
    }
    @Tab("Orange Business Tools") {
        ![A tab bar component without Liquid Glass in light mode with Orange Business Tools theme](component_tabBar_OrangeBusinessTools_light)
        ![A tab bar component without Liquid Glass in dark mode with Orange Business Tools theme](component_tabBar_OrangeBusinessTools_dark)
    }
    @Tab("Sosh") {
        ![A tab bar component without Liquid Glass in light mode with Sosh theme](component_tabBar_Sosh_light)
        ![A tab bar component without Liquid Glass in dark mode with Sosh theme](component_tabBar_Sosh_dark)
    }
    @Tab("Wireframe") {
        ![A tab bar component without Liquid Glass in light mode with Wireframe theme](component_tabBar_Wireframe_light)
        ![A tab bar component without Liquid Glass in dark mode with Wireframe theme](component_tabBar_Wireframe_dark)
    }
}

The ``OUDSTabBar`` provides a native SwiftUI `TabView` with use of OUDS effects and styles.
The ``OUDSTabBar`` lets users define their own hierarchy of views associated to tab items.

```swift        
// Use the OUDS tab bar to wrap tab bar items and associated views
OUDSTabBar(selected: 0, count: 3) {
        
    // Add the views with the SwiftUI tab item and labels
    // No need to define colors, everything is done inside OUDSTabBar
    SomeView()
        .tabItem {
            Label("Label 1", image: "image_1")
        }
        .tag(0)
    OtherView()
        .tabItem {
            Label("Label 2", image: "image_2")
        }
        .tag(1)
    LastView()
        .tabItem {
            Label("Label 3", image: "image_3")
        }
        .tag(2)
}
```
