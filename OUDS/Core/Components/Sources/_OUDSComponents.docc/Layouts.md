# Layouts

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **layouts**.

## Overview

### Colored Surface

@TabNavigator {
    @Tab("Orange") {
        ![A colored surface with text, button and link in light and dark mode with Orange theme](component_coloredSurface_Orange)
    }
    @Tab("Orange Inverse") {
        ![A colored surface with text, button and link in light and dark mode with Orange Inverse theme](component_coloredSurface_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![A colored surface with text, button and link in light and dark mode with Orange Business Tools theme](component_coloredSurface_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![A colored surface with text, button and link in light and dark mode with Sosh theme](component_coloredSurface_Sosh)
    }
    @Tab("Wireframe") {
        ![A colored surface with text, button and link in light and dark mode with Wireframe theme](component_coloredSurface_Wireframe)
    }
}

Colored backgrounds use surface colors to maximize the contrast with content. 
The colors of several OUDS components (for instance ``OUDSButton`` or ``OUDSLink``) are automatically adjusted if they are placed on ``OUDSColoredSurface``.
To do so, some tokens associated with these specific colors can be customized and are identified with the *Mono* suffix (for instance *buttonColorBgDefaultEnabledMono* of *OrangeThemeButtonComponentTokensProvider*).

#### How it works

According to the color, the `OUDSColoredSurface` component adds in SwiftUI environment two flags:
- `oudsUseMonochrome`: to inform a component that needs to use mono version of tokens 
- `oudsOnColoredSurface`: to inform a component it is placed on colored surface even if the mono is off 

#### How to use

```swift
    // The folowing view has a colored background "modeOnStatusPositiveEmphasized" with
    // - a text with the color adapted according to the adjusted colorScheme      
    // - a button that uses the mono version of tokens

    // As view
    OUDSColoredSurface(color: theme.colorModes.modeOnStatusPositiveEmphasized) {
        VStack {
            Text("Status Positive Emphasized")
            .oudsForegroundColor(theme.colors.colorContentDefault)

            OUDSButton(text: "Button") {}
        }
    }

    // As view modifier

    VStack {
        Text("Status Positive Emphasized")
        .oudsForegroundColor(theme.colors.colorContentDefault)

        OUDSButton(text: "Button") {}
    }
    .oudsColoredSurface(theme.colorModes.modeOnStatusPositiveEmphasized)
```

#### Debuging contrast ratios

Some countries set up new laws so as to force companies to have a better accessibility of their digital services.
This is for example the case for France with the [Référentiel Général d'Amélioration de l'Accessibilité](https://accessibilite.numerique.gouv.fr/), also named "RGAA".

The WCAG specifications, for AA level, defines a contrast ratio of 4.5:1 for textual elements (i.e. texts), and 3:1 for non-textual elements (i.e. link's chevron).
However it is highly recommended for mobile devices to reach AAA level because of the screen sizes and luminosity issues, i.e. 7:1 for texts and 4.5:1 for non-textual elements.

Some components like ``OUDSButton`` or ``OUDSLink`` can be used on ``OUDSColoredSurface`` ; thus in that case we can know the surface color for a given component on it, and compute the contrast ratio, and in the end display or not warnings.

To do that, some steps must be followed in your component implementation:
- Rise the flag to allow debugging (e.g. i #DEBUG mode)
- Get the environement variable defined by the colored surface containing the applied color
- In the component implementation, add a line of code comparing the color to test and that surface
- Then keep an eye on your logs ; warnings will be added there if WCAG 2.1 3:1, 4.5:1 or 7:1 ratios are not reached, depending to the methods you call
 
```swift
// Rise the flag
#if DEBUG
OUDSWCAG21Ratios.oudsDebugWCAG21Colors = true
#endif

// Supposing we are in your component View / ViewModifer struct

// Get the applied surface color
@Environment(\.oudsSurfaceColor) var surfaceColor

// In the function defining the color to apply, add the line below
// where colorTokenToApply is the color to apply from a theme:

// Non-textual components, in AA
OUDSWCAG21Ratios.debugContrastRatio(colorToApply, surfaceColor, .nonTextual)

// Textual components and AAA to check
OUDSWCAG21Ratios.debugContrastRatio(colorToApply, surfaceColor, .AAA)
```

### Divider

#### How it works

A divider is used to separate content elements in a view. Two kinds of divider are proposed:
- ``OUDSHorizontalDivider``: to separate elements stacked vertivally (VStask).
- ``OUDSVerticalDivider``: to separate elements stacked Horizontally (HStask).

A divider can be colored using color enumerated in the `OUDSDividerColor`.

##### Horizontal

@TabNavigator {
    @Tab("Orange") {
        ![An horizontal divider in light and dark mode with Orange theme](component_horizontalDivider_Orange)
    }
    @Tab("Orange Inverse") {
        ![An horizontal divider in light and dark mode with Orange Inverse theme](component_horizontalDivider_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![An horizontal divider in light and dark mode with Orange Business Tools theme](component_horizontalDivider_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![An horizontal divider in light and dark mode with Sosh theme](component_horizontalDivider_Sosh)
    }
    @Tab("Wireframe") {
        ![An horizontal divider in light and dark mode with Wireframe theme](component_horizontalDivider_Wireframe)
    }
}

##### Vertical

@TabNavigator {
    @Tab("Orange") {
        ![An vertical divider in light and dark mode with Orange theme](component_verticalDivider_Orange)
    }
    @Tab("Orange Inverse") {
        ![An vertical divider in light and dark mode with Orange Inverse theme](component_verticalDivider_OrangeInverse)
    }
    @Tab("Orange Business Tools") {
        ![An vertical divider in light and dark mode with Orange Business Tools theme](component_verticalDivider_OrangeBusinessTools)
    }
    @Tab("Sosh") {
        ![An vertical divider in light and dark mode with Sosh theme](component_verticalDivider_Sosh)
    }
    @Tab("Wireframe") {
        ![An vertical divider in light and dark mode with Wireframe theme](component_verticalDivider_Wireframe)
    }
}

#### How to use

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
            import OUDSComponents
        
            // Add a vertical divider between items
            HStack {
                Text("Hello world!")
                OUDSVerticalDivider(color: .brandPrimary)
                Text("Happy to see you")
            }

            // Add an horizontal divider between items
            VStack {
                Text("Hello world!")
                OUDSHorizontalDivider(color: .brandPrimary)
                Text("Happy to see you")
            }
        ```
    }
    @Tab("UIKit") {
        ```swift
            import OUDSComponentsUIKit
            
            // Add a vertical divider between items
            OUDSUIKit.createVerticalDivider(color: .brandPrimary)
            
            // Add an horizontal divider between items
            OUDSUIKit.createHorizontalDivider(color: .brandPrimary)
        ```
    }
}
