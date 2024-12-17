# ``OUDSThemesOrange``

The Orange theme overrides some tokens from the basic `OUDSTheme` and should be seen as the default theme for the OUDS library.

## Overview

It defines its own colors and override the semantic tokens to use the right colors.
This is the default theme any app should use, and can be subclassed to define for example themes dedicated to countries.
It embeds also in its target the brand colors which are not shared nor exposed in lower level targets.

In other words, this ``OrangeTheme`` is bsaed on the abstract `OUDSTheme`, uses all the *Orange Unified Design System* kit and brings the Orange brand colors and assets.

## How to use the theme

You can use ``OrangeTheme`` directly. To use the ``OrangeTheme`` without further modifications, you will have to use the `OUDSThemeableView` for your root view and give it an instance of ``OrangeTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you maye use only as instance as singleton and not store any properties.

```swift
import OUDS                 // To get OUDSThemeableView
import OUDSThemeOrange      // To get OrangeTheme
import SwiftUI

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeTheme()) {
                // Your root view
            }
        }
    }
}
```

Then, in your views, you can simply use the theme through an environement variable to get the tokens:

```swift
import OUDS                 // To get the theme environment variable
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
    }
}

```

## How to enrich the theme

You can enrich the ``OrangeTheme`` by subclassing it or by overriding some tokens.

### By subclassing

You may want to define your own theme, thus you can override the ``OrangeTheme`` with your own class or just override the wrappers.

You will have to override the tokens wrapper you need. To do that, make a subclass of the wrapper you target:
- spaces tokens are `OUDSSpaceSemanticTokensWrapper`
- sizes tokens are in `OUDSSizeSemanticTokensProvider`
- colors tokens are all defined in `OrangeThemeColorSemanticTokensWrapper`
- borders tokens are in `OUDSBorderSemanticTokensProvider`
- elevations tokens are in `OUDSElevationSemanticTokensProvider`
- opacity tokens are in `OUDSOpacitySemanticTokensProvider`
- grid tokens are in `OUDSGridSemanticTokensProvider`
- font tokens are in `OUDSFontSemanticTokensProvider`

```swift
import OUDSTokensSemantic           // To use semantic tokens if needed
import OUDSTokensRaw                // To use raw tokens if needed

// Token wrapper for spaces

class YourAppThemeSpaceTokensWrapper: OUDSSpaceSemanticTokensWrapper {
    override var spaceFixedMedium: SpaceSemanticToken {
        DimensionRawTokens.dimension400
    }
    override var spaceScaledShort: MultipleSpaceSemanticTokens {
        MultipleSpaceSemanticTokens(compact: spaceFixedJumbo, regular: spaceFixedJumbo)
    }
}

// Token wrapper for sizes

class YourAppThemeSizeTokensWrapper: OUDSSizeSemanticTokensProvider {
    override var sizeIconDecorative2xl: SizeSemanticToken {
        DimensionRawTokens.dimension300
    }
    override var sizeIconDecorativeMd: SizeSemanticToken {
        DimensionRawTokens.dimension900
    }
}

// Token wrapper for colors

class YourAppThemeColorTokensWrapper: OrangeThemeColorSemanticTokensWrapper {
    override var colorBgSecondary: MultipleColorSemanticTokens {
        MultipleColorSemanticTokens(light: ColorRawTokens.colorDecorativeAmber500, dark: OrangeBrandColorRawTokens.colorOrange900)
    }
    override var colorActionEnabled: MultipleColorSemanticTokens {
        MultipleColorSemanticTokens(light: ColorRawTokens.colorDecorativeShockingPink100, dark: ColorRawTokens.colorFunctionalScarlet600)
    }
}

// Token wrapper for border

class YourAppThemeBorderTokensWrapper: OUDSBorderSemanticTokensProvider {
    override var borderStyleDefault: BorderStyleSemanticToken {
        BorderRawTokens.borderStyleDashed
    }
    override var borderWidthMedium: BorderWidthSemanticToken {
        BorderRawTokens.borderWidth100
    }
    override var borderRadiusTall: BorderRadiusSemanticToken {
        BorderRawTokens.borderRadius800
    }
}

// Token wrapper for elevation

class YourAppThemeElevationTokensWrapper: OUDSElevationSemanticTokensProvider {
    override var elevationStickyEmphasized: ElevationCompositeSemanticToken {
        ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_4_600)
    }
}

// Token wrapper for opacity

class YourAppThemeOpacityTokensWrapper: OUDSOpacitySemanticTokensProvider {
    override var opacityStrong: OpacitySemanticToken {
        OpacityRawTokens.opacity920
    }
}

// Token wrapper for grid

class YourAppThemeGridTokensWrapper: OUDSGridSemanticTokensProvider {
    override var gridExtraCompactColumnGap: GridSemanticToken {
        GridRawTokens.gridColumnGap200
    }
    override var gridCompactColumnGap: GridSemanticToken {
        GridRawTokens.gridColumnGap200
    }
    override var gridRegularColumnGap: GridSemanticToken {
        GridRawTokens.gridColumnGap200
    }
}

// Token wrapper for font

class YourAppThemeFontTokensWrapper: OUDSFontSemanticTokensProvider {
    override var typeDisplayLarge: MultipleFontCompositeRawTokens {
        MultipleFontCompositeRawTokens(compact: FontRawTokens.typeRegular150, regular: FontRawTokens.typeRegular150)
    }
    override var typeCodeMedium: MultipleFontCompositeRawTokens {
        MultipleFontCompositeRawTokens(FontRawTokens.typeBold300)
    }
}
```

Then define your own them class and assign the wrappers:

```swift
import OUDS
import OUDSThemesOrange             // To get OrangeTheme

// Define your theme
class YourAppTheme: OrangeTheme {
    
    override init() {
        super.init(colors: YourAppThemeColorTokensWrapper(),
                   borders: YourAppThemeBorderTokensWrapper(),
                   elevations: YourAppThemeElevationTokensWrapper(),
                   fonts: YourAppThemeFontTokensWrapper(),
                   grids: YourAppThemeGridTokensWrapper(),
                   opacities: YourAppThemeOpacityTokensWrapper(),
                   sizes: YourAppThemeSizeTokensWrapper(),
                   spaces: YourAppThemeSpaceTokensWrapper())
    }
}
```

Then add the theme:

```swift
import OUDS                         // To get OUDSThemeableView
import OUDSThemesOrange             // To get OrangeTheme

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeTheme()) {
                // Your root view
            }
        }
    }
}
```

### By overriding

Quite simple and similar to the previous solution, but give only the wrapper to the ``OrangeTheme``.

For example for colors:

```swift
import OUDS                         // To get OUDSThemeableView

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeTheme(colors: YourAppThemeColorTokensWrapper())) {
                // Your root view
            }
        }
    }
}
```

## Topics

### Group

- ``OrangeTheme``
- ``OrangeBrandColorRawTokens``
- ``OrangeBrandFontRawTokens``
