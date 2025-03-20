# Themes

_Themes_ are applications of specific values for _components tokens_ and _semantic tokens_ using in the end _raw tokens_.
A _theme_ contains any relevant _semantic tokens_ and _component tokens_ which can be used for components rendering.
A _theme_ has also _raw tokens_ associated to primitive types so as to give to _components_, written with _SwiftUI_, the needed values in the suitable type. A _theme_ can add for itself any new _tokens_.

This library exposes today up to two themes:
1. [Orange Theme](https://ios.unified-design-system.orange.com/documentation/oudsthemesorange/) which can be seen as the default _theme_ ;
2. [Inverse Theme](https://ios.unified-design-system.orange.com/documentation/oudsthemesinverse/) for other use cases.
They both are based on an `OUDSTheme` defining default values.

_Themes_ can be defined thanks to `open class` in Swift. It allows inheritance and derivation.

_Themes_ use *tokens providers* which provide the *semantic tokens* to apply in the project. These tokens are overriden thanks to `@objc open` combination so as to make possible to override these values in extensions (thanks to `@objc`) and from objects outside the module (thanks to `open`). Thus we can split values and responsabilities in different _Swift Package Manager_ targets and keep overriding and inheritance possible.

Note that other brands like _Parnasse_ or _Sosh_ can be implemented in a dedicated internal repository with their own assets. We plan also to add an *Orange Innovation Cup* theme.

## Architecture

A theme is, a fact, a big massive bucket of semantic tokens. 

We choose to pack all semantic tokens in protocols, so as to force any theme to manage them through tokens providers. Because Swift does not have notions of abstract classes compared to Kotlin, we have choosen to define an `OUDSTheme` which can be considered like an almost-abstract class
.
Then, a white label theme may just inherit from this class and override the tokens it needs. The real, default theme to use, will be the `OrangeTheme` providing in its module brand colors and overriding some tokens with the suitable values. In fact, because the `OUDSTheme` and the `OrangeTheme` are isolated, the `OUDSTheme` cannot get the Orange brand colors, so some tokens cannot be defined at that level but remain overridable in the subclass.

The object oriented paradigm implementation in Swift is a bit different that the one found with Java or Kotlin. For example we do not have abstract classes and Swift relies a lot in composition with protocols and extensions. Thus a theme can be composed using protocols containing as properties the semantics tokens. These tokens must also be overridable (except for some of them). Any default values and logic can be in a kind of fake abstract class named `OUDSTheme`. This theme will be then subclassed using OOP inheritance in the real default theme named `OrangeTheme`. Any other theme can be a subclass of `OrangeThem`e (e.g. country specific theme) or `OUDSTheme` (for white label).

Themes must be able to override semantic tokens and components tokens, and use its own raw or semantic tokens without sharing them to other themes. The existing raw tokens, shared between all themes, are not overridable because their definitions are frozen.

A theme can use its own tokens providers, implemented from scratch (*good luck witht eh amount of tokens to define*) or by inheriting from existing tokens providers.

## Use themeable view

```swift
// Make imports
import OUDS // For OUDSThemeableView
import OUDSThemesOrange // For OrangeTheme

// Add themeable view to your root view to use the OrangeTheme
OUDSThemeableView(theme: OrangeTheme()) {
    YourRootView()
}

// Or use your custom theme if you want
OUDSThemeableView(theme: YourCustomTheme()) {
    YourRootView()
}
```

## Define a custom theme if needed

It is quite simple, you have to follow several steps.

You will have to create a _Swift class_ which will inherit from `OrangeTheme` (if you need Orange brand assets) or `OUDSTheme`.
You can see `OrangeTheme` as more specified and less abtract as `OUDSTheme` which is the base of all themes. We do not recommend to use directly the `OUDSTheme` as is, but you can of course, you jsut will have to add your own tokens providers.

Then, you should override the _semantic tokens_ and _components tokens_ you want using the providers ; we recommend to use _Swift extensions_ for clarity reasons. You can use existing tokens providers or override them.

If your theme needs to define its own _raw tokens_, you can also define them using a `enum` and the _raw tokens types_.

### By subclassing

You may want to define your own theme, thus you can override the `OrangeTheme` with your own class or just override the providers.
For clarity reasons maybe you should define your own class inheriting from `OrangeTheme`, or, more difficult, from `OUDSTheme` but we do not recommand that.

You must consider the tokens provider you need (to inherit from for overriding, or to use as is):
- spaces tokens are `OrangeThemeSpaceSemanticTokensProvider`
- sizes tokens are in `OrangeThemeSizeSemanticTokensProvider`
- colors tokens are all defined in `OrangeThemeColorSemanticTokensProvider`
- borders tokens are in `OrangeBorderSemanticTokensProvider`
- elevations tokens are in `OrangeThemeElevationSemanticTokensProvider`
- opacity tokens are in `OrangeThemeOpacitySemanticTokensProvider`
- grid tokens are in `OrangeThemeGridSemanticTokensProvider`
- font tokens are in `OrangeThemeFontSemanticTokensProvider`

Find bellow some example

```swift
import OUDSTokensSemantic // To use semantic tokens if needed
import OUDSTokensRaw // To use raw tokens if needed

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
```

You can instead of overriding existing semantic tokens provider implement your own provider but it will impy to implement maybe hundreds of tokens. Your own provider must match the suitable signature.

Then define your own theme class and assign the providers. You can jsut use some custom providers and leave the others as they are.

```swift
import OUDSThemesOrange // To get OrangeTheme

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
                   spaces: YourAppThemeSpaceTokensProvider(),
                   button: YourAppThemeButtonComponentTokensProvider,
                
                    Etc...)
    }
}
```

Finaly for your app root view:

```swift
import SwiftUI
import OUDS // To get OUDSThemeableView

struct MyAppRootView: View {

    var body: some View {
        OUDSThemeableView(theme: YourAppTheme()) {
            // ...
        }
    }
}
```

You can define your own set of raw tokens, and asign them in the semantic tokens you override as values, for example:

```swift
public typealias MyOwnFontRawTokens = FontRawTokens // Refer to type FontRawTokens for consistency, declared in OUDSTokensRaw

public enum MyOwnFontRawTokens {
    public static let someFontBody: MyOwnFontRawTokens = "Arial"
}
```

All components the OUDS library provides are based on themes, handle through the abstract `OUDSTheme`, exposing *semantic tokens*, defined by *raw tokens* assigned to usable final values.
In few words, if you want to change the look and feel for the OUDS components you use, you will have to override the matching *semantic tokens*, but it will bring side effects as these *semantic tokens* are shared accross several components.
In the future we will have components and *component tokens*.

You are also able to define your components and your *semantic tokens* used by them.

