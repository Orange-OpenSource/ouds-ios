# ``OUDSComponents``

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @DisplayName("Components", style: symbol)
    @TitleHeading("Library")
}
<!-- 
Do not add @PageImage(purpose: card) because not managed for landing page of online doc.
See https://github.com/swiftlang/swift-docc/issues/1283
-->

The catalog of all components provided by OUDS. It contains also `View` extensions and `ViewModifiers` to apply tokens and styles on components and higher-level views.

Components are grouped in several categories, the same as the ones defined in the *Figma* design kit:
*Actions* component are for example buttons. *Navigations* group contains links, *inputs* group has checkboxes, radio buttons and switches, *layouts* group is dedicated to things like dividers.
You can get more details about them in the categories below:

- <doc:Actions>
- <doc:Navigations>
- <doc:Indicators>
- <doc:Controls>
- <doc:Layouts>

## Customize components

### Apply a specific shadow effect (elevation tokens)

The unified design system implemented by OUDS iOS library allows to apply *elevation effets* on a `View`, i.e. a shadow under the component.
Because the design tool in use is _Figma_ which defines such shadow with a _blur_ and a _spread_ radiuses, and because _SwiftUI_ uses only its own _radius_ definition, an extension of `View` has been implemented to let users apply some effect using an [`ElevationCompositeSemanticToken`](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/elevationcompositesemantictoken) from the [OUDSTokensSemantic](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/) library thanks to the method `shadow(elevation: ElevationCompositeSemanticToken)`.

```swift
// For example, apply the elevation effect "drag" from your theme:
myView.oudsShadow(theme.elevations.drag)
```

In details how it works:
```
// In the theme this "drag" has been defined for example like:
@objc open var drag: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.bottom_3_500) }

// And if you look deeper, the raw token "bottom_3_500" can be like:
public static let bottom_3_500 = ElevationCompositeRawToken(x: x0, y: y300, blur: blur400, color: ColorRawTokens.opacityBlack320)

// Blur will be used to compute the radius value
```

### Apply a specific typography (font tokens)

Your application identity can be strongly based on the *typography* you use, i.e. the font family you choose and other configuration details like the font size or the font weight.

With OUDS, typography depends to the class size, i.e. wether or not the application is in _compact mode_ or in _regular mode_, and is defined with a [`MultipleFontCompositeRawTokens`](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/multiplefontcompositerawtokens) defined in the [`FontSemanticTokens`](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/fontsemantictokens/).

The _theme_ contains lots of `MultipleFontCompositeRawTokens` listing all the combinations of typography you can apply, and these *composite semantic tokens* use *composite raw tokens*. For example:

However the _theme_ must know which _font family_ to apply, and this font family can be a _custom one_ or the _system one_.
Thus, we let the users define the font family they want by overriding the `family` property. This value will be used to compute the typography, if not defined the default system font will be used.

Thus, if you want to apply a specific typography to a `View` (supposing the semantic tokens are defined in the theme), just call the method you want and gives as parameter the theme (to get the custom font if defined):

```swift
// Apply typography "body default small"
myView.bodyDefaultSmall(theme)

// Apply typography "label strong X large"
myView.labelStrongXLarge(theme)

// Etc.
```

In details how it works:
```swift
// Here is a definition of a semantic token inside the theme for typography "displayMedium":
@objc open var displayMedium: MultipleFontCompositeRawTokens { 
    MultipleFontCompositeRawTokens(compact: FontRawTokens.bold750, regular: FontRawTokens.bold1050) 
}

// And here are the raw tokens definitions:
public static let bold750 = FontCompositeRawToken(size: size750, lineHeight: lineHeight850, weight: weightBold)
public static let bold1050 = FontCompositeRawToken(size: size1050, lineHeight: lineHeight1150, weight: weightBold)
```

These view modifiers are available for any `View` object, [you can get the curated list in the documentation](https://ios.unified-design-system.orange.com/documentation/oudscomponents/swiftuicore/view).

### Apply a specific border (border tokens)

This module exposes the helper `oudsBorder(style:width:radius:color)` so as to apply border semantic tokens on a view in order to define a border effect.
The helper is available through `View`, and tokens through the provider of the theme.

```swift
@Environment(\.theme) private var theme

var body: some View {
    SomeView()
        .oudsBorder(
            style: theme.borders.styleDefault,
             width: theme.borders.widthThin,
             radius: theme.borders.radiusNone,
             color: theme.colors.borderDefault)
}
```

### Apply specific colors

Colors can be applied on view for background and foreground colors, foreground style or also accent color.
Some helpers are available in the OUDS API to avoid to use the `color(for:)` method.

```swift
// Given a color at theme.colors.bgPrimary
// This token can have light and dark declinations 

@Environment(\.theme) private var theme

// Apply a foreground style
someView.oudsForegroundStyle(theme.colors.bgPrimary)

// Apply a foreground color
someView.oudsForegroundColor(theme.colors.bgPrimary)

// Apply a background
someView.oudsBackground(theme.colors.bgPrimary)

// Apply an accent color
someView.oudsAccentColor(theme.colors.bgPrimary)
```

## Change font family according to locale or preferred language

If you use for example one of the Orange themes, you may for sure use the *Helvetica Neue* font family.
However, this font family manages latin alphabet and not arabic alphabet.
Nevertheless a trick can be done to use the suitable *Helvetica Neue* font family according to the language.

```swift
/// Returns the Helvetica Neue font family to use depending to the preferred language or locale
func localizedHelveticaFont() -> String {
    guard let preferredLanguage = Locale.preferredLanguages.first else {
        return "Helvetica Neue"
    }
    if preferredLanguage.hasPrefix("ar") || Locale.current.languageCode == "ar" {
        return "Helvetica Neue Arabic"
    } else {
        return "Helvetica Neue"
    }
}

/// Instanciate your Orange theme using the font family.
/// Thus when the user will change the app language the app will be restarted, repainted and the theme updated
let localizedOrangeTheme: OUDSTheme = OrangeTheme(family: localizedHelveticaFont())
```

> Caution: For legal reasons OUDS does not provide the Helvetica Neue Arabic nore Helvetica Neue assets. You will have to get them and register the fonts files in your app

> Note: For cyrillic alphabet the Orange Brand does not provide *Helvetica Neue* variant, you can use *Arial* instead

## Registering font assets

If you need to use some fonts like *Helvetica Neue Arabic*, you will need to add the TTF files in your project and somewhere somehow register them.

```swift
private static var fontsAlreadyRegistered = false

// Fonts are defined in Resources/Fonts in TTF files.
private func registerFonts() {
    if !Self.fontsAlreadyRegistered {
        let fonts = Bundle.main.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
        fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
        Self.fontsAlreadyRegistered = true
    }
}
```

## UIKit backports (experimental)

> Caution: UIKit is not the highest priority, feel free to submit issues and pull requests to improve its support!

It is possible, but not recommended at all, to use OUDS components wrapped for UIKit.
Indeed UIKit implementations are not scoped yet, but some helpers exist which wraps SwiftUI implementations.

First, you will need to import at least the dedicated Swift Package product `OUDSComponentsUIKit`.
Other products can be needed, you can import theme on by one or use the umbrella product `OUDSSwiftUI`.

```swift
import OUDSComponentsUIKit
```

Then, send to the bridge the theme you want to use

```swift
OUDSUIKit.`init`(theme: theme) // e.g. OrangeTheme()
```

After that, call the helpers to get the components wrapped inside UIKit view controllers, for example:

```swift
OUDSUIKit.createButton(text: "Destructive button",
                       appearance: .negative,
                       style: .default,
                       action: {})
```

> Tip: You can [open a new discussion](https://github.com/Orange-OpenSource/ouds-ios/discussions/categories/returns-of-experiences-and-feedbacks) if you have ideas!
