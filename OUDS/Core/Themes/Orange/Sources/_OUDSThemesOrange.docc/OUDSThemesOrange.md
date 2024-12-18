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

You may want to define your own theme, thus you can override the ``OrangeTheme`` with your own class or just override the providers.

You will have to override the tokens provider you need. To do that, make a subclass of the provider you target:
- spaces tokens are `OUDSSpaceSemanticTokensProvider`
- sizes tokens are in `OUDSSizeSemanticTokensProvider`
- colors tokens are all defined in `OrangeThemeColorSemanticTokensProvider`
- borders tokens are in `OUDSBorderSemanticTokensProvider`
- elevations tokens are in `OrangeThemeElevationSemanticTokensProvider`
- opacity tokens are in `OUDSOpacitySemanticTokensProvider`
- grid tokens are in `OUDSGridSemanticTokensProvider`
- font tokens are in `OUDSFontSemanticTokensProvider`

```swift
import OUDSTokensSemantic           // To use semantic tokens if needed
import OUDSTokensRaw                // To use raw tokens if needed

// Token provider for spaces

class YourAppThemeSpaceTokensProvider: OUDSSpaceSemanticTokensProvider {
    override var spaceFixedMedium: SpaceSemanticToken {
        DimensionRawTokens.dimension400
    }
    override var spaceScaledShort: MultipleSpaceSemanticTokens {
        MultipleSpaceSemanticTokens(compact: spaceFixedJumbo, regular: spaceFixedJumbo)
    }
}

// Token provider for sizes

class YourAppThemeSizeTokensProvider: OUDSSizeSemanticTokensProvider {
    override var sizeIconDecorative2xl: SizeSemanticToken {
        DimensionRawTokens.dimension300
    }
    override var sizeIconDecorativeMd: SizeSemanticToken {
        DimensionRawTokens.dimension900
    }
}

// Token provider for colors

class YourAppThemeColorTokensProvider: OrangeThemeColorSemanticTokensProvider {
    override var colorBgSecondary: MultipleColorSemanticTokens {
        MultipleColorSemanticTokens(light: ColorRawTokens.colorDecorativeAmber500, dark: OrangeBrandColorRawTokens.colorOrange900)
    }
    override var colorActionEnabled: MultipleColorSemanticTokens {
        MultipleColorSemanticTokens(light: ColorRawTokens.colorDecorativeShockingPink100, dark: ColorRawTokens.colorFunctionalScarlet600)
    }
}

// Token provider for border

class YourAppThemeBorderTokensProvider: OUDSBorderSemanticTokensProvider {
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

// Token provider for elevation

class YourAppThemeElevationTokensProvider: OrangeThemeElevationSemanticTokensProvider {
    override var elevationStickyEmphasized: ElevationCompositeSemanticToken {
        ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_4_600)
    }
}

// Token provider for opacity

class YourAppThemeOpacityTokensProvider: OUDSOpacitySemanticTokensProvider {
    override var opacityStrong: OpacitySemanticToken {
        OpacityRawTokens.opacity920
    }
}

// Token provider for grid

class YourAppThemeGridTokensProvider: OUDSGridSemanticTokensProvider {
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

// Token provider for font

class YourAppThemeFontTokensProvider: OUDSFontSemanticTokensProvider {
    override var typeDisplayLarge: MultipleFontCompositeRawTokens {
        MultipleFontCompositeRawTokens(compact: FontRawTokens.typeRegular150, regular: FontRawTokens.typeRegular150)
    }
    override var typeCodeMedium: MultipleFontCompositeRawTokens {
        MultipleFontCompositeRawTokens(FontRawTokens.typeBold300)
    }
}
```

Then define your own them class and assign the providers:

```swift
import OUDS
import OUDSThemesOrange             // To get OrangeTheme

// Define your theme
class YourAppTheme: OrangeTheme {
    
    override init() {
        super.init(colors: YourAppThemeColorTokensProvider(),
                   borders: YourAppThemeBorderTokensProvider(),
                   elevations: YourAppThemeElevationTokensProvider(),
                   fonts: YourAppThemeFontTokensProvider(),
                   grids: YourAppThemeGridTokensProvider(),
                   opacities: YourAppThemeOpacityTokensProvider(),
                   sizes: YourAppThemeSizeTokensProvider(),
                   spaces: YourAppThemeSpaceTokensProvider())
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

Quite simple and similar to the previous solution, but give only the provider to the ``OrangeTheme``.

For example for colors:

```swift
import OUDS // To get OUDSThemeableView

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeTheme(colors: YourAppThemeColorTokensProvider())) {
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
