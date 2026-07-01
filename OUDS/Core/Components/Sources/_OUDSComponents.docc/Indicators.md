# Indicators

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **indicators**.

## Overview

### Badge

The badge is a small UI element used to highlight status, notifications, or categorization within an interface.

#### Badge Count

@TabNavigator {
    @Tab("Orange") {
        ![A count badge component in light and dark modes with Orange theme](component_badge_count_Orange)
    }
    @Tab("Orange Compact") {
        ![A count badge component in light and dark modes with Orange Compact theme](component_badge_count_OrangeCompact)
    }
    @Tab("Sosh") {
        ![A count badge component in light and dark modes with Sosh theme](component_badge_count_Sosh)
    }
    @Tab("Wireframe") {
        ![A count badge component in light and dark modes with Wireframe theme](component_badge_count_Wireframe)
    }
}
 
An ``OUDSBadgeCount`` displays an integer value.

```swift            
// Neutral badge in medium size with an image
OUDSBadgeIcon(status: .neutral(icon: Image(decorative: "ic_heart")), accessibilityLabel: "Like", size: .medium)
```

#### Badge Icon

@TabNavigator {
    @Tab("Orange") {
        ![An icon badge component in light and dark modes with Orange theme](component_badge_icon_Orange)
    }
    @Tab("Orange Compact") {
        ![An icon badge component in light and dark modes with Orange Compact theme](component_badge_icon_OrangeCompact)
    }
    @Tab("Sosh") {
        ![An icon badge component in light and dark modes with Sosh theme](component_badge_icon_Sosh)
    }
    @Tab("Wireframe") {
        ![An icon badge component in light and dark modes with Wireframe theme](component_badge_icon_Wireframe)
    }
}

An ``OUDSBadgeIcon`` displays only an icon and has specific colors.

```swift            
// Neutral badge in medium size with an image
OUDSBadgeIcon(status: .neutral(icon: Image(decorative: "ic_heart")), accessibilityLabel: "Like", size: .medium)
```

#### Badge Standard

@TabNavigator {
    @Tab("Orange") {
        ![A standard badge component in light and dark modes with Orange theme](component_badge_standard_Orange)
    }
    @Tab("Orange Compact") {
        ![A standard badge component in light and dark modes with Orange Compact theme](component_badge_standard_OrangeCompact)
    }
    @Tab("Sosh") {
        ![A standard badge component in light and dark modes with Sosh theme](component_badge_standard_Sosh)
    }
    @Tab("Wireframe") {
        ![A standard badge component in light and dark modes with Wireframe theme](component_badge_standard_Wireframe)
    }
}

An ``OUDSBadgeStandard`` is an empty badge like a coloured pastille.

```swift            
// Info badge in medium size without information
OUDSBadgeStandard(status: .info, size: .medium)
```

### Tag

@TabNavigator {
    @Tab("Orange") {
        ![A tag component in light and dark modes with Orange theme](component_tag_Orange)
    }
    @Tab("Orange Compact") {
        ![A tag component in light and dark modes with Orange Compact theme](component_tag_OrangeCompact)
    }
    @Tab("Sosh") {
        ![A tag component in light and dark modes with Sosh theme](component_tag_Sosh)
    }
    @Tab("Wireframe") {
        ![A tag component in light and dark modes with Wireframe theme](component_tag_Wireframe)
    }
}

An ``OUDSTag`` is a small element that shows short information like a label, keyword, or category. It helps users quickly find, group, or understand content.

```swift            
// Text only with neutral status, for emphasized appearance with rounded shape in default size
OUDSTag(label: "Label",  status: .neutral(), appearance: .emphasized, shape: .rounded, size: .default)
// Or also
OUDSTag(label: "Label")
            
// Tag with negative status with bullet
OUDSTag(label: "Label", status: .negative(leading: .bullet)
            
// Tag with neutral status with a custom decorative icon
OUDSTag(label: "Label", status: .neutral(icon: OUDSImage(asset: Image(decorative: "ic_heart"))))
// Flip the icon for RTL layouts using OUDSImage.flipped
OUDSTag(label: "Label", status: .neutral(icon: OUDSImage(asset: Image(decorative: "ic_heart"), flipped: true)))

// Tag with neutral status with a raw image (not tinted)
OUDSTag(label: "Label", status: .neutral(icon: OUDSImage(asset: Image("ic_brand"), renderingMode: .original)))

// Tag with accent status with a raw image (not tinted)
OUDSTag(label: "Label", status: .accent(icon: OUDSImage(asset: Image("ic_brand"), renderingMode: .original)))
            
// Text with neutral status with bullet
OUDSTag(label: "Label", status: .neutral(bullet: true))
            
// Tag with loader with rounded shape in small size
OUDSTag(loadingLabel: "Label", shape: .rounded, size: .small)
```

### Input Tag

@TabNavigator {
    @Tab("Orange") {
        ![An input tag component in light and dark modes with Orange theme](component_inputTag_Orange)
    }
    @Tab("Orange Compact") {
        ![An input tag component in light and dark modes with Orange Compact theme](component_inputTag_OrangeCompact)
    }
    @Tab("Sosh") {
        ![An input tag component in light and dark modes with Sosh theme](component_inputTag_Sosh)
    }
    @Tab("Wireframe") {
        ![An input tag component in light and dark modes with Wireframe theme](component_inputTag_Wireframe)
    }
}

An ``OUDSInputTag`` is a small element that shows short information like a label, keyword, or category, which can be removed or changed on tap.

```swift    
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
