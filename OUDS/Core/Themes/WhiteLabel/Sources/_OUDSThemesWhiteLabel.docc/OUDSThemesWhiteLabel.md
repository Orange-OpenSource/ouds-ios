# ``OUDSThemesWhiteLabel``

@Metadata {
    @PageImage(purpose: icon, source: "ic_theme_whitelabel")
    @DisplayName("Theme White Label", style: symbol)
    @TitleHeading("Library")
}
<!-- 
Do not add @PageImage(purpose: card) because not managed for landing page of online doc.
See https://github.com/swiftlang/swift-docc/issues/1283
-->

This White Label theme is a specific theme. It has been designed to let users have their own theme to update like a grey label theme, or to keep as is like a white label theme.

The White Label theme is based on the Wireframe theme which is dedicated to mockups and prototypes.
However is is possible to override the semantic tokens of colors, change the tuning and choose the font family to apply.

## Overview

> Important: The White Label theme, as a child of Wireframe themme does not embed charts colors nor decorative colors yet, but they can be defined.

## How to use the theme

You can use ``WhiteLabelTheme`` directly. To use the ``WhiteLabelTheme`` without further modifications, you will have to use the `OUDSThemeableView` for your root view and give it an instance of ``WhiteLabelTheme``. Keep in mind the themes are *Swift class objects* and can be heavy, so you may use only as instance as singleton and not store any properties.

```swift
@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: WhiteLabelTheme()) {
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

## How to tune the theme

By default the White Label theme uses the tuning of Wireframe.

```swift
// Define your theme tuning, here everything rounded
let tuning = Tuning(hasRoundedButtons: true,
                    hasRoundedTextInputs: true,
                    hasRoundedAlertMessages: true,
                    hasRoundedProgressIndicators: true,
                    hasRoundedListItems: true)

// Apply it to your theme
let theme = WhiteLabelTheme(tuning: tuning)
```

> Important: But beware, these are only flags using inside components definitions to chose the token to apply. Some tokens for rounded and not rounded cases can have the same values in the end (like for Wireframe theme) or not (like for Orange theme).

## Typography

The White Label theme uses the native system font family by default, but it can be defined otherwise.
You will need to add to define the font family parameter of the theme.

```swift
// Font family name fo which resources should be loaded and used then
let fontFamily = "Winky Rough" 

let theme = WhiteLabelTheme(fontFamily: fontFamily)    
```

And register the fonts resources only one time:
```swift
static var fontsAlreadyRegistered = false

private func registerFonts() {
    if !Self.fontsAlreadyRegistered {
        registerFont(postScript: "WinkyRough-Regular_Light", forCombination: PSFNMK(fontFamily, Font.Weight.light))
        registerFont(postScript: "WinkyRough-Regular", forCombination: PSFNMK(fontFamily, Font.Weight.regular))
        registerFont(postScript: "WinkyRough-Regular_Medium", forCombination: PSFNMK(fontFamily, Font.Weight.medium))
        registerFont(postScript: "WinkyRough-Regular_SemiBold", forCombination: PSFNMK(fontFamily, Font.Weight.semibold))
        registerFont(postScript: "WinkyRough-Regular_Bold", forCombination: PSFNMK(fontFamily, Font.Weight.bold))
        registerFont(postScript: "WinkyRough-Regular_Black", forCombination: PSFNMK(fontFamily, Font.Weight.black))
        
        let fonts = yourAppBundle.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
        fonts?.forEach {
            CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil)
        }
        Self.fontsAlreadyRegistered = true
    }    
}
```

The helper `registerFont(postScript:forCombination:)` is an OUDS helper which will define the relationship between the font fmaily you use with a weight in one side, and the PostScript identifier of the font defined in the TTF in the other side.

## How to enrich the theme

Today for White Label theme only the colors, the font family and the tunning can be changed.
By default nor the Wireframe theme nor the White Label theme have colors decorative and color charts tokens.
If you want to define them you will have to define your own tokens providers.
The White Label theme uses the other tokens of colors of Wireframe theme; you can subclass it for your needs in you want.

```swift
class MyColorTokensProvider: WhiteLabelThemeColorSemanticTokensProvider {

    // Give the values you want to the tokens you want
    // Some tokens have only one value...
    @objc override var repositoryInfoLow: ColorSemanticToken { ColorRawTokens.functionalSun200 }
    @objc override var repositoryInfoHighest: ColorSemanticToken { ColorRawTokens.functionalSun800 }
    
    // ...and other tokens can have a pair of values, for light and dark modes
    @objc override var surfaceBrandPrimary: MultipleColorSemanticToken { MultipleColorSemanticToken(light: repositoryInfoLow, dark: repositoryInfoHighest) }
}    
```

## How it looks like

To test your own White Label theme implementation, you can use for example the [Design System Toolbox application](https://github.com/Orange-OpenSource/ouds-ios-design-system-toolbox).

Update the [ThemeSelection.swift](https://github.com/Orange-OpenSource/ouds-ios-design-system-toolbox/blob/develop/DesignToolbox/DesignToolbox/Navigation/ThemeSelection.swift) file so as to had your theme in the themes selector.

Then build and run the app and enjoy!

## Example

```swift
// MARK: - Name, tuning

let kDesignToolboxWhiteLabelName = "Design Toolbox White Label"

let kDesignToolboxWhiteLabelTuning = Tuning(hasRoundedButtons: true,
                                            hasRoundedTextInputs: true,
                                            hasRoundedAlertMessages: true,
                                            hasRoundedProgressIndicators: true,
                                            hasRoundedListItems: true)

// MARK: - Fonts

let kDesignToolboxWhiteLabelFontFamily = "Winky Rough"

// To prevent to register each time the fonts and get warnings
var designToolboxWhiteLabelFontAlreadyRegistered = false

func registerDesignToolboxWhiteLabelFonts() {
    if !designToolboxWhiteLabelFontAlreadyRegistered {
        registerFont(postScript: "WinkyRough-Regular_Light", forCombination: PSFNMK(kDesignToolboxWhiteLabelFontFamily, Font.Weight.light))
        registerFont(postScript: "WinkyRough-Regular", forCombination: PSFNMK(kDesignToolboxWhiteLabelFontFamily, Font.Weight.regular))
        registerFont(postScript: "WinkyRough-Regular_Medium", forCombination: PSFNMK(kDesignToolboxWhiteLabelFontFamily, Font.Weight.medium))
        registerFont(postScript: "WinkyRough-Regular_SemiBold", forCombination: PSFNMK(kDesignToolboxWhiteLabelFontFamily, Font.Weight.semibold))
        registerFont(postScript: "WinkyRough-Regular_Bold", forCombination: PSFNMK(kDesignToolboxWhiteLabelFontFamily, Font.Weight.bold))
        registerFont(postScript: "WinkyRough-Regular_Black", forCombination: PSFNMK(kDesignToolboxWhiteLabelFontFamily, Font.Weight.black))
        
        let fonts = Bundle.main.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
        fonts?.forEach {
            CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil)
        }
        
        designToolboxWhiteLabelFontAlreadyRegistered = true
    }
}

// MARK: - Colors (raw)

enum DesignToolboxWhiteLabelRawColors {

    static let bloodRed = "#C0392BFF"
    static let vividRed = "#FF6B6BFF"
    static let concreteGrey = "#F0F0F0FF"
    static let nearBlack = "#1C1C1EFF"
    static let softGrey = "#E0E0E0FF"
    static let deepGrey = "#2C2C2EFF"
    static let mutedLight = "#6E6E73FF"
    static let mutedDark = "#8E8E93FF"
    static let borderLight = "#D0D0D0FF"
}

// MARK: - Colors (semantic)

// Override the tokens you want
class DesignToolboxColorSemanticTokensProvider: WhiteLabelThemeColorSemanticTokensProvider {

       override open var bgPrimary: MultipleColorSemanticToken {
           MultipleColorSemanticToken(light: DesignToolboxWhiteLabelRawColors.concreteGrey, dark: DesignToolboxWhiteLabelRawColors.nearBlack)
       }

       override open var bgSecondary: MultipleColorSemanticToken {
           MultipleColorSemanticToken(light: DesignToolboxWhiteLabelRawColors.softGrey, dark: DesignToolboxWhiteLabelRawColors.deepGrey)
       }

       override open var contentDefault: MultipleColorSemanticToken {
           MultipleColorSemanticToken(light: DesignToolboxWhiteLabelRawColors.nearBlack, dark: DesignToolboxWhiteLabelRawColors.concreteGrey)
       }

       override open var contentMuted: MultipleColorSemanticToken {
           MultipleColorSemanticToken(light: DesignToolboxWhiteLabelRawColors.mutedLight, dark: DesignToolboxWhiteLabelRawColors.mutedDark)
       }

       override open var contentBrandPrimary: MultipleColorSemanticToken {
           MultipleColorSemanticToken(light: DesignToolboxWhiteLabelRawColors.bloodRed, dark: DesignToolboxWhiteLabelRawColors.vividRed)
       }

       override open var actionEnabled: MultipleColorSemanticToken {
           MultipleColorSemanticToken(light: DesignToolboxWhiteLabelRawColors.bloodRed, dark: DesignToolboxWhiteLabelRawColors.vividRed)
       }

       override open var borderBrandPrimary: MultipleColorSemanticToken {
           MultipleColorSemanticToken(light: DesignToolboxWhiteLabelRawColors.bloodRed, dark: DesignToolboxWhiteLabelRawColors.vividRed)
       }
}

let kDesignToolboxWhiteLabelColors = DesignToolboxColorSemanticTokensProvider()

// MARK: - Theme instanciation

let myDesignToolboxWhiteLabelTheme = WhiteLabelTheme(colors: kDesignToolboxWhiteLabelColors,
                                                     name: kDesignToolboxWhiteLabelName,
                                                     fontFamily: kDesignToolboxWhiteLabelFontFamily,
                                                     tuning: kDesignToolboxWhiteLabelTuning)

// MARK: - Inject the theme

var body: some View {
    OUDSThemeableView(theme: myDesignToolboxWhiteLabelTheme) {
        YourAppContent()
    }
}
```
## Topics

### Group

- ``WhiteLabelTheme``
