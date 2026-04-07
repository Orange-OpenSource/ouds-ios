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
    @Tab("Orange Compact") {
        ![A link component in light and dark modes with Orange Compact theme](component_link_OrangeCompact)
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

```swift        
// Text only in small size
OUDSLink(text: "Feedback", size: .small) { /* the action to process */ }

// Text and icon in default size
OUDSLink(text: "Feedback", icon: Image("ic_heart"), size: .default) { /* the action to process */ }

// Navigate to previous page with link in a default size
OUDSLink(text: "Back", indicator: .back, size: .default) { /* the action to process */ }
```

### Tab bars

@TabNavigator {
    @Tab("Orange (Liquid Glass)") {
        ![A tab bar component with Liquid Glass in light mode with Orange theme](component_tabBar_LiquidGlass_Orange_light)
        ![A tab bar component with Liquid Glass in dark mode with Orange theme](component_tabBar_LiquidGlass_Orange_dark)
    }
    @Tab("Orange Compact (Liquid Glass)") {
        ![A tab bar component with Liquid Glass in light mode with Orange Compact theme](component_tabBar_LiquidGlass_OrangeCompact_light)
        ![A tab bar component with Liquid Glass in dark mode with Orange Compact theme](component_tabBar_LiquidGlass_OrangeCompact_dark)
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
    @Tab("Orange Compact") {
        ![A tab bar component without Liquid Glass in light mode with Orange Compact theme](component_tabBar_OrangeCompact_light)
        ![A tab bar component without Liquid Glass in dark mode with Orange Compact theme](component_tabBar_OrangeCompact_dark)
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

### ToolBars

The toolBar components provide top and bottom navigation bars. They rely on SwiftUI toolBars and expose OUDS styles.
Top toolBars provide a title and optional subtitle, while bottom toolBars focus on actions.

#### Liquid Glass (iOS 26+)

- Items are rendered with the Liquid Glass appearance provided by the system.
- Trailing items (top toolBar) and all bottom toolBar items use the accent background token.
- Title, subtitle, and items use the `contentDefault` color token.

#### Without Liquid Glass (iOS < 26)

- ToolBars use a regular blur effect and the bar translucent background token.
- Items keep the `contentDefault` foreground color without background styling.

@TabNavigator {
    @Tab("Orange (Liquid Glass)") {
        ![A top toolBar component with Liquid Glass in light mode with Orange theme](component_toolBarTop_LiquidGlass_Orange_light)
        ![A top toolBar component with Liquid Glass in dark mode with Orange theme](component_toolBarTop_LiquidGlass_Orange_dark)
        ![A bottom toolBar component with Liquid Glass in light mode with Orange theme](component_toolBarBottom_LiquidGlass_Orange_light)
        ![A bottom toolBar component with Liquid Glass in dark mode with Orange theme](component_toolBarBottom_LiquidGlass_Orange_dark)
    }
}

@TabNavigator {
    @Tab("Orange") {
        ![A top toolBar component without Liquid Glass in light mode with Orange theme](component_toolBarTop_Orange_light)
        ![A top toolBar component without Liquid Glass in dark mode with Orange theme](component_toolBarTop_Orange_dark)
        ![A bottom toolBar component without Liquid Glass in light mode with Orange theme](component_toolBarBottom_Orange_light)
        ![A bottom toolBar component without Liquid Glass in dark mode with Orange theme](component_toolBarBottom_Orange_dark)
    }
}

```swift
SomerView()
    .oudsToolBarTop("Top app bar") {
        OUDSToolBarItem(navigation: .back, accessibilityLabel: "Back") {
            // Handle back
        }
    } trailingItems: {
        OUDSToolBarItem(action: .icon(asset: Image("ic_theme"), accessibilityLabel: "Theme selection") {
            // change theme action
        }
        OUDSToolBarItem(action: .icon(asset: Image("ic_theme_light"), accessibilityLabel: Color scheme selection) {
            // change color scheme action
        }
    }

SomerView()
    .oudsToolBarBottom {
        OUDSToolBarItem(icon: Image("ic_theme"), accessibilityLabel: "Theme selection") {
        }
    } trailingItems: {
        OUDSToolBarItem(icon: Image("ic_theme_light"), accessibilityLabel: Color scheme selection) {
        }
    }
```
