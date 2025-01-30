# ``OUDSThemesOrange``

The Orange theme overrides some tokens from the basic `OUDSTheme` and should be seen as the default theme for the OUDS library with the Orange brand colors for example.

## Overview

This is the default theme any app should use, and can be subclassed to define for example themes dedicated to countries. The `InverseTheme` is based on it.
It embeds also in its target the brand colors which are not shared nor exposed in lower level targets or outside any module not depending to it.

In other words, this ``OrangeTheme`` is based on the abstract `OUDSTheme`, uses all the *Orange Unified Design System* kit and brings the Orange brand colors and assets.

## How to use the theme

You can use ``OrangeTheme`` directly. To use the ``OrangeTheme`` without further modifications, you will have to use the `OUDSThemeableView` for your root view and give it an instance of ``OrangeTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you may use only as instance as singleton and not store any properties.

```swift
import OUDS // To get OUDSThemeableView
import OUDSThemeOrange // To get OrangeTheme
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

Then, in your views, you can simply use the theme through an environment variable to get the tokens:

```swift
import OUDS // To get the theme environment variable
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

### By using your own theme and subclassing existing token providers

You may want to define your own theme, thus you can override the ``OrangeTheme`` with your own class or just override the providers.

You will have to consider the semantic tokens providers you need:
- spaces tokens are `OrangeThemeSpaceSemanticTokensProvider`
- sizes tokens are in `OrangeThemeSizeSemanticTokensProvider`
- colors tokens are all defined in `OrangeThemeColorSemanticTokensProvider`
- borders tokens are in `OUDSBorderSemanticTokensProvider`
- elevations tokens are in `OrangeThemeElevationSemanticTokensProvider`
- opacity tokens are in `OrangeThemeOpacitySemanticTokensProvider`
- grid tokens are in `OrangeThemeGridSemanticTokensProvider`
- font tokens are in `OrangeThemeFontSemanticTokensProvider`

You can also override the component tokens providers you need.
Have a look [on the documentation](https://ios.unified-design-system.orange.com/documentation/oudsthemesorange/) to know which one you need to update.

Example for semantic tokens providers:

```swift
import OUDSTokensComponent // To use component tokens if needed
import OUDSTokensSemantic // To use semantic tokens if needed
import OUDSTokensRaw // To use raw tokens if needed

// MAKR: - For semantic tokens

// Token provider for spaces

class YourAppThemeSpaceTokensProvider: OrangeThemeSpaceSemanticTokensProvider {
    override var spaceFixedMedium: SpaceSemanticToken {
        DimensionRawTokens.dimension400
    }
    override var spaceScaledShort: MultipleSpaceSemanticTokens {
        MultipleSpaceSemanticTokens(compact: spaceFixedJumbo, regular: spaceFixedJumbo)
    }
}

// Token provider for sizes

class YourAppThemeSizeTokensProvider: OrangeThemeSizeSemanticTokensProvider {
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

class YourAppThemeOpacityTokensProvider: OrangeThemeOpacitySemanticTokensProvider {
    override var opacityStrong: OpacitySemanticToken {
        OpacityRawTokens.opacity920
    }
}

// Token provider for grid

class YourAppThemeGridTokensProvider: OrangeThemeGridSemanticTokensProvider {
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

class YourAppThemeFontTokensProvider: OrangeThemeFontSemanticTokensProvider {
    override var typeDisplayLarge: MultipleFontCompositeRawTokens {
        MultipleFontCompositeRawTokens(compact: FontRawTokens.typeRegular150, regular: FontRawTokens.typeRegular150)
    }
    override var typeCodeMedium: MultipleFontCompositeRawTokens {
        MultipleFontCompositeRawTokens(FontRawTokens.typeBold300)
    }
}

// MARK: - And also for components tokens

class YourAppThemeButtonComponentTokensProvider: OrangeThemeButtonComponentTokensProvider {
    override public var buttonSizeMaxHeightIconOnly: SizeSemanticToken { DimensionRawTokens.dimension600 }
    override public var buttonBorderWidthDefault: BorderWidthSemanticToken { borders.borderWidthThicker }
    override public var buttonBorderRadius: BorderRadiusSemanticToken { borders.borderRadiusMedium }
    override public var buttonColorBgDefaultPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
    override public var buttonSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingInlineSpacious }
}

// Etc.
```

Then define your own theme class and assign the providers, but beware, do not forget some providers as it will crash:

```swift
import OUDSThemesOrange // To get OrangeTheme

// Define your theme
class YourAppTheme: OrangeTheme {
    
    override init() {
        let providers: TokensProviders = [
            // Semantic tokens providers

            YourAppThemeColorTokensProvider(),
            YourAppThemeBorderTokensProvider(),
            YourAppThemeElevationTokensProvider(),
            YourAppThemeFontTokensProvider(),
            YourAppThemeGridTokensProvider(),
            YourAppThemeOpacityTokensProvider(),
            YourAppThemeSizeTokensProvider(),
            YourAppThemeSpaceTokensProvider(),

            // Component tokens providers

            YourAppThemeButtonComponentTokensProvider(),

            // Etc.
        ]

        super.init(tokensProviders: providers)
    }
}
```

Then add the theme:

```swift
import OUDS  // To get OUDSThemeableView

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: YourAppTheme()) {
                // Your root view
            }
        }
    }
}
```

### By overriding only existing tokens providers

Quite simple and similar to the previous solution, but give only the providers to the ``OrangeTheme``.
But beware, in all cases if will crash is some providers are missing.
Ensure you add **all** the expected providers. You can mix your own providers and those from Orange theme.


```swift
import OUDS // To get OUDSThemeableView

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: 
                OrangeTheme(tokensProviders: ...)) { 
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
