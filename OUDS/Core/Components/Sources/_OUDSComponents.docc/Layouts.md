# Layouts

Some components can be used for **layouts**.

## Overview

### Colored Surface

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

##### Debuging contrast ratios

Some countries set up new laws so as to force companies to have a better accessibility of their digital services.
This is for example the case for France with the [Référentiel Général d'Amélioration de l'Accessibilité](https://accessibilite.numerique.gouv.fr/), also named "RGAA".
Some components like ``OUDSButton`` or ``OUDSLink`` can be used on ``OUDSColoredSurface`` ; thus in that case we can know the surface color for a given component on it, and compute the contrast ratio.

To do that, some steps must be followed in your component implementation:
- Get the environement variable defined by the colored surface containing the applied color
- In the component implementation, add a line of code comparing the color to test and that surface
- And use this features in #DEBUG mode
- Then keep an eye on your logs ; warnings will be added there if WCAG 2.1 3:1 or 4.5:1 ratios are not reached
- Do not forget to rise the flag to allow debugging 

```swift
// Rise the flag
Color.oudsDebugWCAG21Colors = true

// Supposing we are in your component View / ViewModifer struct

// Get the applied surface color
#if DEBUG
    @Environment(\.oudsSurfaceColor) private var surfaceColor
#endif

// In the function defining the color to apply, add the line below
// where colorTokenToApply is the color to apply from a theme
#if DEBUG
    colorTokenToApply.checkWCAG21ContrastRatio(surfaceColor)
#endif

// Note that checkWCAG21ContrastRatio() will be available only in DEBUG mode
// You can also use Color.wcag21ContrastRatioCheck(,) if needed.
```

### Divider

#### How it works

A divider is used to separate content elements in a view. Two kinds of divider are proposed:
- `OUDSHorizontalDivider` To separate elements stacked vertivally (VStask).
- `OUDSVerticalDivider` To separate elements stacked Horizontally (HStask).

A divider can be colored using color enumerated in the `OUDSDividerColor`.

#### How to use

```swift
// Add a vertical divider between items
HStack {
    Text("Hello wolrd!")
    OUDSVerticalDivider(color: .brandPrimary)
    Text("Happy to see you")
}

// Add an horizontal divider between items
VStack {
    Text("Hello wolrd!")
    OUDSHorizontalDivider(color: .brandPrimary)
    Text("Happy to see you")
}
```
