# Tokens

@Metadata {
    @PageImage(purpose: icon, source: "ic_design_token_intro")
    @PageImage(purpose: card, source: "ic_design_token_intro")
}

Design tokens represent the small, repeated design decisions that make up a design system's visual style. Tokens wrap hard-coded static values, such as hexadecimal codes for color, with self-explanatory names. They are used to define the look and feel and the style of everything. They are exposed through the themes and can be used as they are.

## Component tokens

### What they are

These _tokens_ ([OUDSTokensComponent](https://ios.unified-design-system.orange.com/documentation/oudstokenscomponent/)) are defined for components and refer to semantic tokens or raw tokens.
They can be seen as a kind of bridge between components and in the end primitive values of the design kit.

Components tokens are defined and gathered inside _Swift protocol_ so as to be exposed then through implementation of `OUDSTheme` thanks to dedicated tokens providers. Because we choose to split responsabilities and objects into their own modules, we faced troubles to make possible for children themes or providers to override properties declared in _protocols_ and defined in _extensions_.
That is the reason why tokens are exposed as `@objc open` to be available and overridable anywhere. 

Below is an example about how the component tokens are declared, defined and provided.

```swift
// Declare some component tokens for buttons with properties they must apply
public protocol ButtonComponentTokens {
    var buttonSizeMaxHeightIconOnly: SizeSemanticToken { get }
    var buttonBorderWidthDefault: BorderWidthSemanticToken { get }
    var buttonBorderRadius: BorderRadiusSemanticToken { get }
    var buttonColorBgDefaultPressedMono: MultipleColorSemanticTokens { get }
    var buttonSpacePaddingBlock: SpaceSemanticToken { get }
}

// There is an existing provider for such tokens
open class OrangeThemeButtonComponentTokensProvider { }

// Define the components tokens exposed through the theme thanks to provider
extension OrangeThemeButtonComponentTokensProvider: ButtonComponentTokens {

    // Raw tokens can be used

    @objc open var buttonSizeMaxHeightIconOnly: SizeSemanticToken { DimensionRawTokens.dimension600 }
    
    // And also semantic tokens

    @objc open var buttonBorderWidthDefault: BorderWidthSemanticToken { borders.borderWidthThicker }
    @objc open var buttonBorderRadius: BorderRadiusSemanticToken { borders.borderRadiusMd }
    @objc open var buttonColorBgDefaultPressedMono: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
    @objc open var buttonSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingInlineSpacious }
}

// This provider is then exposed through OUDSTheme as an AllButtonComponentTokensProvider
```

> Tip: In most of cases you may use the components tokens if you want to implement your own components

## Semantic tokens

### What they are

These _tokens_ ([OUDSTokensSemantic](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/)) can be used mainly for _component tokens_ to apply some style and configuration values.
They can be seen as an high level of usage with functional meanings.

A semantic token points to a raw token or another semantic token, and is used by components. 
A semantic token brings meanings, higher level notions. For example, a raw token can be a "red color", and a semantic token pointing to it can be a "danger information color". 
Semantic tokens are used by components tokens and shared definition of themes. They are splitted in kind of families, i.e. borders, colors, spacings, elevations, sizings, opacities, grids and fonts. For some of theses tokens, like for borders, subfamilies can be defined likes width, radius and style. 
Finally, any of these semantic tokens is associated to a raw value which will be - in the end - applied to *SwiftUI* views inside components. *Type aliases* will help to make a simple match between any semantic tokens and raw tokens. 
Thus if we need for example to change a warning color, supposing this color is defined as a _semantic token_, we only have to change its assigned value and all components using the _semantic token_ won't be impacted in their definition, only their rendering.

Each _semantic token_ "family" is then declared in its dedicated _Swift protocol_ any root theme must implement through *tokens providers*. Because we choose to split responsabilities and objects into their own modules, we faced troubles to make possible for children themes or providers to override properties declared in _protocols_ and defined in _extensions_.
That is the reason why tokens are exposed as `@objc open` to be available and overridable anywhere. 

To keep the same semantics as the ones used in our specifications, _type aliases_ are used to as to make the links to _primitive types_ and our logic of _tokens_. These *type aliases* are available for those who want to make their own theme. It's only syntaxic sugar to bring _design words_ in our product.

Below is an example about how the component tokens are declared, defined and provided (with [OUDSTokensComponent/ColorSemanticTokens](https://ios.unified-design-system.orange.com/documentation/oudstokenssemantic/colorsemantictokens)).

```swift
// Declare the semantic tokens
protocol ColorSemanticTokens {

    var colorBgPrimary: ColorSemanticToken { get }
    var colorBgSecondary: ColorSemanticToken { get }
    var colorBgTertiary: ColorSemanticToken { get }
    // ...
}

// There is an existing provider for colors
open class OrangeThemeColorSemanticTokensProvider { }

// Define the semantic tokens exposed through the theme thanks to provider
extension OrangeThemeColorSemanticTokensProvider: ColorSemanticTokens {

    // Possible to assign raw token of color available in the global package
    @objc open var colorBgPrimary: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }

    // Possible to assign raw token of color available in the the module
    @objc open var colorBgSecondary: ColorSemanticToken { OrangeBrandColorRawTokens.colorOrange200 }

    // Possible to refer to another semantic token of color
    @objc open var colorBgTertiary: ColorSemanticToken { colorBgSecondary }
}

// This provider is then exposed through OUDSTheme as an AllColorSemanticTokensProvider
```

> Tip: In some cases you can use the components tokens if you want to implement your own components

### Important notice

You may see the source code can be more simple, or the source code does not follow the Swift guidelines, or plenty of warnings of *SwiftLint* are disabled.

In fact, we rely to much on *Figma* and how the design system is implemented.
There are thousands of tokens, and we do not know if they will be used, how and by whom. In addition, the logic behind these tokens, their nature and names, is very tight to the web domain because the design team behind is more used to web environment than mobile ones like Android and iOS. Some tokens like composite tokens are defined in *Figma* but *Figma* is not able to manage them, it is tinkering, and the outputed JSON cannot manage that too.
In addition, *Figma* exposes the tokens in JSON, which is then parsed with our own fork and implementation of _style dictionary_ tool which struggles to output the JSON to web, Kotlin, Flutter and Swift assets.

That is the reason why:
- some *SwiftLint* warnings on tokens are disabled: not possible to have doc of public tokens, too long names, too long lines, too long body, too long identifiers
- some tokens do not have full names, e.g. "colorBackground" are named "colorBg"
- we have thousands of tokens, as thousands of tokens are defined
- we do not know if there is dead code because API are public

Feel free to [send issues](https://github.com/Orange-OpenSource/ouds-ios/issues/new/choose) and [open a discussion](https://github.com/Orange-OpenSource/ouds-ios/discussions/new?category=q-a) for further details or if you spotted something interesting.

## Raw tokens

### What they are

_Raw tokens_ ([OUDSTokensRaw](https://ios.unified-design-system.orange.com/documentation/oudstokensraw/)) are smallest _tokens_ possible. They are associated to raw values and will be finaly the values assigned to the _components_ properties.

In fact, we choose to use as most as possible primitive types for raw values, like `Int`, `Double`, `CGFloat` or `String` so as to handle the smallest types with few impacts on the memory for ecodesign principles. Indeed with hundreds of raw tokens, it will be more efficient to store primitive small types than *structs* or *classes*.

So we expose also in higher level some properties so as to convert when needed some of these types to `SwiftUI` types (like `Font.Weight` and `Color`).

To keep the same semantics as the ones used in our specifications, _type alias_ are used to as to make the links to _primitive types_ and our logic of _tokens_. These type aliases are available for those who want to make their own theme for example.

Using more simple and primitive types will help also to test the library. With also type aliases we force users to use our types and not higher level types like _SwiftUI_ types.

We also choose to add in _extension_ all the tokens values in a separated file so as to help the *Figma*-JSON-to-Swift parser (*el famoso tokenator*) to build files to copy and past easily in the project and keeping all the other objects.

Example for [ColorRawTokens](https://ios.unified-design-system.orange.com/documentation/oudstokensraw/colorrawtokens):

```swift
// Define type alias for color raw tokens, we don't care in higher level their real type, just use aliases
public typealias ColorRawToken = String

// Declared in a file not updated automatically
public enum ColorRawTokens { } 

// Defined in file updated by tokenator
extension ColorRawTokens { // Gathers all color raw tokens, use enums for namespace optimization with static let

    public static let colorFunctionalWhite: ColorRawToken = "#FFFFFF"
    public static let colorOpacityBlack0: ColorRawToken = "#00000000"
    ...
}

// The OUDS library still exposes this computed property
extension String {
    public var color: Color {
        Color(hexadecimalCode: self)
    }
}

// Themes can embed their own tokens matching the good type
enum OrangeBrandColorRawTokens {
    public static let colorOrange200: ColorOrangeBrandRawToken = "#FFC18AFF"
}
```

> Note: In most of cases you won't use these raw tokens as they are already in yse by component and semantic tokens

## Add, edit or remove tokens

If you need to add, update or remove tokens, you will have to follow some simple steps.
You may need to [create an issue](https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml) or [a pull request](https://github.com/Orange-OpenSource/ouds-ios/pulls) to submit the evolutions you want. [The wiki](https://github.com/Orange-OpenSource/ouds-ios/wiki/20-%E2%80%90-How-to-update-tokens) can be also helpful.
