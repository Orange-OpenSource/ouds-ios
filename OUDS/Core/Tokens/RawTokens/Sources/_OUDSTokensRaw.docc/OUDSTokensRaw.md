# ``OUDSTokensRaw``

_Raw tokens_ are smallest _tokens_ possible. They are associated to raw values and will be finaly the values assigned to the _components_ properties.

## Overview

In fact, we choose to use as most as possible primitive types for raw values, like `Int`, `Double`, `CGFloat` or `String` so as to handle the smallest types with few impacts on the memory for ecodesign principles. Indeed with hundreds of raw tokens, it will be more efficient to store primitive small types than structs or classes.

So we expose also in higher level some properties so as to convert when needed some of these types to `SwiftUI` types (like `Font.Weight` and `Color`).

To keep the same semantics as the ones used in our specifications, _typealias_ are used to as to make the links to _primitive types_ and our logic of _tokens_. These type aliases are avaialble for those who want too make their own theme.

Using more simple and primitive types will help also to test the library. With also type aliases we force users to use our types and not higher level types like _SwiftUI_ types.

Example for ``ColorRawTokens`:

```swift
// Define types for color raw tokens
public typealias ColorRawToken = String

public enum ColorRawTokens { // Gathers all color raw tokens

    public static let colorFunctionalWhite: ColorRawToken = "#FFFFFF"
    public static let colorFunctionalScarlet400: ColorRawToken = "#FF4D4E"
    public static let colorTransparentBlack0: ColorRawToken = apply(opacity: OpacityRawTokens.opacity0, on: colorFunctionalBlack)
    ...
}

extension String {
    public var color: Color {
        Color(hexadecimalCode: self)
    }
}
```

## Topics

### Group

- ``BorderRawTokens``
- ``ColorRawTokens``
- ``DimensionRawTokens``
- ``ElevationRawTokens``
- ``GridRawTokens``
- ``OpacityRawTokens``
- ``TypographyRawTokens``
