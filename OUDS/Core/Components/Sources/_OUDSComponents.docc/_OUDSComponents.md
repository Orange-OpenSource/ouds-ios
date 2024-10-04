# ``OUDSComponents``

The catalog of all components provided by OUDS.

@Metadata {
    @TechnologyRoot
    @SupportedLanguage(objc)
}

## Overview

Comming soon

## Topics

### Apply shadow effect

The unified design system implemented by OUDS iOS library allows to apply *elevation effets* on a `View`, i.e. a shadow under the component.
Because the design tool in use is _Figma_ which defines such shadow with a _blur_ and a _spread_ radiuses, and because _SwfitUI_ uses only its own _radius_ definition, an extension of `View` has been implemented to let users apply some effect using an [`ElevationCompositeSemanticToken`](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/elevationcompositesemantictoken) from the [OUDSTokensSemantic](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/) library thanks to the method `shadow(elevation: ElevationCompositeSemanticToken)`.

```swift
// For example, apply the elevation effect "elevationDragLight" from your theme:
myView.shadow(elevation: theme.elevationDragLight)

// And in the theme this "elevationDragLight" has been defined for example like:
@objc open var elevationDragLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_500 }
ColorRawTokens.colorTransparentBlack400)

// And if you look deeper, the raw token "elevationBottom_3_500" can be like:
public static let elevationBottom_3_500 = ElevationCompositeRawToken(x: 0, y: 4, blur: 4, color: ColorRawTokens.colorTransparentBlack500)

// Blur will be used to compute the radius value
```

### Apply a specific typography

Your application identity can be strongly based on the *typography* you use, i.e. the font family you choose and other configuration details like the font size or the font weight.

With OUDS, typography depends to the class size, i.e. wether or not the application is in _compact mode_ or in _regular mode_, and is defined with a [`MultipleTypographyTokens`](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/multipletypographytokens). defined in the [`OUDSTkensSemantic` `TypographySemanticTokens`](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/typographysemantictokens/).

The _theme_ contains lots of `MultipleTypographyTokens` listing all the combinations of typography you can apply, and these *composite semantic tokens* use *composite raw tokens*. For example:

```swift
// Here is a definition of a semantic token inside the theme for typography "typeDisplayMedium":
@objc open var typeDisplayMedium: MultipleTypographyTokens { 
MultipleTypographyTokens(compact: TypographyRawTokens.typeBold750, regular: TypographyRawTokens.typeBold1050) 
}

// And here are the raw tokebs definitions:
public static let typeBold750 = TypographyCompositeRawToken(size: fontSize750, lineHeight: fontLineHeight850, weight: fontWeightBold)

public static let typeBold1050 = TypographyCompositeRawToken(size: fontSize1050, lineHeight: fontLineHeight1150, weight: fontWeightBold)
```

However the _theme_ must know which _font family_ to apply, and this font family can be a _custom one_ or the _system one_.
Thus, we let the users define the font family they want by overriding the `customFontFamily` property. This value will be used to compute the typography, if not defined the systme font will be used.

Thus, if you want to apply a specific typography to a `View`, supposing you defined previously the semantic tokens, just call the method you want and gives as parameter the theme (to get the custom font if defined):

```swift
// Apply typography "type body default small"
myView.typeBodyDefaultSmall(theme)

// Apply typography "type label strong X large"
myView.typeLabelStrongXLarge(theme)

// Etc.
```

### Group

