# Getting Started with OUDS

Howto: Add the package as dependancy, and import libraries

**More details coming soon.**

## Integrate OUDS

### Use Swift Package Manager

If you want to add the iOS library of **Orange Unified Design System**, you need to add our _Swift Package_ into your project.
To do that, add a new _package dependency_ to your _Xcode_ project by refering to it with `https://github.com/Orange-OpenSource/ouds-ios`.
You are free to choose wether or not you want a branch or a specific tag, pick the solution you want.

### Import the library you need

You should use one (or several) of the following imports for your needs:

```swift
import OUDS                  // If you want to define your theme or use OUDSThemeableView
import OUDSModules           // To use modules
import OUDSComponents        // To use components
import OUDSThemesOrange      // To use the default theme
import OUDSTokensComponent   // If you need to override or use directly components tokens
import OUDSTokenSemantic     // If you need to override or use directly semantic tokens
import OUDSTokensRaw         // If you need to override or use directly raw tokens
```
