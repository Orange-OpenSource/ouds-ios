# Getting Started with OUDS

How to add the package as dependency, import libraries and use theme and components for your apps.

## Integrate OUDS

### Use Swift Package Manager

If you want to add the iOS library of *Orange Unified Design System*, you need to add our _Swift Package_ into your project.
To do that, add a new _package dependency_ to your _Xcode_ project by refering to it by `github.com/Orange-OpenSource/ouds-ios`.
You are free to choose wether or not you want a branch or a specific tag, pick the solution you want.

You can [refer to the wiki](https://github.com/Orange-OpenSource/ouds-ios/wiki/50-%E2%80%90-About-versions,-releases-and-builds) for more details about versions, releases and tags. You can find release tags (e.g. *0.8.0*) and release candidates tags (e.g. *0.8..0-rc1*).

### Import the library you need

You should use one (or several) of the following imports for your needs, which are basically _Swift Package_ products.

```swift
import OUDS // If you want to define your theme or use OUDSThemeableView
import OUDSModules // To use modules
import OUDSComponents // To use components
import OUDSThemeOrange // To use the default theme
import OUDSTokensComponent // If you need to override or use directly components tokens
import OUDSTokenSemantic // If you need to override or use directly semantic tokens
import OUDSTokensRaw // If you need to override or use directly raw tokens
```

### Chose your theme

You can:
1. Use the `OrangeTheme` which is the default one
2. Implement your own theme

### Apply a theme

You will need to use for your root view the [`OUDSThemeableView`](https://ios.unified-design-system.orange.com/documentation/ouds/oudsthemeableview/). [This page may help](https://ios.unified-design-system.orange.com/documentation/ouds/themes) also.

```swift
import OUDS  // To get OUDSThemeableView
import OUDSThemeOrange // To get OrangeTheme
import SwiftUI

@main
struct YourApp: App {
    var body: some Scene {
       WindowGroup {
          OUDSThemeableView(theme: OrangeTheme()) {
                // Your root view
          }
       }
    }
}
```

Then get the current applied theme in your views and use the tokens you want:
```swift
import OUDS // To load the theme as environment variabme

// Use it in views as an environment variable
@Environment(\.theme) var theme
```

Keep in mind only one theme can be used within the `OUDSThemeableView`.
