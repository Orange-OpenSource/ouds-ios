# ``OUDSTokensSemantic``

@Metadata {
    @PageImage(purpose: icon, source: "ic_design_token_figma_semantic")
    @DisplayName("Tokens for semantics", style: symbol)
    @TitleHeading("Library")
}
<!-- 
Do not add @PageImage(purpose: card) because not managed for landing page of online doc.
See https://github.com/swiftlang/swift-docc/issues/1283
-->

These _tokens_ can be used mainly for _component tokens_ to apply some style and configuration values ; today _component tokens_ or _components_ are not defined yet.
They can be seen as an high level of usage with functional meanings.

## Overview

<!-- NOTE: Do not forget to update tokens version -->
```
🧬 Core version: 1.9.0
```

If we need for example to change a warning color for a button (which has its component tokens, see [OUDSTokensComponent](https://ios.unified-design-system.orange.com/documentation/oudstokenscomponent/)), supposing this color is defined as a _semantic token_, we only have to change its assigned value and all components using the _semantic token_ won't be impacted in their definition. In fact, semantic tokens are here to bring meaning, semantic, between raw values and components.

In addition, there are hundreds of _semantics tokens_ which must be exposed in the end through the theme. Each _semantic token_ "family" is declared in its dedicated _Swift protocol_. This protocol is then used for the tokens providers embeded inside the theme.

Because we choose to split responsabilities and objects into their own modules, we faced troubles to make possible for children themes to override properties declared in _protocols_ and defined in _extensions_.
That is the reason why tokens are exposed as `@objc open` to be available and overridable anywhere. 

To keep the same semantics as the ones used in our specifications, _typealias_ are used so as to make the links to _primitive types_ and our logic of _tokens_. These type aliases are available for those who want to make their own theme.

Example with ``ColorSemanticTokens``:

```swift
// Declare the semantic tokens
protocol ColorSemanticTokens {

    var bgPrimary: ColorSemanticToken { get }
    var bgSecondary: ColorSemanticToken { get }
    var bgTertiary: ColorSemanticToken { get }
    // ...
}

// Ensure you have a provider
open class OrangeThemeColorSemanticTokensProvider { }

// Define the semantic tokens to expose through the theme thanks to the provider
extension OrangeThemeColorSemanticTokensProvider: ColorSemanticTokens {
    @objc open var bgPrimary: ColorSemanticToken { ColorRawTokens.functionalWhite }
    @objc open var bgSecondary: ColorSemanticToken { OrangeBrandColorRawTokens.colorOrange200 }
    @objc open var bgTertiary: ColorSemanticToken { bgSecondary }
}

// An instance of OrangeThemeColorSemanticTokensProvider will be assigned to OUDSTheme as AllColorSemanticTokensProvider
```

## Architecture

The *Multiples* objects are _composite class_ defined to pack double values for dedicated needs, like size classes management (_regular_ or _compact_ device modes), and also for color schemes management (_light_ and _dark_ modes).
Such *composites* are not the same as the ones defined in the *Figma* design system, they are just utilities to handle tuple of values, without the syntax of tuples and with some helper functions.

We would like to define one class for all combinations of things depending to light and dark modes, and another for regular and compact modes. However, it implies to use _Swift generics_ and it is not compatible with Objective-C runtime (we use through `@objc` keyword).

There are also several *typealias* values used for the semantic tokens.
Indeed these aliases are here to bring clarity and meanings in the library, and also to help users (i.e. developers) to know what kind of objects they handle with the same vocabulary as the one used in *Figma*, and in general, in the whole design system. They can be seen as a light level of abstraction with meanings, without having to define real types with `struct` or `class`.
Type aliases here point to raw tokens aliases, thus by transition they point to real types.

The semantic tokens are declared through protocols. These protocols will be then implemented by the providers in higher level (i.e. theme level like *OrangeTheme*).

The tokens providers are _Swift class_ used to wrap semantic tokens definitions by implementing the protocols. We do not want to store all the semantic and component tokens in the theme, and the use of providers will improve the developer experience. It will wrap all tokens by "family" and should expose them through the suitable protocols.
Type aliases are also defined to merge protocols for the same tokens groups. Thus the `OUDSTheme` will contain wrappers exposed and use through a subset of protocols.

```swift
// Colors are declared in two protocols: the "simple" and the "multiple"
public protocol ColorSemanticToken { ... }
public protocol ColorMultipleSemanticTokens { ... }

// These protoocols are merged in type aliase
public typealias AllColorSemanticTokensProvider = ColorSemanticTokens & ColorMultipleSemanticTokens

// For example, the provider for the colors basically is:
open class OrangeThemeColorSemanticTokensProvider { ... }

// The provider is composed by protocols containing tokens
extension OrangeThemeColorSemanticTokensProvider: ColorSemanticTokens {
    @objc open var opacityTransparentLight: ColorSemanticToken { ColorRawTokens.opacityBlack0 }
    @objc open var opacityTransparentDark: ColorSemanticToken { ColorRawTokens.white0 }
    ...
}
extension OrangeThemeColorSemanticTokensProvider: ColorMultipleSemanticTokens {
    @objc open var opacityTransparent: MultipleColorSemanticTokens { MultipleColorSemanticTokens(light: opacityTransparentLight, dark: opacityTransparentDark) }
    ...
}

// The "abstract" object of theme exposes the provider through this subset of protocols
open class OUDSTheme: @unchecked Sendable {
    public let colors: AllColorSemanticTokensProvider
}

// And finaly, the default theme, which can be subclassed, exposes the tokens through the provider
open class OrangeTheme: OUDSTheme, @unchecked Sendable { ... }

// e.g.: theme.colors.invisibleBlack
```

## Semantic tokens management

### Some note about composites

The *tokenator* is not able today to generate composites tokens, i.e. tokens which contain by definition several properties.

For example, *elevation semantic token* dedicated to box shadows are composed by several properties (x, y, blur, shadow).
*Font semantic token* can be token containing several properties too (weight, size, spacing, font family).
These are considered as *composite tokens*. They are defined in dedicated protocols and files.
Thus when the *tokenator* generates tokens without managing composites, the file can still be used as is with generated tokens, and the composites are not erased.

### Particular cases with semantic tokens

#### Closed semantic tokens

There are some semantic tokens of colors which must not be overridable ; this is a rule defined in the design system kit. These tokens are all `repository*` tokens. They are only defined at once and are considered as "closed tokens".

Also the _dimension_ semantic tokens are closed.

#### Semantic tokens with forbidden values

It is possible to have some undefined color semantic tokens. 
Indeed some themes can use just a smaller set of colors, thus some semantic tokens of colors are not relevant. 
Because Figma cannot manage "optional" tokens, and because it will make heavier the management of tokens in Swift pakcage side, the forbidden value is used. 
This forbidden value is in tokenator side the "transparent red", i.e. #FF000000. 
But in Swift package side, this value is converted to "ouds-forbidden-color-value", and associated documentation updated. 

> Important: Then, even if users use these tokens, even if not specified in theme and documentation and Figma specifications, this value won't be successfully parsed as color and program will crash. 

## How to use semantic tokens

In fact, the semantic tokens are declared and gathered in _Swift protocol_ so as to force any theme to implement them, and also to allow any theme to expose such properties wathever the implementation of the theme is, across providers.
Because *semantic tokens* have for values *raw tokens*, and these *raw tokens* have for values primitive types, and all these tokens are declared with *type aliases* refering all together, you can handle a *semantic token* directly in your view because the final value will be used.
Thus, get the theme and call the needed property with some helpers.

```swift
struct SomeView: View {

    @Environment(\.theme) private var theme // Supposed you used in your root view the `OUDSThemeableView` to register the theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        Rectangle()
            .frame(width: theme.sizes.iconDecorative2Xl, height: theme.sizes.iconDecorativeXl)
            .foregroundColor(theme.colors.bgSecondary.color(for: colorScheme))
            .shadow(elevation: theme.elevations.raised.elevation(for: colorScheme))
            .padding(.bottom, theme.spaces.fixedNone)
    }
/*
    - The theme provides size semantic tokens "iconDecorative2Xl" and "iconDecorativeXl"
    - The theme provides a color semantic token "bgSecondary" with values for light and dark scheme, and you can use the color(for:) helper
    - The theme provides an elevation semantic token "raised" with values for compact and regualr size classes, and you can use the elevation(for:) helper
    - The theme provides a space semantic token "fixedNone" usable as is
    - Environment variables like color scheme must be retrieved through View, and then given to theme
*/
}

// Do not forget in your app to use the `OUDSThemeableView` for your theme, e.g. `OrangeTheme`
@main
struct DesignToolbox: App {

    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeTheme()) {
                // Your root view
                ...
            }
        }
    }
}
```

The semantic tokens are wrapped in tokens provider acessible through the themes:

Semantic tokens provider       | Description                          
------------------------------ | ------------------------------------- 
borders                        | For borders (width, styles, radius...)  
colors                         | For colors with also meta objects combining light and dark versions)           
colorModes                     | Kind of frozen and not generated tokens about management of colors           
charts                         | For charts, but optional and not defined in all themes
elevations                     | For elevations to produc shadow effects
fonts                          | For fonts (weights, letter spacings, sizes, line heights...)
grids                          | For grids
opacities                      | For opacities
sizes                          | For size of elements
spaces                         | For paddings and margins

## Topics

### Group

- ``BorderSemanticTokens``
- ``ColorSemanticTokens``
- ``ColorModeSemanticTokens``
- ``ColorMultipleSemanticTokens``
- ``ColorModeMultipleSemanticTokens``
- ``ColorChartSemanticTokens``
- ``ColorChartMultipleSemanticTokens``
- ``ElevationSemanticTokens``
- ``ElevationMultipleSemanticTokens``
- ``ElevationCompositeSemanticTokens``
- ``GridSemanticTokens``
- ``OpacitySemanticTokens``
- ``SizeSemanticTokens``
- ``SizeMultipleSemanticTokens``
- ``SpaceSemanticTokens``
- ``SpaceMultipleSemanticTokens``
- ``FontSemanticTokens``
- ``FontCompositeSemanticTokens``
- ``FontMultipleSemanticTokens``
