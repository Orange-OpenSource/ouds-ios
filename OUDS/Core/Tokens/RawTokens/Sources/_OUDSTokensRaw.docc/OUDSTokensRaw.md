# ``OUDSTokensRaw``

_Raw tokens_ are smallest _tokens_ possible. They are associated to raw values and will be finaly the values assigned to the _components_ properties.

## Overview

In fact, we choose to use as most as possible primitive types for raw values, like `Int`, `Double`, `CGFloat` or `String` so as to handle the smallest types with few impacts on the memory for ecodesign principles. Indeed with hundreds of raw tokens, it will be more efficient to store primitive small types than Swift `struct` or `class` objects.

So we expose also in higher level some properties so as to convert when needed some of these types to `SwiftUI` types (like `Font.Weight` and `Color`).

To keep the same semantics as the ones used in our specifications, _typealias_ are used to as to make the links to _primitive types_ and our logic of _tokens_. These type aliases are available for those who want too make their own theme.

Using more simple and primitive types will help also to test the library. With also type aliases we force users to use our types and not higher level types like _SwiftUI_ types.

We also choose to add in _extension_ all the tokens values in a separated file so as to help the *Figma*-JSON-to-Swift parser to build files to copy and paste easily in the project and keeping all the other objects.

Example for ``ColorRawTokens`:

```swift
// Define types for color raw tokens
public typealias ColorRawToken = String

public enum ColorRawTokens { } // Gathers all color raw tokens

extension ColorRawTokens { // In a separated file

    public static let colorFunctionalWhite: ColorRawToken = "#FFFFFF"
    public static let colorFunctionalScarlet400: ColorRawToken = "#FF4D4E"
    public static let colorTransparentBlack0: ColorRawToken = apply(opacity: OpacityRawTokens.opacity0, on: colorFunctionalBlack)
    ...
}

extension String {
    public var color: Color { // Helper for SwiftUI
        Color(hexadecimalCode: self)
    }
}
```

## Architecture

The *Composites* folder contains some _composite class_ defined to match the objects available in *Figma*.
In fact the design system implementations should expose pack of values so as to gather several tokens in one object. For exemple `ElevationCompositeRawToken` can be used for predefined elevations effects, and `TypographyCompositeRawToken` can be used for predefined typography.
All such *composites* are defined here.

The *Declarations* folder contains all the Swift `enum` objects which will gather the raw tokens.
In fact, raw tokens are defined as `static let` _stored properties_, an adding them in an `enum` is more optimized for namespaces reasons. Thus all `public enum` gathering raw tokens are defined there.

The *TypeAliases* folder contains all the *typealias* values used for the raw tokens.
Indeed these aliases are here to bring clarity and meanings in the library, and also to help users (i.e. developers) to know what kind of objects they handle with the same vocabulary as the one used in *Figma*, and in general, in the whole design system. They can be seen as a ligh level of abstraction with meanings, without having to define real types with `struct` or `class`.

The *Values* folder is maybe the hotter one.
In fact all the raw tokens values are defined there, and if a JSON to Swift parser generate files, these files must be stored there. It contains only pure raw tokens Swift values, without any type aliases definitions or objects declarations.

In a nutshell, place the generated values somewhere, and the types and objects elsewhere.

## Topics

### Group

- ``BorderRawTokens``
- ``ColorRawTokens``
- ``DimensionRawTokens``
- ``ElevationRawTokens``
- ``GridRawTokens``
- ``OpacityRawTokens``
- ``TypographyRawTokens``
