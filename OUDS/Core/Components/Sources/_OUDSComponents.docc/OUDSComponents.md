# ``OUDSComponents``

The catalog of all components provided by OUDS. It contains also `View` extensions and `ViewModifiers` to apply tokens and styles on components and higher-level views.

## Overview

❗More details coming soon.❗

## Customize components

Some helpers are provided through this module.

### Apply a specific shadow effect (elevation tokens)

The unified design system implemented by OUDS iOS library allows to apply *elevation effets* on a `View`, i.e. a shadow under the component.
Because the design tool in use is _Figma_ which defines such shadow with a _blur_ and a _spread_ radiuses, and because _SwiftUI_ uses only its own _radius_ definition, an extension of `View` has been implemented to let users apply some effect using an [`ElevationCompositeSemanticToken`](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/elevationcompositesemantictoken) from the [OUDSTokensSemantic](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/) library thanks to the method `shadow(elevation: ElevationCompositeSemanticToken)`.

```swift
// For example, apply the elevation effect "elevationDragLight" from your theme:
myView.shadow(elevation: theme.elevationDragLight)

// And in the theme this "elevationDragLight" has been defined for example like:
@objc open var elevationDragLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_500 }
ColorRawTokens.colorOpacityBlack400)

// And if you look deeper, the raw token "elevationBottom_3_500" can be like:
public static let elevationBottom_3_500 = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorOpacityBlack500)

// Blur will be used to compute the radius value
```

### Apply a specific typography (font tokens)

Your application identity can be strongly based on the *typography* you use, i.e. the font family you choose and other configuration details like the font size or the font weight.

With OUDS, typography depends to the class size, i.e. wether or not the application is in _compact mode_ or in _regular mode_, and is defined with a [`MultipleFontCompositeRawTokens`](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/multiplefontcompositerawtokens). defined in the [`OUDSTkensSemantic` `FontSemanticTokens`](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/fontsemantictokens/).

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
The helper is available through `View`, and tokens through the wrapper of the theme.

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

## Topics

### Group
