<h1 align="center">OUDS iOS</h1>

<p align="center">
  OUDS iOS provides Orange iOS components to developers and a demo application.
  <br>
  <a href="https://github.com/Orange-OpenSource/ouds-ios/issues/new?assignees=pylapp&labels=%F0%9F%90%9E%20bug%2C%F0%9F%94%8D+triage&template=bug_report.yml&title=[Bug]%3A+Bug+Summary">Report bug</a>
  ·
  <a href="https://github.com/Orange-OpenSource/ouds-ios/issues/new?assignees=pylapp&labels=feature%2C%F0%9F%94%8D%20triage&template=feature_request.yml&title=[feature]%3A+">Request feature</a>
</p>

## Table of contents

- [Status](#status)
- [Content](#content)
- [Integrate OUDS](#integrate-ouds)
  * [Use Swift Package Manager](#use-swift-package-manager)
  * [Import the library you need](#import-the-library-you-need)
  * [Use themeable view](#use-themeable-view)
  * [Define a custom theme if needed](#define-a-custom-theme-if-needed)
- [Bugs and feature requests](#bugs-and-feature-requests)
- [Contributing](#contributing)
- [Copyright and license](#copyright-and-license)

## Status

[![MIT license](https://img.shields.io/github/license/Orange-OpenSource/ouds-ios)](https://github.com/Orange-OpenSource/ouds-ios/blob/main/LICENSE)
[![iOS 15.0](https://img.shields.io/badge/iOS-15.0-informational.svg)](https://developer.apple.com/support/app-store "iOS 15 supports")
[![Still maintained](https://img.shields.io/maintenance/yes/2024)](https://github.com/Orange-OpenSource/ouds-ios/issues?q=is%3Aissue+is%3Aclosed)
[![Code size](https://img.shields.io/github/languages/code-size/Orange-OpenSource/ouds-ios)](https://github.com/Orange-OpenSource/ouds-ios)

## Content

This repository contains the OUDS iOS library that provides Orange iOS components, but also a demo application showcasing these different components.

## Integrate OUDS

### Use Swift Package Manager

If you want to add the iOS library of `Orange Unified Design System`, you need to add our _Swift Package_ into your project.
To do that, add a new _package dependency_ to your _Xcode_ project by refering to it with `https://github.com/Orange-OpenSource/ouds-ios`.
You are free to choose wether or not you want a branch or a specific tag, pick the solution you want.

### Import the library you need

You should use one of the following imports for your needs:

```swift
import OUDSModules           // To use modules
import OUDSComponents        // To use components
import OUDSThemesOrange      // To use the default theme
import OUDSThemesShared      // If you want to define your theme or use OUDSThemeableView
import OUDSTokensComponent   // If you need to override components tokens
import OUDSTokenSemantic     // If you need to override semantic tokens
import OUDSTokensRaw         // If you need to override raw tokens
```

### Use themeable view

```swift
// Make imports
import OUDSThemesShared
import OUDSThemesOrange

// Add themeable view to your root view
OUDSThemeableView(theme: OrangeTheme()) {
    YourRootView()
}
```

### Define a custom theme if needed

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

## Bugs and feature requests

Have a bug or a feature request? Please first search for existing and closed issues. If your problem or idea is not addressed yet, [please open a new issue](https://github.com/Orange-OpenSource/ouds-ios/issues/new/choose).

## Contributing

Please read through our [contributing guidelines](https://github.com/Orange-OpenSource/ouds-ios/blob/main/.github/CONTRIBUTING.md). Included are directions for opening issues, coding standards, and notes on development.

## Copyright and license

Code released under the [MIT License](https://github.com/Orange-OpenSource/ouds-ios/blob/main/LICENSE).
