# ``OUDSTokensComponent``

These _tokens_ can be used to apply some style and configuration values to _components_.

## Overview

Thus if a component need to change for example its _background color_, and if a _component token_ is used for it, then only the value of this _token_ should be changed without any modification on the _component_ definition.
_Components_ use _component tokens_ exposed through the _theme_ to get their style values.

Example with `FormsTextInputComponentToken`:

```swift
public protocol FormsTextInputComponentToken {
    var ftiTitleFontWeight: TypographyFontWeightSemanticToken { get }
    var ftiTitleFontSize: TypographyFontSizeSemanticToken { get }
    var ftiTitleColor: ColorSemanticToken { get }
    
    var ftiBorderColor: ColorSemanticToken { get }
    var ftiBorderStyle: BorderStyleSemanticToken { get }
    var ftiBorderWidth: BorderWidthSemanticToken { get }
}

extension OUDSTheme: FormsTextInputComponentToken {
    private static let defaultBlack: ColorSemanticToken = ColorRawTokens.colorFunctionalBlack
    private static let defaultWhite: ColorSemanticToken = ColorRawTokens.colorFunctionalWhite

    @objc open var ftiTitleFontWeight: TypographyFontWeightSemanticToken { fontWeightHeading }
    @objc open var ftiTitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelLarge }
    @objc open var ftiTitleColor: ColorSemanticToken { colorContentBrandPrimaryLight ?? Self.defaultBlack }
    
    @objc open var ftiBorderColor: ColorSemanticToken { colorBorderEmphasisLight ?? Self.defaultBlack }
    @objc open var ftiBorderStyle: BorderStyleSemanticToken { borderStyleDefault }
    @objc open var ftiBorderWidth: BorderWidthSemanticToken { borderWidthThin }
}

```


## Topics

### Group

- ``FormsTextInputComponentToken``

