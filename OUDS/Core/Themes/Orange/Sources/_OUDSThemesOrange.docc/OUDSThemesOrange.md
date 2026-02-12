# ``OUDSThemesOrange``

@Metadata {
    @PageImage(purpose: icon, source: "ic_theme_orange")
    @DisplayName("Theme Orange", style: symbol)
    @TitleHeading("Library")
}
<!-- 
Do not add @PageImage(purpose: card) because not managed for landing page of online doc.
See https://github.com/swiftlang/swift-docc/issues/1283
-->

The Orange theme overrides some tokens from the basic `OUDSTheme` and should be seen as the default theme for the OUDS library with the Orange brand colors for example.

## Overview

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Theme version: 2.3.0
```

This is the default theme any Orange branded app should use, and can be subclassed to define for example themes dedicated to countries.
It embeds also in its target the brand colors which are not shared nor exposed in lower level targets or outside any module not depending to it.

In other words, this ``OrangeTheme`` is based on the abstract `OUDSTheme`, uses all the *Orange Unified Design System* kit and brings the Orange brand colors and assets.

> Note: It contains also colors dedicated to charts.

## How to use the theme

You can use ``OrangeTheme`` directly. To use the ``OrangeTheme`` without further modifications, you will have to use the `OUDSThemeableView` for your root view and give it an instance of ``OrangeTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you may use only as instance as singleton and not store any properties.

```swift
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
        // For button configuration: theme.button
        // For link configuration: theme.link
        // Etc.
    }
}
```

## Tunable theme

The theme can be tuned with `Tuning` object to give at init.
Some tuning object exists.

```swift
    // Define your theme tuning
    let tuning = Tuning(hasRoundedButtons: true, 
                        hasRoundedTextInputs: true,
                        hasRoundedAlertMessages: true)

    // Apply it to your theme
    let theme = OrangeTheme(tuning: tuning)
    // Or in one line
    let theme = OrangeTheme(tuning: Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true, hasRoundedAlertMessages: true))

    // Or apply predefined tunings
    let orangeFranceTheme = OrangeTheme(tuning: Tuning.OrangeFrance)
    let orangeBusinessTheme = OrangeTheme(tuning: Tuning.OrangeBusiness)
    let maxitTheme = OrangeTheme(tuning: Tuning.MaxIt)
```

### "Orange France" tuning

A predefined tuning configuration is also available for Orange France, which is also the default tuning:

```swift
let theme = OrangeTheme(tuning: Tuning.OrangeFrance)
```

It applies the following settings:

Tunable elements               | Default values                          
------------------------------ | ------------------------------------- 
rounded corners buttons        | ❌ false  
rounded corners text inputs    | ❌ false  
rounded corners alert messages | ❌ false

### "Orange Business" tuning

A predefined tuning configuration is also available for Orange Business:

```swift
let theme = OrangeTheme(tuning: Tuning.OrangeBusiness)
```

It applies the following settings:

Tunable elements               | Default values                          
------------------------------ | ------------------------------------- 
rounded corners buttons        | ❌ false  
rounded corners text inputs    | ✅ true 
rounded corners alert messages | ❌ false

### "Max it" tuning

A predefined tuning configuration is also available for "Max it":

```swift
let theme = OrangeTheme(tuning: Tuning.MaxIt)
```

It applies the following settings:

Tunable elements               | Default values                          
------------------------------ | ------------------------------------- 
rounded corners buttons        | ✅ true  
rounded corners text inputs    | ✅ true  
rounded corners alert messages | ✅ true

## Typography

### Helvetica Neue

The Orange theme uses *Helvetica Neue* typography. This font is already available through iOS.
It is possible to use another typography, by the ones recommended are the ones defined in tokens.
For Orange products the *Helevetica Neue* font family must be used.

```swift
// The three following instanciations are the same
let theme = OrangeTheme()
let theme = OrangeTheme(fontFamily: OrangeBrandFontRawTokens.familyBrandDefault)
let theme = OrangeTheme(fontFamily: "HelveticaNeue") // Which is PostScript name of the font

// This instanciation won't work as the font family is not recognised
let theme = OrangeTheme(fontFamily: "Helvetica Neue")
```

### Other fonts

However if, in very particular cases, you need to use another font family, you can try using it by changing the value in the theme init.

```swift
// Supposing you want to use another font:
// - like the Luciole font (https://luciole-vision.com/) (very good for accessibility)
// - or the Robot font (https://fonts.google.com/specimen/Roboto) (to support arabic and cyrillic alphabets)
// 1. Add the TTF files in your project
    
// 2. Register the fonts with, for example, the function below
private func registerFonts() {
    let fonts = Bundle.main.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
    fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
}

// 3. At theme init, given the font family name, add it to the theme.
// Keep in mind that it might not work because PostScript name is used combining
// font family name and font weight.
// For Luciole font, use "Luciole". For Roboto font, use "Roboto""
   let theme = OrangeTheme(fontFamily: theFontFamilyNameInPostScript)
```

> Note: Specific rules to compute PostScript value are defined in `PostScriptFontNamesMap.swift`

> Tip: If your font family is not well managed, you can [send an issue and explain your needs](https://github.com/Orange-OpenSource/ouds-ios/issues)

> Important: For production products and official tools, *Helvetica Neue* is preferred

> Tip: If for your needs Helvetica Neue is not relevant (because does not support cyrilic and arabic, or not enough accessible, or not aligned with your needs), [feel free to open a discussion](https://github.com/Orange-OpenSource/ouds-ios/discussions)

> Caution: For ecodesign principles you should challenge the use of fonts because they can increase the needed storage of your apps

> Important: Always check the license and terms of uses of the font your are using (distribution, hsoting, usage for comemrcial things, etc.)

## How to enrich the theme

You can enrich the ``OrangeTheme`` by subclassing it or by overriding some tokens.

> Important: Only the Orange theme can be subclassed today. If this theme does not fill your need you can also implement your own theme from scratch.

> Tip: Because theme definition is based on thousands of tokens, you should contact the design team to get helped.

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
- etc.

The color semantic tokens of charts are not overridable as they are highly related to the brand. However it can change in the future.

You can also override the component tokens providers you need.
Have a look [on the documentation](https://ios.unified-design-system.orange.com/documentation/oudstokenscomponent/) to know which one you need to update.

Example for semantic tokens providers:

```swift
// MARK: - For semantic tokens

// Token provider for spaces

class YourAppThemeSpaceTokensProvider: OrangeThemeSpaceSemanticTokensProvider {
    override var fixedMedium: SpaceSemanticToken {
        DimensionRawTokens._400
    }
    override var scaledSmall: MultipleSpaceSemanticToken {
        MultipleSpaceSemanticToken(compact: fixed5xl, regular: fixed5xl)
    }
}

// Token provider for sizes

class YourAppThemeSizeTokensProvider: OrangeThemeSizeSemanticTokensProvider {
    override var iconDecorative2xl: SizeSemanticToken {
        DimensionRawTokens._300
    }
    override var iconDecorativeMd: SizeSemanticToken {
        DimensionRawTokens._900
    }
}

// Token provider for colors

class YourAppThemeColorTokensProvider: OrangeThemeColorSemanticTokensProvider {
    override var bgSecondary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.colorDecorativeAmber500, dark: OrangeBrandColorRawTokens.colorOrange900)
    }
    override var actionEnabled: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.colorDecorativeShockingPink100, dark: ColorRawTokens.functionalScarlet600)
    }
}

// Token provider for border

class YourAppThemeBorderTokensProvider: OUDSBorderSemanticTokensProvider {
    override var styleDefault: BorderStyleSemanticToken {
        BorderRawTokens.styleDashed
    }
    override var widthMedium: BorderWidthSemanticToken {
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
   
    override var displayLarge: MultipleFontCompositeSemanticToken { 
        MultipleFontCompositeSemanticToken(FontCompositeSemanticToken(
            size: sizeDisplayLargeMobile,
            lineHeight: lineHeightDisplayLargeMobile,
            weight: weightDisplay,
            letterSpacing: letterSpacingDisplayLargeMobile))) 
    }
}

// MARK: - And also for components tokens

class YourAppThemeButtonComponentTokensProvider: OrangeThemeButtonComponentTokensProvider {
    override public var sizeMaxHeightIconOnly: SizeSemanticToken { DimensionRawTokens._600 }
    override public var borderWidthDefault: BorderWidthSemanticToken { borders.widthThicker }
    override public var borderRadius: BorderRadiusSemanticToken { borders.radiusMedium }
    override public var colorBgDefaultPressedMono: MultipleColorSemanticToken { colors.repositoryOpacityBlackHigher }
    override public var spacePaddingBlock: SpaceSemanticToken { spaces.paddingInlineSpacious }
}

// Etc.
```

You can instead of overriding existing semantic tokens provider implement your own provider but it will imply to implement maybe hundreds of tokens. Your own provider must match the suitable signature.

Then define your own theme class and assign the providers you want to override. If some are missing, default implementation will be used.

```swift
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
                   // Etc. ...
    }
}
```

Then add the theme:

```swift
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
But we recommend to define your own theme for clarity reasons.

```swift
@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: 
                OrangeTheme(colors: ..., spaces: ..., button: ...)) { 
                // Your root view
            }
        }
    }
}
```

## How it looks like
<!-- Use online images because stored in another Swift Package library and do not want to replicate assets -->

### Actions

#### Button

![A button component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_button_Orange.png)

### Content display

#### Bullet list

![A bullet list component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_bullet_list_Orange.png)

### Controls

#### Checkboxes

@TabNavigator {
    @Tab("Checkbox") {
        ![A checkbox component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkbox_Orange.png)        
    }
    @Tab("Checkbox item") {
        ![A checkbox item component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_checkboxItem_Orange.png)
    }
}
<!-- Maybe not relevant to display checkbox picker -->

#### Radios

@TabNavigator {
    @Tab("Radio") {
        ![A radio button component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radio_Orange.png)        
    }
    @Tab("Radio item") {
        ![A radio item component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_radioItem_Orange.png)
    }
}
<!-- Maybe not relevant to display radio picker -->

#### Switches

@TabNavigator {
    @Tab("Switch") {
        ![A switch component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switch_Orange.png)        
    }
    @Tab("Switch item") {
        ![A switch item component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_switchItem_Orange.png)
    }
}

#### Chips

@TabNavigator {
    @Tab("Filter chip") {
        ![A filter chip component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_filterChip_Orange.png)        
    }
    @Tab("Suggestion chip") {
        ![A suggestion chip component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_suggestionChip_Orange.png)
    }
}
<!-- Maybe not relevant to display chip picker -->

#### Text input

![A text input component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_textInput_Orange.png)

### Indicators

#### Badge

![A badge component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_badge_Orange.png)

#### Tags

@TabNavigator {
    @Tab("Tag") {
        ![A tag component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_tag_Orange.png)        
    }
    @Tab("Input tag") {
        ![An input tag component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_inputTag_Orange.png)
    }
}

### Layouts

<!-- Maybe not relevant to display colored surface -->

#### Dividers

@TabNavigator {
    @Tab("Horizontal divider") {
        ![An horizontal divider component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_horizontalDivider_Orange.png)
    }
    @Tab("Vertical divider") {
        ![A vertical divider component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_verticalDivider_Orange.png)
    }
}

### Navigations

#### Link

![A link component in light and dark modes with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_link_Orange.png)

#### Tab bar

@TabNavigator {
    @Tab("With Liquid Glass") {
        ![A tab component in light mode with Orange theme and Liquid Glass](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_tabBar_LiquidGlass_Orange_light.png)        
    }
    @Tab("Without Liquid Glass") {
        ![A tab component in light mode with Orange theme](https://ios.unified-design-system.orange.com/images/OUDSComponents/component_tabBar_Orange_light.png)
    }
}

## Topics

### Group

- ``OrangeTheme``
- ``OrangeBrandColorRawTokens``
- ``OrangeBrandFontRawTokens``
