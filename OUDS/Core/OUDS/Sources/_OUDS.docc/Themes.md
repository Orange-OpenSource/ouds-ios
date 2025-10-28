# Themes

@Metadata {
    @PageImage(purpose: icon, source: "ic_theme_intro")
    @PageImage(purpose: card, source: "ic_theme_intro")
}

_Themes_ are applications of specific values for _components tokens_ and dimensionsemantic tokens_ using in the end _raw tokens_.
A _theme_ contains any relevant tokens which can be used for components rendering.
A _theme_ can use its own assets like fonts and icons.

This framework exposes today following themes:

Theme                                                                                                      | Description                          
---------------------------------------------------------------------------------------------------------- | ------------------------------------- 
[Orange](https://ios.unified-design-system.orange.com/documentation/oudsthemesorange/)                     | The default one for Orange products and can be enriched / derivated  
[Orange Business Tools](https://ios.unified-design-system.orange.com/documentation/oudsthemesorangebusinesstools/)     | For some Orange products with heavy / rich UI and _ constraints           
[Sosh](https://ios.unified-design-system.orange.com/documentation/oudsthemessosh/)                         | For Sosh products
[Wireframe](https://ios.unified-design-system.orange.com/documentation/oudsthemeswireframe/)               | For mockups, prototypes and prooves of concepts witouth Orange-flavoured styles

All themes are based on a theme contract called `OUDSTheme`.

_Themes_ use *tokens providers* which provide the *semantic tokens* and *component tokens* to apply in the project. 
These tokens in most of cases can be overriden thanks to `@objc open` combination so as to make possible to override these values in extensions (thanks to `@objc`) and from objects outside the module (thanks to `open`). 
Thus we can split values and responsabilities in different _Swift Package Manager_ targets and keep overriding and inheritance possible.

> Important: Only one theme, the Orange theme, can be subclassed.

## Architecture

A theme is a *Swift class* which several tokens providers providing their own definition of tokens. 

We choose to pack all semantic tokens in protocols, so as to force any theme to manage them through tokens providers. Because Swift does not have notions of abstract classes compared to Kotlin,the `OUDSTheme` which can be considered like an almost-abstract class.
Then, a white label theme may just inherit from this class and override the tokens it needs. The real, default theme to use, will be the `OrangeTheme` providing in its module brand colors and overriding some tokens with the suitable values.

Themes must be able to override semantic tokens and components tokens, and use its own raw or semantic tokens without sharing them to other themes. The existing raw tokens, shared between all themes, are not overridable because their definitions are frozen.

A theme can use its own tokens providers, implemented from scratch or by inheriting from existing tokens providers.

## Use themeable view

```swift
// Make imports
import OUDS // For OUDSThemeableView
import OUDSThemesOrange // For OrangeTheme
import OUDSThemesOrangeBusinessTools // For OrangeBusinessToolsTheme
import OUDSThemesSosh // For SoshTheme
import OUDSThemesWireframe // For WrieframeTheme

// Add themeable view to your root view to use the OrangeTheme
OUDSThemeableView(theme: OrangeTheme()) {
    YourRootView()
}

// Or use your custom theme if you want
OUDSThemeableView(theme: YourCustomTheme()) {
    YourRootView()
}
```

## Theme tuning

### Tunable themes or not

Some themes like `OrangeTheme` and `OrangeBusinessTools` can be tuned so as to be more flexible and adapt to some countries
or affiliates constraints.
However other themes like `SoshTheme` and `WireframeTheme` cannot be tuned.

> Note: Tuning represents the group of "flexibility points" allowed by the Orange Brand to tailor and customize themes for particular contexts.

### Tuned values

There are few elements which can be tuned. Some tunings have also been defined.

Tunable elements                       | Default values    | Orange France    | Orange Business    | Max It      |                          
-------------------------------------- | ----------------- | ---------------- | ------------------ | ----------- |
rounded corners for buttons            |     ❌ false      |    ❌ false      |      ❌ false      |   ✅ true   |
rounded corners for text inputs        |     ❌ false      |    ❌ false      |      ✅ true       |   ✅ true   |

### Tuning usages

The tuning to apply must be done at theme init.

```swift
    // Define your theme tuning with for example only rounded corners for buttons
    let tuning = Tuning(hasRoundedButtons: true)

    // Apply it to your theme
    let theme = OrangeTheme(tuning: tuning)
    // Or in one line
    let theme = OrangeTheme(tuning: Tuning(hasRoundedButtons: true))

    // Or use predefined tuning
    let orangeFranceTheme = OrangeTheme(tuning: Tuning.OrangeFrance)
    let orangeBusinessTheme = OrangeTheme(tuning: Tuning.OrangeBusiness)
    let maxItTheme = OrangeTheme(tuning: Tuning.MaxIt)
```

## Define a custom theme if needed

You will have to create a _Swift class_ which will inherit from `OrangeTheme` (if you need Orange brand assets) or `OUDSTheme`.
You can see `OrangeTheme` as more specified and less abtract as `OUDSTheme` which is the base of all themes. We do not recommend to use directly the `OUDSTheme` as is, but you can of course, you jusr will have to add your own tokens providers.

Then, you should override the dimensionsemantic tokens_ and _components tokens_ you want using the providers ; we recommend to use _Swift extensions_ for clarity reasons. You can use existing tokens providers or override them.

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
- and same logic for component tokens

Find bellow some example

```swift
import OUDSTokensSemantic // To use semantic tokens if needed
import OUDSTokensRaw // To use raw tokens if needed

// Token provider for spaces

class YourAppThemeSpaceTokensProvider: OrangeThemeSpaceSemanticTokensProvider {
    override var spaceFixedMedium: SpaceSemanticToken {
        DimensionRawTokens._400
    }
    override var spaceScaledSmall: MultipleSpaceSemanticTokens {
        MultipleSpaceSemanticTokens(compact: spaceFixed5xl, regular: spaceFixed5xl)
    }
}

// Token provider for sizes

class YourAppThemeSizeTokensProvider: OrangeThemeSizeSemanticTokensProvider {
    override var sizeIconDecorative2xl: SizeSemanticToken {
        DimensionRawTokens._300
    }
    override var sizeIconDecorativeMd: SizeSemanticToken {
        DimensionRawTokens._900
    }
}

// Token provider for colors

class YourAppThemeColorTokensProvider: OrangeThemeColorSemanticTokensProvider {
    override var bgSecondary: MultipleColorSemanticTokens {
        MultipleColorSemanticTokens(light: ColorRawTokens.colorDecorativeAmber500, dark: OrangeBrandColorRawTokens.colorOrange900)
    }
    override var actionEnabled: MultipleColorSemanticTokens {
        MultipleColorSemanticTokens(light: ColorRawTokens.colorDecorativeShockingPink100, dark: ColorRawTokens.functionalScarlet600)
    }
}

// Token provider for border

class YourAppThemeBorderTokensProvider: OrangeThemeBorderSemanticTokensProvider {
    override var styeDefault: BorderStyleSemanticToken {
        BorderRawTokens.styeDashed
    }
    override var widthw: BorderWidthSemanticToken {
        BorderRawTokens.width100
    }
    override var radiusLarge: BorderRadiusSemanticToken {
        BorderRawTokens.radius800
    }
}

// Token provider for elevation

class YourAppThemeElevationTokensProvider: OrangeThemeElevationSemanticTokensProvider {
    override var stickyEmphasized: ElevationCompositeSemanticToken {
        ElevationCompositeSemanticToken(ElevationRawTokens.bottom_4_600)
    }
}

// Token provider for opacity

class YourAppThemeOpacityTokensProvider: OrangeThemeOpacitySemanticTokensProvider {
    override var strong: OpacitySemanticToken {
        OpacityRawTokens._920
    }
}

// Token provider for grid

class YourAppThemeGridTokensProvider: OrangeThemeGridSemanticTokensProvider {
    override var extraCompactColumnGap: GridSemanticToken {
        GridRawTokens.columnGap200
    }
    override var compactColumnGap: GridSemanticToken {
        GridRawTokens.columnGap200
    }
    override var regularColumnGap: GridSemanticToken {
        GridRawTokens.columnGap200
    }
}

// Token provider for font

class YourAppThemeFontTokensProvider: OrangeThemeFontSemanticTokensProvider {
    override var displayLarge: MultipleFontCompositeRawTokens {
        MultipleFontCompositeRawTokens(compact: FontRawTokens.regular150, regular: FontRawTokens.regular150)
    }
    override var codeMedium: MultipleFontCompositeRawTokens {
        MultipleFontCompositeRawTokens(FontRawTokens.bold300)
    }
}
```

You can instead of overriding existing semantic tokens provider implement your own provider but it will imply to implement maybe hundreds of tokens. Your own provider must match the suitable signature.

Then define your own theme class and assign the providers. You can just use some custom providers and leave the others as they are.

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
In few words, if you want to change the look and feel for the OUDS components you use, you will have to override the matching *semantic tokens* or *component tokens*, but it will bring side effects as these *semantic tokens* are shared accross several components.

You are also able to define your *components tokens* and your *semantic tokens* used by them.

