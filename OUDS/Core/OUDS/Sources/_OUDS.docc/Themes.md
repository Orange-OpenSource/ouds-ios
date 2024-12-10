# Themes

_Themes_ are applications of specific values for _components tokens_ and _semantic tokens_ using in the end _raw tokens_.
A _theme_ contains any relevant _semantic tokens_ and _component tokens_ which can be used for components rendering.
A _theme_ has also _raw tokens_ associated to primitive types so as to give to _components_, written with _SwiftUI_, the needed values in the suitable type. A _theme_ can add for itself any new _tokens_.

This library exposes today up to two themes:
1. [Orange Theme](https://ios.unified-design-system.orange.com/documentation/oudsthemesorange/) which can be seen as the default _theme_ ;
2. [Inverse Theme](https://ios.unified-design-system.orange.com/documentation/oudsthemesinverse/) for other use cases.
They both are based on an `OUDSTheme` defining default values.

_Themes_ can be defined thanks to `open class` in Swift. It allows inheritance and derivation.

_Themes_ have Swift _extensions_ so as to get the _tokens_ to define. These tokens are overriden thanks to `@objc open` combination so as to make possible to override these values in extensions (thanks to `@objc`) and from objects outside the module (thanks to `open`). Thus we can split values and responsabilities in different _Swift Package Manager_ targets and keep overriding and inheritance possible.

Not that other brands like _Parnasse_ or _Sosh_ can be implemented in a dedicated insternal repository with their own assets.

## Architecture

A theme is, a fact, a big massive bucket of semantic tokens. We choose to pack all semantic tokens in protocols, so as to force any theme to manage them. Because Swift does not have notions of abstract classes compared to Kotlin, we have choosen to define an `OUDSTheme` which can be considered like an almost-abstract class.
Then, a white label theme may just inherit from this class and override the tokens it needs. The real, default theme to use, will be the `OrangeTheme` providing in its module brand colors and overriding some tokens with the suitable values. In fact, because the `OUDSTheme` and the `OrangeTheme` are isolated, the `OUDSTheme` cannot get the Orange brand colors, so some tokens cannot be defined at that level but remain overridable in the subclass.
The object oriented paradigm implementation in Swift is a bit different that the one found with Java or Kotlin. For example we do not have abstract classes and Swift relies a lot in composition with protocols and extensions. Thus a theme can be composed using protocols containing as properties the semantics tokens. These tokens must also be overridable. Any default values and logic can be in a kind of fake abstract class named OUDSTheme. This theme will be then subclassed using OOP inheritance in the real default theme named OrangeTheme. Any other theme can be a subclass of OrangeTheme (e.g. country specific theme) or OUDSTheme (for white label).
Themes must be able to override semantic tokens and components tokens, and use its own raw or semantic tokens without sharing them to other themes. The existing raw tokens, shared between all themes, are not overridable because their definitions are frozen.

## Use themeable view

```swift
// Make imports
import OUDS // For OUDSThemeableView
import OUDSThemesOrange // For OrangeTheme

// Add themeable view to your root view to use the OrangeTheme
OUDSThemeableView(theme: OrangeTheme()) {
    YourRootView()
}

// Or use your custom theme if you want
OUDSThemeableView(theme: YourCustomTheme()) {
    YourRootView()
}
```

## Define a custom theme if needed

It is quite simple, you have to follow several steps.

You will have to create a _Swift class_ which will inherit from `OrangeTheme` or `OUDSTheme`.
You can see `OrangeTheme` as more specified and less abtract as `OUDSTheme` which is the base of all themes. We do not recommend to use directly the `OUDSTheme` as is.
Then, you should override the _semantic tokens_ and _components tokens_ you want ; we recommend to use _Swift extensions_ for clarity reasons.
If your theme needs to define its own _raw tokens_, you can also define them using a `enum` and the _raw tokens types_.

First, use the suitable imports:
```swift
import OUDS                 // To get OUDSTheme
import OUDSTokensRaw        // To get raw tokens
import OUDSTokensSemantic   // To get semantic tokens
import OUDSTokensComponent  // To get component tokens
import OUDSThemesOrange     // To override OrangeTheme (which is default theme)
```

Then, declare the class:
```
// If you jsut want to make a subtheme with some changes
final class YourCustomTheme: OrangeTheme { }

// Or for white label themes or themes with more configurations not that much related to OrangeTheme, choose the one you want
final class YourCustomTheme: OUDSTheme { }
```

And define the theme by overriding the values you want:

```
extension YourCustomTheme {

    // Override components tokens
    // Not define dyet
    
    // Override colors semantic tokens
    override public var colorBgPrimary: ColorSemanticToken { MultipleColorSemanticTokens(ColorRawTokens.colorFunctionalDarkGray880) }
    
    // Override some fonts semantic tokens
    public var fontFamily: TypographyFontFamilySemanticToken { FontRawTokens.fontFamilySystemSFPro }
    public var fontFamilyBody: TypographyFontFamilySemanticToken { MyOwnFontRawTokens.someFontBody }

    // Etc.
}
```

You can defined your own set of raw tokens, for example:
```
public typealias MyOwnTypographyRawTokens = FontRawTokens // Refer to type FontRawTokens for consistency, declared in OUDSTokensRaw

public enum MyOwnFontRawTokens {

    public static let someFontBody: MyOwnTypographyRawTokens = "Arial"
    
}
```

Finaly for your app root view:

```swift
import SwiftUI
import OUDS // To get ``OUDSThemeableView``

struct MyAppRootView: View {

    var body: some View {
        OUDSThemeableView(theme: YourCustomTheme()) {
            // ...
        }
    }
}
```

All components the OUDS library provides are based on themes, handle through the abstract `OUDSTheme`, exposing *semantic tokens*, defined by *raw tokens* assigned to usable final values.
In few words, if you want to change the look and feel for the OUDS components you use, you will have to override the matching *semantic tokens*, but it will bring side effects as these *semantic tokens* are shared accross several components.
In the future we will have components and *component tokens*.

You are also able to define your components and your *semantic tokens* used by them.

