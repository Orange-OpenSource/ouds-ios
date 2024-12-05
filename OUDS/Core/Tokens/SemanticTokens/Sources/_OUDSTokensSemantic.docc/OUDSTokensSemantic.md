# ``OUDSTokensSemantic``

These _tokens_ can be used mainly for _component tokens_ ([OUDSTokensComponent](https://ios.unified-design-system.orange.com/documentation/oudstokenscomponent/)) to apply some style and configuration values ; today _component tokens_ or _components_ are not defined yet.
They can be seen as an high level of usage with functional meanings.

## Overview

If we need for example to change a warning color, supposing this color is defined as a _semantic token_, we only have to change its assigned value and all components using the _semantic token_ won't be impacted in their definition.

In addition, there are hundreds of _semantics tokens_ and we needed to add them to the abstract root theme using extensions for clarity reasons to prevent to have a _Swift class_ with thousands of lines. Each _raw token_ "family" is then declared in its dedicated _Swift protocol_ any root theme must implement. Because we choose to split responsabilities and objects into their own modules, we faced troubles to make possible for children themes to override properties declared in _protocols_ and defined in _extensions_.

That is the reason why tokens are exposed as `@objc open` to be available and overridable anywhere. 

To keep the same semantics as the ones used in our specifications, _typealias_ are used so as to make the links to _primitive types_ and our logic of _tokens_. These type aliases are available for those who want to make their own theme.

Example with ``ColorSemanticTokens``:

```swift
// Declare the semantic tokens
protocol ColorSemanticTokens {

    var colorBgPrimary: ColorSemanticToken { get }
    var colorBgSecondary: ColorSemanticToken { get }
    var colorBgTertiary: ColorSemanticToken { get }
    // ...
}

// Define the semantic tokens exposed through the theme
extension OUDSTheme: ColorSemanticTokens {

    // Color is available in the module of OUDSTheme
    @objc open var colorBgPrimary: ColorSemanticToken { ColorRawTokens.colorFunctionalWhite }

    // If the semantic token refers to a raw token not stored in the OUDSTheme module, override later and throw error because unxpected state if used
    @objc open var colorBgSecondary: ColorSemanticToken { fatalError("🤖 Raw token unavailable for colorBgSecondary!") }

    // Possible to have tokens not defined in lwoer level must only in themes implementation, throw error if used because unexpected state
    @objc open var colorBgTertiary: ColorSemanticToken { fatalError("🤖 No value defined for colorBgTertiary!") }
}

// Add missing values
extension OrangeTheme: ColorSemanticTokens {

    // Define value value with the accessible token 
    @objc open var colorBgSecondary: ColorSemanticToken { OrangeBrandColorRawTokens.colorOrange200 }
}
```

## Architecture

The *Multiples* folder contains some _composite class_ defined to pack double values for dedicated needs, like size classes management (_regular_ or _compact_ device modes), and also for color schemes management (_light_ and _dark_ modes).
Such *composites* are not the same as the ones defined in the *Figma* design system, they are just utilities to handle tuple of values, without the syntax of tuples and with some helper functions.
We would like to define one class for all combinations of things depending to light and dark modes, and another for regular and compact modes. However, it implies to use _Swift generics_ and it is not compatible with Objective-C runtime (we use through `@objc` keyword).

We would like to define one class for all combinations of things depending to light and dark modes, and another for regular and compact modes. However, it implies to use _Swift generics_ and it is not compatible with Objective-C runtime (we use through `@objc` keyword).

The *TypeAliases* folder contains all the *typealias* values used for the semantic tokens.
Indeed these aliases are here to bring clarity and meanings in the library, and also to help users (i.e. developers) to know what kind of objects they handle with the same vocabulary as the one used in *Figma*, and in general, in the whole design system. They can be seen as a ligh level of abstraction with meanings, without having to define real types with `struct` or `class`.
Type aliases here point to raw tokens aliases, thus by transition they point to real types.

The *Values* folder is maybe the hotter one.
In fact all the semantic tokens values are defined there, and if a JSON to Swift parser generate files, these files must be stored there. We need any _theme_ can embed and override all or some of the tokens, and if a new theme must be implemented from nothing, it must implement all the semantic tokens. Thus each semantic tokens group is declared in a Swft `protocol`.
These protocols list all semantic tokens for each "family". Thus, any theme implementation (at least `OUDSTheme`) must implement the values, and if possible through a _Swift_ extension of the `class` so as to keep seperated the objects.

In a nutshell, declare the tokens somewhere in protocols, and define theme in theme implementation.

## Semantic tokens management

### How to add semantic tokens

First, you need to define which from family this semantic comes. We have today 9 families: *border*, *color*, *dimension*, *elevation*, *grid*, *opacity*, *sizing*, *spacing* and *typography*.

If your token is not from one of these groups, maybe you should redesign your token or create a new family. To do that, you will have to create a dedicated Swift `protocol`, with a useful name, and declare as a `var` the semantic token. If you already know the family, just update the matching files.

If you need to define Swift `typealias`, update the suitable file in the *TypeAliases* folder. If you think users may handle your tokens with tuples, or pack of tokens, you can add your own *composite* object.

Please, respect the nomenclature of the files, e.g. for a new family "Awesome semantic" tokens:
- values must be in `AwesomeSemanticTokens.swift`
- type aliases must be in `AwesomeSemanticTokens+Aliases.swift`
- mutiple objects must be in `MultipleAwesomeTokens.swift`

Then, update the unit tests. For each semantic tokens we check if a subtheme can override the token, i.e. update the `MockTheme` by overring the property with a fake value, then compare it to the `OUDSTheme` containing a default value. If you have defined also composite objects, add unit tests to check if they do their job.

### How to update or remove semantic tokens

Quite simple, find the semantic token you want to update or remove, and update or remove it.
But beware, if you change the name of the property or if you move it from a `protocol` to another, or if you remove the token, you must keep retrocompatibility as much as possible so as to avoid to break any public API. Keep also the CHANGELOG and/or the release updated with some BREAKING CHANGE notification, and also the Git history clean.

If you update the value, keep also the CHANGELOG and/or RELEASE NOTE updated so as to let yout users know the variables have been changed.

### Some note about composites

The *tokenator* is not able today to generate composites tokens, i.e. tokens which contain by definition several properties.
For example, *elevation semantic token* dedicated to bow shadows are composed by several properties (x, y, blur, shadow).
*Typography semantic token* can be token containing several properties too (weght, size, spacinf, font family).
These are considered as *composite tokens*. They are defined in dedicated protocols and files.
Thus when the *tokenator* generates tokens without managing composites, the file can still be used as is with generated tokens, and the composites are not erased.

## How to use semantic tokens

In fact, the semantic tokens are declared and gathered in _Swift protocol_ so as to force any theme to implement them, and also to allow any theme to expose such properties wathever the implementation of the theme is.
Because *semantic tokens* have for values *raw tokens*, and these *raw tokens* have for values primitive types, and all these tokens are declared with *type aliases* refering all together, you can handle a *semantic token* directly in your view because the final value will be used.
Thus, get the theme and call the needed property with some helpers.

```swift
struct SomeView: View {

    @Environment(\.theme) private var theme // Supposed you used in your root view the `OUDSThemeableView` to register the theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        Rectangle()
            .frame(width: theme.sizeIconDecorative2Xl, height: theme.sizeIconDecorativeXl)
            .foregroundColor(theme.colorBgSecondary.color(for: colorScheme))
            .shadow(elevation: theme.elevationRaised.elevation(for: colorScheme))
            .padding(.bottom, theme.spaceFixedNone)
    }
/*
    - The theme provides size semantic tokens "sizeIconDecorative2Xl" and "sizeIconDecorativeXl"
    - The theme provides a color semantic token "colorBgSecondary" with values for light and dark scheme, and you can use the color(for:) helper
    - The theme provides an elevation semantic token "elevationRaised" with values for compact and regualr size classes, and you can use the elevation(for:) helper
    - The theme provides a space semantic token "spaceFixedNone" usable as is
*/
}

// Do not forget in your app to use the `OUDSThemeableView` for your theme, e.g. `OrangeTheme`
@main
struct Showcase: App {

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

## Topics

### Group

- ``BorderSemanticTokens``
- ``ColorSemanticTokens``
- ``ColorMultipleSemanticTokens``
- ``ElevationSemanticTokens``
- ``ElevationCompositeSemanticTokens``
- ``ElevationMultipleSemanticTokens``
- ``GridSemanticTokens``
- ``OpacitySemanticTokens``
- ``SizeSemanticTokens``
- ``SizeMultipleSemanticTokens``
- ``SpaceSemanticTokens``
- ``TypographySemanticTokens``
- ``TypographyCompositeSemanticTokens``
- ``TypographyMultipleSemanticTokens``
