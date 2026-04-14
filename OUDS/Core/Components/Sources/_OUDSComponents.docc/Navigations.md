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


### Toolbars

The toolbars components provide top and bottom navigation bars. They rely on SwiftUI toolbars and expose OUDS styles.
Top toolbars provide a title and optional subtitle, while bottom toolbars focus on actions.

There are different style depending to Liquid Glass (iOS 26+) or not (iOS 18 and older).

#### Top toolbar

@TabNavigator {
    @Tab("Orange (Liquid Glass)") {
        ![A toolbar top component with Liquid Glass in light mode with Orange theme](component_toolBarTop_LiquidGlass_Orange_light)
        ![A toolbar top component with Liquid Glass in dark mode with Orange theme](component_toolBarTop_LiquidGlass_Orange_dark)
    }
    @Tab("Orange Compact (Liquid Glass)") {
        ![A toolbar top component with Liquid Glass in light mode with Orange Compact theme](component_toolBarTop_LiquidGlass_OrangeCompact_light)
        ![A toolbar top component with Liquid Glass in dark mode with Orange Compact theme](component_toolBarTop_LiquidGlass_OrangeCompact_dark)
    }
    @Tab("Sosh (Liquid Glass)") {
        ![A toolbar top component with Liquid Glass in light mode with Sosh theme](component_toolBarTop_LiquidGlass_Sosh_light)
        ![A toolbar top component with Liquid Glass in dark mode with Sosh theme](component_toolBarTop_LiquidGlass_Sosh_dark)
    }
    @Tab("Wireframe (Liquid Glass)") {
        ![A toolbar top component with Liquid Glass in light mode with Wireframe theme](component_toolBarTop_LiquidGlass_Wireframe_light)
        ![A toolbar top component with Liquid Glass in dark mode with Wireframe theme](component_toolBarTop_LiquidGlass_Wireframe_dark)
    }
}

@TabNavigator {
    @Tab("Orange") {
        ![A toolbar top component with Liquid Glass in light mode with Orange theme](component_toolBarTop_Orange_light)
        ![A toolbar top component with Liquid Glass in dark mode with Orange theme](component_toolBarTop_Orange_dark)
    }
    @Tab("Orange Compact") {
        ![A toolbar top component with Liquid Glass in light mode with Orange Compact theme](component_toolBarTop_OrangeCompact_light)
        ![A toolbar top component with Liquid Glass in dark mode with Orange Compact theme](component_toolBarTop_OrangeCompact_dark)
    }
    @Tab("Sosh") {
        ![A toolbar top component with Liquid Glass in light mode with Sosh theme](component_toolBarTop_Sosh_light)
        ![A toolbar top component with Liquid Glass in dark mode with Sosh theme](component_toolBarTop_Sosh_dark)
    }
    @Tab("Wireframe") {
        ![A toolbar top component with Liquid Glass in light mode with Wireframe theme](component_toolBarTop_Wireframe_light)
        ![A toolbar top component with Liquid Glass in dark mode with Wireframe theme](component_toolBarTop_Wireframe_dark)
    }
}

```swift
// The views must be inside a NavigationView or NavigationStack
SomeView()
    .oudsToolBarTop("Title",
                    leadingItems: {
                        OUDSToolBarItem(navigation: .back())
                    },
                    trailingItems: {
                        OUDSToolBarItem(label: "Label") { /* Action to process */ }
                        OUDSToolBarItem(icon: Image(decorative: "some_image"), accessibilityLabel: "Label") { /* Action to process */ }
                    }
    )
```

#### Bottom toolbar

@TabNavigator {
    @Tab("Orange (Liquid Glass)") {
        ![A toolbar bottom component with Liquid Glass in light mode with Orange theme](component_toolBarBottom_LiquidGlass_Orange_light)
        ![A toolbar bottom component with Liquid Glass in dark mode with Orange theme](component_toolBarBottom_LiquidGlass_Orange_dark)
    }
    @Tab("Orange Compact (Liquid Glass)") {
        ![A toolbar bottom component with Liquid Glass in light mode with Orange Compact theme](component_toolBarBottom_LiquidGlass_OrangeCompact_light)
        ![A toolbar bottom component with Liquid Glass in dark mode with Orange Compact theme](component_toolBarBottom_LiquidGlass_OrangeCompact_dark)
    }
    @Tab("Sosh (Liquid Glass)") {
        ![A toolbar bottom component with Liquid Glass in light mode with Sosh theme](component_toolBarBottom_LiquidGlass_Sosh_light)
        ![A toolbar bottom component with Liquid Glass in dark mode with Sosh theme](component_toolBarBottom_LiquidGlass_Sosh_dark)
    }
    @Tab("Wireframe (Liquid Glass)") {
        ![A toolbar bottom component with Liquid Glass in light mode with Wireframe theme](component_toolBarBottom_LiquidGlass_Wireframe_light)
        ![A toolbar bottom component with Liquid Glass in dark mode with Wireframe theme](component_toolBarBottom_LiquidGlass_Wireframe_dark)
    }
}

@TabNavigator {
    @Tab("Orange") {
        ![A toolbar bottom component with Liquid Glass in light mode with Orange theme](component_toolBarBottom_Orange_light)
        ![A toolbar bottom component with Liquid Glass in dark mode with Orange theme](component_toolBarBottom_Orange_dark)
    }
    @Tab("Orange Compact") {
        ![A toolbar bottom component with Liquid Glass in light mode with Orange Compact theme](component_toolBarBottom_OrangeCompact_light)
        ![A toolbar bottom component with Liquid Glass in dark mode with Orange Compact theme](component_toolBarBottom_OrangeCompact_dark)
    }
    @Tab("Sosh") {
        ![A toolbar bottom component with Liquid Glass in light mode with Sosh theme](component_toolBarBottom_Sosh_light)
        ![A toolbar bottom component with Liquid Glass in dark mode with Sosh theme](component_toolBarBottom_Sosh_dark)
    }
    @Tab("Wireframe") {
        ![A toolbar bottom component with Liquid Glass in light mode with Wireframe theme](component_toolBarBottom_Wireframe_light)
        ![A toolbar bottom component with Liquid Glass in dark mode with Wireframe theme](component_toolBarBottom_Wireframe_dark)
    }
}

```swift
SomeView()
    .oudsToolBarBottom(leadingItems: {
        OUDSToolBarItem(label: "Some label") { /* Action to process */ }
    }, trailingItems: {
        OUDSToolBarItem(icon: Image(decorative: "some_image"), accessibilityLabel: "Label") { /* Action to process */ }
    })
```
