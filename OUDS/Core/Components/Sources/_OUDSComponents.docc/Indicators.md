# Indicators

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **indicators**.

## Overview

### Badge

@TabNavigator {
    @Tab("Orange") {
        ![A badge component in light and dark mode with Orange theme](component_badge_Orange)
    }
    @Tab("Orange Business Tools") {
        ![A badge component in light and dark mode with Orange Business Tools theme](component_badge_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A badge component in light and dark mode with Sosh theme](component_badge_Sosh)
    }
    @Tab("Wireframe") {
        ![A badge component in light and dark mode with Wireframe theme](component_badge_Wireframe)
    }
}

The ``OUDSBadge`` is a small UI element used to highlight status, notifications, or categorization within an interface. It is often displayed as a label or indicator with a distinct background color and text.

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
            import OUDSSwiftUI
            
            // Neutral badge in medium size without information
            OUDSBadge(status: .neutral, size: .medium)

            // Negative badge in medium size with count information
            OUDSBadge(count: 1, status: .negative, size: .medium)

            // Info badge in medium size with icon information
            OUDSBadge(icon: Image("ic_heart"), status: .info, size: .medium)
        ```
    }
    @Tab("UIKit (experimental)") {
        ```swift
            import OUDSSwiftUI
            import OUDSComponentsUIKit
            
            // Neutral badge in medium size without information
            OUDSUIKit.createBadge(status: .neutral, size: .medium)

            // Negative badge in medium size with count information
            OUOUDSUIKit.createBadgeDSBadge(count: 1, status: .negative, size: .medium)

            // Info badge in medium size with icon information
            OUDSUIKit.createBadge(icon: Image("ic_heart"), status: .info, size: .medium)
        ```
    }
}

### Tag

@TabNavigator {
    @Tab("Orange") {
        ![A tag component in light and dark mode with Orange theme](component_tag_Orange)
    }
    @Tab("Orange Business Tools") {
        ![A tag component in light and dark mode with Orange Business Tools theme](component_tag_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A tag component in light and dark mode with Sosh theme](component_tag_Sosh)
    }
    @Tab("Wireframe") {
        ![A tag component in light and dark mode with Wireframe theme](component_tag_Wireframe)
    }
}

An ``OUDSTag`` is a small element that shows short information like a label, keyword, or category. It helps users quickly find, group, or understand content.

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
        import OUDSSwiftUI
            
        // Text only with neutral status, for emphasized appearance with rounded shape in default size
        OUDSTag(label: "Label",  status: .neutral(), appearance: .emphasized, shape: .rounded, size: .default)
        // Or also
        OUDSTag(label: "Label")
            
        // Tag with negative status with bullet
        OUDSTag(label: "Label", status: .negative(leading: .bullet)
            
        // Tag with neutral status with a custom decorative icon
        OUDSTag(label: "Label", status: .neutral(icon: Image(decorative: "ic_heart")))
        // If your layout is in RTL mode but your tag has an icon with another meaning because of bad orientation,
        // you can flip the icon
        OUDSTag(label: "Label", status: .neutral(icon: Image(decorative: "ic_heart"), flipIcon: true))
            
        // Text with neutral status with bullet
        OUDSTag(label: "Label", status: .neutral(bullet: true))
            
        // Tag with loader with rounded shape in small size
        OUDSTag(loadingLabel: "Label", shape: .rounded, size: .small)
        ```
    }
    @Tab("UIKit (experimental)") {
        ```swift
        import OUDSSwiftUI
        import OUDSComponentsUIKit
            
        // Text only with neutral status, for emphasized hierarchy with rounded shape in default size            
        OUDSUIKit.createTag(label: "label",
                            status: .neutral,
                            appearance: .emphasized,
                            shape: .rounded,
                            size: .default,
        // Or also
        OUDSUIKit.createTag(label: "label")
            
        // ext with bullet and negative status, using default hierarchy (emphasized), shape (rounded) and size (default)
            OUDSUIKit.createTag(label: "Label", status: .negative(leading: .bullet)

        // Tag with label and icon with image
        OUDSUIKit.createTag((label: "Label", status: .neutral(icon: Image(decorative: "ic_heart")))

        // Tag with label and loader
        OUDSUIKit.createTag(loadingLabel: "Label", shape: .rounded, size: .small)
        ```
    }
}

### Input Tag

@TabNavigator {
    @Tab("Orange") {
        ![An input tag component in light and dark mode with Orange theme](component_inputTag_Orange)
    }
    @Tab("Orange Business Tools") {
        ![An input tag component in light and dark mode with Orange Business Tools theme](component_inputTag_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![An input tag component in light and dark mode with Sosh theme](component_inputTag_Sosh)
    }
    @Tab("Wireframe") {
        ![An input tag component in light and dark mode with Wireframe theme](component_inputTag_Wireframe)
    }
}

An ``OUDSInputTag`` is a small element that shows short information like a label, keyword, or category, which can be removed or changed on tap.

```swift
import OUDSSwiftUI
    
// Create an input tag
OUDSInputTag("Label") {
    // Do something, usually remove itself from a list
}
    
// Show in a list and remove when clicked
var names: [String] = [ "Foo", "Bar", "Wizz" ]
    
ForEach(names, id: \.self) { name in
    OUDSInputTag(label: name) {
        if let index = names.firstIndex(of: name) {
            names.remove(at: index)
        }
    }
}
```
