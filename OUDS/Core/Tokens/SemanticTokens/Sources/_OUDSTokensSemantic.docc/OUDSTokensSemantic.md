# ``OUDSTokensSemantic``

These _tokens_  can be used mainly for _component tokens_ ([OUDSTokensComponent](https://ios.unified-design-system.orange.com/documentation/oudstokenscomponent/)) to apply some style and configuration values.
They can be seen as an high level of usage with functional meanings.

## Overview

Thus if we need for example to change a warning color, supposing this color is defined as a _semantic token_, we onlyhave to change its assigned value and all components using the _semantic token_ won't be impacted in their definition.

In addition, there are hundreds of _semantics tokens_ and we needed to add them to the abstract root theme using extensions for clarity reasons to prevent to have a _Swift class_ with thousands of lines. Each _raw token_ "family" is then declared in its dedicated _Swift protocol_ any root theme must implement. Because we choose to split responsabilities and objects into their own modules, we faced troubles to make possible for children themes to override properties declared in _protocols_ and defined in _extensions_.

That is the reason why tokens are exposed as `@objc open` to be available and oveeridable anywhere. 

To keep the same semantics as the ones used in our specifications, _typealias_ are used to as to make the links to _primitive types_ and our logic of _tokens_. These type aliases are available for those who want too make their own theme.

Example with ``ColorSemanticTokens``:

```swift
// Delcare the semantic tokens
protocol ColorSemanticTokens {
    var sysColorBrandNeutralMutedWhite: ColorAliasSemanticToken? { get }
}

// Define the semantic tokens exposed through the theme
extension OUDSTheme: ColorSemanticTokens {

    @objc open var sysColorBrandNeutralMutedWhite: ColorAliasSemanticToken? { ColorRawTokens.colorFunctionalWhite }
}
```

## Topics

### Group

- ``BorderSemanticTokens``
- ``ColorSemanticTokens``
- ``DimensionSemanticTokens``
- ``ElevationSemanticTokens``
- ``GridSemanticTokens``
- ``OpacitySemanticTokens``
- ``SizingSemanticTokens``
- ``SpacingSemanticTokens``
- ``TypographySemanticTokens``
