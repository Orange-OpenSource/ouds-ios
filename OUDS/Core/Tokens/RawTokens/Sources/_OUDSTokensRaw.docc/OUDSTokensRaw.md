# ``OUDSTokensRaw``

_Raw tokens_ are smallest _tokens_ possible. They are associated to raw values and will be finaly the values assigned to the _components_ properties.

## Overview

<!-- NOTE: Do not forget to update tokens version -->
```
🧱 Tokens version: 0.9.0
```

In fact, we choose to use as most as possible primitive types for raw values, like `Int`, `Double`, `CGFloat` or `String` so as to handle the smallest types with few impacts on the memory for ecodesign principles. Indeed with hundreds of raw tokens, it will be more efficient to store primitive small types than Swift `struct` or `class` objects. Keeping primitive types helps today to expose objects using Objective-C runtime.

So we expose also in higher level some properties so as to convert when needed some of these types to `SwiftUI` types (like `Font.Weight` and `Color`).

To keep the same semantics as the ones used in our *Figma* specifications, _typealias_ are used to as to make the links to _primitive types_ and our logic of _tokens_. These type aliases are here for those who want to make their own theme. The idea is to use the same words and grammar as the one used in the *Figma* kit and generaly in the global design system. Then users won't feel lost and will be able to see the same notions the design team handle.

Using more simple and primitive types will help also to test the library. With also type aliases we force users to use our types and not higher level types like _SwiftUI_ types. Type aliases pointing to raw values will improve also to use of thes values wuthout needing to deal with intermediate types.

We also choose to add in _extension_ all the tokens values in a separated file so as to help the *tokenator* to build files to copy and paste easily in the project and keeping all the other objects. In fact, declaring the tokens *enums* in seperated file helps us to document the associated tokens. The tokens are defined in an extension inside dedicated file which can be overriden anytime ; the result is trasnparent for the users.

Example for ``ColorRawTokens``:

```swift
// Define types for color raw tokens
public typealias ColorRawToken = String

/// Possible to write documentation in a seperated file
public enum ColorRawTokens { } // Gathers all color raw tokens (in the end, in dedicated file)

/// Place in another file which can be updated anytime
extension ColorRawTokens { // All the values

    public static let colorFunctionalWhite: ColorRawToken = "#FFFFF00F"
    public static let colorFunctionalScarlet400: ColorRawToken = "#FF4D4E00"
    public static let colorOpacityBlack0: ColorRawToken = "#00000000"
    ...
}

extension String {
    public var color: Color { // Helper for SwiftUI
        Color(hexadecimalCode: self)
    }
}
```

## Architecture

There are several _composite class_ defined to match the objects available in *Figma*.
In fact the design system implementations should expose pack of values so as to gather several tokens in one object. For exemple ``ElevationCompositeRawToken`` can be used for predefined elevations / box shadows effects, and ``FontCompositeRawToken`` can be used for predefined typography / fonts.
All such *composites* instances are defined in seperated files. In fact *tokenator* cannot generate such tokens as they are not defined in its JSON file to process because *Figma* is not able to manage *composite tokens*, even if tinkered by the design team. These tokens are updated manualy by the development team.

The raw tokens groups are decalred in `enum` objects which will gather the raw tokens in extensions.
In fact, raw tokens are defined as `static let` _stored properties_, an adding them in an `enum` is more optimized for namespaces reasons. Thus all `public enum` gathering raw tokens are defined there.

There are also *typealias* values used for the raw tokens.
Indeed these aliases are here to bring clarity and meanings in the library, and also to help users (i.e. developers) to know what kind of objects they handle with the same vocabulary as the one used in *Figma*, and in general, in the whole design system. They can be seen as a light level of abstraction with meanings, without having to define real types with `struct` or `class`.

The raw tokens values are defined in extensions of `enum` in dedicated files for the tokenator. It contains only pure raw tokens Swift values, without any type aliases definitions or objects declarations. Non-composite raw tokens are geenrated by the *tokenator* but not the composites. Fee free [to submit an issue if you spot some bugs](https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml).

## Raw tokens management

### How to use raw tokens

To use raw tokens you will have to make the suitable import for our _OUDS iOS Swift Package_ product:

```swift
// Import the product
import OUDSTokensRaw
```

Then choose the tokens you want within:
* ``BorderRawTokens`` for borders
* ``ColorRawTokens`` for colors
* ``DimensionRawTokens`` for dimensions
* ``ElevationRawTokens`` for elevations
* ``FontRawTokens`` for fonts
* ``GridRawTokens`` for grids
* ``OpacityRawTokens`` for opacities

## Topics

### Group

- ``BorderRawTokens``
- ``ColorRawTokens``
- ``DimensionRawTokens``
- ``ElevationRawTokens``
- ``GridRawTokens``
- ``OpacityRawTokens``
- ``FontRawTokens``
