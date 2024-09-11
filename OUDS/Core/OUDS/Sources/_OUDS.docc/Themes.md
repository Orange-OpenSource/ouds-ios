# Themes

_Themes_ are applications of specific values for _components tokens_ and _semantic tokens_ using in the end _raw tokens_.
A _theme_ contains any relevant _semantic tokens_ and _component tokens_ which can be used for components rendering.
A _theme_ has also _raw tokens_ associated to primitive types so as to give to _components_, written with _SwiftUI_, the needed values in the suitable type. A _theme_ can add for itself any new _tokens_.

This library exposes today up to two themes:
1. <doc://OUDSThemesOrange/OrangeTheme> which can be seen as the default _theme_
2. <doc://OUDSThemesSosh/SoshTheme> for *Sosh*.

They both are based on an `OUDSTheme` defining default values.

_Themes_ can be defined thanks to `open class` in Swift. It allows inheritance and derivation.

_Themes_ have Swift _extensions_ so as to get the _tokens_ to define. These tokens are overriden thanks to `@objc open` combination so as to make possible to override these values in extensions (thanks to `@objc`) and from objects outside the module (thanks to `open`). Thus we can split values and responsabilities in different _Swift Package Manager_ targets and keep overriding and inheritance possible.


## Use themeable view

```swift
// Make imports
import OUDS
import OUDSThemesOrange

// Add themeable view to your root view
OUDSThemeableView(theme: OrangeTheme()) {
    YourRootView()
}
```

## Define a custom theme if needed

```swift
class YourCustomTheme: OrangeTheme { }

extension YourCustomTheme {

    // Override components tokens if needed
    override var ftiBorderStyle: BorderStyleSemanticToken { borderStyleDrag }
    override var ftiBorderWidth: BorderWidthSemanticToken { borderWidthThickest }
    
    // Override colors semantic tokens if needed
    override var colorBackgroundDefaultPrimaryLight: ColorSemanticToken! { ColorRawTokens.colorFunctionalSun500 }
    override var colorBackgroundDefaultPrimaryDark: ColorSemanticToken! { ColorRawTokens.colorFunctionalSun800 }
    
    // Etc.
}
```

## How to create your own theme

It is quite simple, you have to follow several steps.

First, create a _Swift class_ which will inherit from `OrangeTheme` or `OUDSTheme`.
You can see `OrangeTheme` as more specified and less abtract as `OUDSTheme` which is the base of all themes. We do not recommend to sue directly the `OUDSTheme` as is.
Then, you should override the _semantic tokens_ and _components tokens_ you want ; we recommend to use _Swift extensions_ for clarity reasons.
If your theme needs to define its own _raw tokens_, you can also define them using a `enum` and the _raw tokens types_.

For example:

```swift
import Foundation
import SwiftUI
import OUDSTokensRaw        // To get raw tokens
import OUDSTokensSemantic   // To get semantic tokens
import OUDSTokensComponent  // To get component tokens
import OUDSThemesOrange     // To override OrangeTheme (which is default theme)

// Can be for example a country theme
class OrangeCustomTheme: OrangeTheme { }

extension OrangeCustomTheme { // For FormsTextInputComponentToken, used in component FormsTextInputComponent

    public override var ftiTitleFontWeight: TypographyFontWeightSemanticToken { fontWeightLabelStrong }
    public override var ftiTitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelXLarge }
    public override var ftiTitleColor: ColorSemanticToken { ColorRawTokens.colorFunctionalDodgerBlue500 }

    public override var ftiSubtitleFontWeight: TypographyFontWeightSemanticToken { fontWeightBodyDefault }
    public override var ftiSubtitleFontSize: TypographyFontSizeSemanticToken { fontSizeLabelMedium }
    public override var ftiSubtitleColor: ColorSemanticToken { ColorRawTokens.colorFunctionalMalachite500 }

    public override var ftiBackgroundColorLight: ColorSemanticToken { colorBackgroundDefaultPrimaryLight }
    public override var ftiBackgroundColorDark: ColorSemanticToken { colorBackgroundDefaultPrimaryDark }

    public override var ftiBorderColor: ColorSemanticToken { colorBorderEmphasisDark ?? MyThemeColorRawTokens.someAwesomeThemeExclusiveColor }

    public override var ftiBorderStyle: BorderStyleSemanticToken { borderStyleDrag }

    public override var ftiBorderWidth: BorderWidthSemanticToken { borderWidthThickest }
}

extension OrangeCustomTheme { // For ColorSemanticTokens using anywhere

    override var colorBackgroundDefaultPrimaryLight: ColorSemanticToken! { ColorRawTokens.colorFunctionalSun500 }
    override var colorBackgroundDefaultPrimaryDark: ColorSemanticToken! { ColorRawTokens.colorFunctionalSun800 }
}
```

And your own theme colors _raw tokens_:

```swift

public typealias MyThemeColorRawToken = ColorRawToken // Refer to type ColorRawToken for consistency

public enum MyThemeColorRawTokens {

    public static let someAwesomeThemeExclusiveColor: MyThemeColorRawToken = "#12345600"
    
}
```

Then for your root view:

```swift
import SwiftUI
import OUDS // To get ``OUDSThemeableView``

struct MyAppRootView: View {

    var body: some View {
        OUDSThemeableView(theme: OrangeCustomTheme()) {
            // ...
        }
    }
}
```

