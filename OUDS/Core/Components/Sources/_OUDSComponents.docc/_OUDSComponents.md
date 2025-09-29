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
*Actions* component are for example buttons. *Navigations* group contains links, *inputs* group has checkboxes, radio buttons and switches, *layouts* groups is dedicated to things like dividers.
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
// For example, apply the elevation effect "elevationDrag" from your theme:
myView.oudsShadow(theme.elevations.elevationDrag)

// And in the theme this "elevationDrag" has been defined for example like:
@objc open var elevationDrag: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_3_500) }

// And if you look deeper, the raw token "elevationBottom_3_500" can be like:
public static let elevationBottom_3_500 = ElevationCompositeRawToken(x: elevationX0, y: elevationY300, blur: elevationBlur400, color: ColorRawTokens.colorOpacityBlack320)

// Blur will be used to compute the radius value
```

### Apply a specific typography (font tokens)

Your application identity can be strongly based on the *typography* you use, i.e. the font family you choose and other configuration details like the font size or the font weight.

With OUDS, typography depends to the class size, i.e. wether or not the application is in _compact mode_ or in _regular mode_, and is defined with a [`MultipleFontCompositeRawTokens`](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/multiplefontcompositerawtokens). defined in the [`OUDSTokensSemantic` `FontSemanticTokens`](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/fontsemantictokens/).

The _theme_ contains lots of `MultipleFontCompositeRawTokens` listing all the combinations of typography you can apply, and these *composite semantic tokens* use *composite raw tokens*. For example:

```swift
// Here is a definition of a semantic token inside the theme for typography "typeDisplayMedium":
@objc open var typeDisplayMedium: MultipleFontCompositeRawTokens { 
MultipleFontCompositeRawTokens(compact: FontRawTokens.typeBold750, regular: FontRawTokens.typeBold1050) 
}

// And here are the raw tokebs definitions:
public static let typeBold750 = FontCompositeRawToken(size: fontSize750, lineHeight: fontLineHeight850, weight: fontWeightBold)

public static let typeBold1050 = FontCompositeRawToken(size: fontSize1050, lineHeight: fontLineHeight1150, weight: fontWeightBold)
```

However the _theme_ must know which _font family_ to apply, and this font family can be a _custom one_ or the _system one_.
Thus, we let the users define the font family they want by overriding the `fontFamily` property. This value will be used to compute the typography, if not defined the systme font will be used.

Thus, if you want to apply a specific typography to a `View`, supposing you defined previously the semantic tokens, just call the method you want and gives as parameter the theme (to get the custom font if defined):

```swift
// Apply typography "type body default small"
myView.typeBodyDefaultSmall(theme)

// Apply typography "type label strong X large"
myView.typeLabelStrongXLarge(theme)

// Etc.
```

### Apply a specific border (border tokens)

This module exposes the helper `oudsBorder(style:width:radius:color)` so as to apply border semantic tokens on a view in order to define a border effect.
The helper is available through `View`, and tokens through the provider of the theme.

```swift
    @Environment(\.theme) private var theme

    var body: some View {
        SomeView()
        .oudsBorder(
             style: theme.borders.borderStyleDefault,
             width: theme.borders.borderWidthThin,
             radius: theme.borders.borderRadiusNone,
             color: theme.colors.colorBorderDefault)
     }
```

### Apply specific colors

Colors can be applied on view for background and foreground colors, foreground style or also accent color.
Some helpers are available in the OUDS API to avoid to use the `color(for:ColorScheme)` method.

```swift
    // Given a color at theme.colors.colorBgPrimary
    // This token can have light and dark declinations 

    @Environment(\.theme) private var theme

    // Apply a foreground style
    someView.oudsForegroundStyle(theme.colors.colorBgPrimary)

    // Apply a foreground color
    someView.oudsForegroundColor(theme.colors.colorBgPrimary)

    // Apply a background
    someView.oudsBackground(theme.colors.colorBgPrimary)

    // Apply an accent color
    someView.oudsAccentColor(theme.colors.colorBgPrimary)
```

## UIKit backpots

It is possible, but not recommended, to use OUDS components but wrapped for UIKit.
Indeed UIKit implementations are not scoped yet, but some helpers exist whichw wraps SwiftUI implementations.

First, you will need to import the dedicated Swift Package product

```swift
import OUDSComponentsUIKit
```

Then, send to the bridge the theme you want to use

```swift
    OUDSUIKit.`init`(theme: theme)
```

After that, call the helpers to get the components wrapped inside UIKit view controllers, for example:

```swift
OUDSUIKit.createButton(text: "Desctructive button",
                       appearance: .negative,
                       style: .default,
                       action: {})
```

> Caution: UIKit is not the highest priority, feel free to submit issues and pull request to improve its support!
