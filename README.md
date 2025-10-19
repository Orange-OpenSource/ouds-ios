<h1 align="center">OUDS iOS</h1>

<p align="center">
  OUDS iOS provides Orange iOS components to developers.
  <br>
  <a href="https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=bug_report.yml" title="Open an issue on GitHub">Report bug</a>
  ·
  <a href="https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=feature_request.yml" title="Open an issue on GitHub">Request feature</a>
  ·
  <a href="https://ios.unified-design-system.orange.com/" title="Swift library technical documentation on GitHub Pages">Swift documentation</a>
  ·
  <a href="https://github.com/Orange-OpenSource/ouds-ios/wiki" title="Swift library wiki">Wiki</a>
  ·
  <a href="https://unified-design-system.orange.com/" title="Design system global website">Design system</a>
  ·
  <a href="https://github.com/Orange-OpenSource/ouds-ios-design-system-toolbox" title="Design system toolbox GitHub project">Design system toolbox</a>
</p>

<p align="center">
<a href="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/build-and-test.yml" title="Build and test status"><img src="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/build-and-test.yml/badge.svg" alt="Build and test status"></a>
&nbsp;
<a href="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/gitleaks.yml" title="Gitleaks status"><img src="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/gitleaks.yml/badge.svg" alt="Gitleaks status"></a>
&nbsp;
<a href="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/swiftpolyglot.yml" title="SwiftPolyglot status"><img src="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/swiftpolyglot.yml/badge.svg" alt="SwiftPolyglot status"></a>
&nbsp;
<a href="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/periphery.yml" title="Periphery status"><img src="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/periphery.yml/badge.svg" alt="Periphery status"></a>
&nbsp;
<a href="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/swiftlint.yml" title="SwiftLint status"><img src="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/swiftlint.yml/badge.svg" alt="SwiftLint status"></a>
&nbsp;
<a href="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/pages/pages-build-deployment/badge.svg" title="GitHub Pages deployment status"><img src="https://github.com/Orange-OpenSource/ouds-ios/actions/workflows/pages/pages-build-deployment/badge.svg" alt="GitHub Pages deployment status"></a>
&nbsp;
<a href="https://www.bestpractices.dev/projects/10674" title="OpenSSF Best Practices"><img src="https://www.bestpractices.dev/projects/10674/badge" alt="OpenSSF Best Practices"></a>
&nbsp;
<a href="https://scorecard.dev/viewer/?uri=github.com/Orange-OpenSource/ouds-ios" title="OpenSSF Scorecard"><img src="https://api.scorecard.dev/projects/github.com/Orange-OpenSource/ouds-ios/badge" alt="OpenSSF Scorecard"></a>
&nbsp;
<a href="https://renovatebot.com" title="Renovate status"><img src="https://img.shields.io/badge/renovate-enabled-brightgreen.svg" alt="Renovate status"></a>
</p>

## Status

[![MIT license](https://img.shields.io/github/license/Orange-OpenSource/ouds-ios?style=for-the-badge)](https://github.com/Orange-OpenSource/ouds-ios/blob/main/LICENSE)

[![Versions](https://img.shields.io/github/v/release/Orange-OpenSource/ouds-ios?label=Last%20version&style=for-the-badge)](https://github.com/Orange-OpenSource/ouds-ios/releases)
[![Still maintained](https://img.shields.io/maintenance/yes/2025?style=for-the-badge)](https://github.com/Orange-OpenSource/ouds-ios/issues?q=is%3Aissue+is%3Aclosed)

[![Code size](https://img.shields.io/github/languages/code-size/Orange-OpenSource/ouds-ios?style=for-the-badge)](https://github.com/Orange-OpenSource/ouds-ios)
[![Opened issues](https://img.shields.io/github/issues-raw/Orange-OpenSource/ouds-ios?style=for-the-badge)](https://github.com/Orange-OpenSource/ouds-ios/issues)

[![iOS 15.0](https://img.shields.io/badge/iOS-15.0-FF1AB2?style=for-the-badge)](https://developer.apple.com/support/app-store "iOS 15 supports")
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FOrange-OpenSource%2Fouds-ios%2Fbadge%3Ftype%3Dswift-versions&style=for-the-badge)](https://swiftpackageindex.com/Orange-OpenSource/ouds-ios)
[![Xcode 26.0](https://img.shields.io/badge/Xcode-26.0-blue?style=for-the-badge)](https://developer.apple.com/documentation/xcode-release-notes/xcode-26-release-notes)

## About OUDS

OUDS means *Orange Unified Design System*.

This is a new design system, again, but _unified_, trying to merge all requirements of Orange brands and affiliates so as to provide a unique design system, unified across all platforms and for all countries, companies, users and apps.
Guidelines for TV, Android, iOS and web environments will be merged in a "cohesive" approach, and any Orange-related softwares including brand apps like *Parnasse* and *Sosh*, *Orange Innovation Cup* apps and Orange countries and affiliates app will use this project in the future.

The project is open source (except some assets) and topics like accessibility and ecodesign are also considered.

It replaces internal frameworks and also [ODS](https://github.com/Orange-OpenSource/ods-ios) as the only one design system for Orange group and affiliates.

> [!CAUTION]
> This Swift Package is dedicated to SwiftUI. UIKit and other frameworks are not supported.

## Quick start

You can try [our Swift tutorial](https://ios.unified-design-system.orange.com/tutorials/table-of-contents) which will explain how to embe and use OUDS iOS Swift Package for your app.

### Choose your version

You can find available releases on [GitHub releases](https://github.com/Orange-OpenSource/ouds-ios/releases). 
The wiki contains also a page [listing the available API](https://github.com/Orange-OpenSource/ouds-ios/wiki/01-%E2%80%90-Available-API).
Versions, builds and releases are explained [also in this page](https://github.com/Orange-OpenSource/ouds-ios/wiki/50-%E2%80%90-About-versions,-releases-and-builds).

### Add the dependency

First, you must add as _package dependency_ of your _project_ the URL of this _Swift Package_ GitHub repository:

```text
https://github.com/Orange-OpenSource/ouds-ios
```

You can choose the _dependency rule_ you want. Keep in mind OUDS iOS releases are frozen and are based on semantic versioning.

### Add the librairies

In your Xcode _targets_, add the librairies you need. Everything is splitted so as to let users choose the content to embed they want.
In most of cases, the `OUDS` library at least must be imported, it brings abstraction layer.
Components are available with `OUDSComponents`. Themes are available through their librairies too (`OUDSThemeOrange`, `OUDSThemeSosh`, `OUDSThemeWireframe`, etc.).

You can have more details [in the wiki](https://github.com/Orange-OpenSource/ouds-ios/wiki/30-%E2%80%90-About-the-architecture#the-ouds-ios-swift-package).

### Instanciate and inject theme

In the root view of your app, add the `OUDSThemeableView` with inside the _theme_ object you want to apply.
You can instanciate the theme object on the fly, but only once.

```swift
import OUDS
import SwiftUI

@main
struct YourApp: App {

    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: theTheme) { // theTheme can be: OrangeTheme(), SoshTheme(), WirefameTheme(), etc.
              AppRootView() // Add your app root view here
            }
        }
    }
}
```

Feel free to read the [online documentation](https://ios.unified-design-system.orange.com/documentation/ouds/gettingstarted).
You can find also [more details about theme instanciations online](https://ios.unified-design-system.orange.com/documentation/ouds/themes).

### Get the theme

If you need to get configuration details from the theme (colors, dimensions, etc.), get the theme through _environment object_:

```swift
  @Environment(\.theme) var theme
```

### Use the components

Import the `OUDSComponents` library and instanciate the component you need. All of them are described [in the online documentation (and grouped by categories)](https://ios.unified-design-system.orange.com/documentation/oudscomponents).

The wiki lists also [the components and their availability](https://github.com/Orange-OpenSource/ouds-ios/wiki/01-%E2%80%90-Available-API).

## Content

> [!NOTE]
> This repository contains the OUDS iOS library, as a Swift Package, that provides Orange iOS components for its unified design system.
>
> You can find the [detailed technical documentation online](https://ios.unified-design-system.orange.com/), 
> and also the [whole design system](https://unified-design-system.orange.com/).
>
> Details about the project are also [available in the wiki](https://github.com/Orange-OpenSource/ouds-ios/wiki).
>
> You can find the [available API online on the wiki](https://github.com/Orange-OpenSource/ouds-ios/wiki/01-%E2%80%90-Available-API).

> [!IMPORTANT]
> The design system toolbox app, i.e. the showcase app, is [on Orange-OpenSource/ouds-ios-design-system-toolbox](https://github.com/Orange-OpenSource/ouds-ios-design-system-toolbox).

## Tokens libraries versions

> [!TIP]
> This Swift package embeds specific versions of themes / tokens librairies.
> You can find more details in the online documentation and also in the wiki.

- Core OUDS version: 1.7.0
- Core Orange version: 1.2.0
- Brand Orange version: 2.0.1
- Core Sosh version: 1.2.0
- Brand Sosh version: 2.0.1
- Core Wireframe version: 1.2.0
- Brand Wireframe version: 2.0.1
- Brand Orange Business Tools version: 2.0.1

## Bugs, feature requests and discussions

Have a bug or a feature request? Please first search for existing and closed issues. If your problem or idea is not addressed yet, [please open a new issue](https://github.com/Orange-OpenSource/ouds-ios/issues/new/choose).

If you want to share ideas or discuss about API, features, components or other topics, you should first open a new discussion.
[Q&A](https://github.com/Orange-OpenSource/ouds-ios/discussions/categories/q-a) is more dedicated for help, otherwise feel free to open or update a topic in [Ideas](https://github.com/Orange-OpenSource/ouds-ios/discussions/categories/ideas).
Keep in mind internal or sensitive discussions must be in internal tools, not public ones.

If your discussions, requests or issues are about the design system toolbox application, [use instead its GitHub project](https://github.com/Orange-OpenSource/ouds-ios-design-system-toolbox).

## Contributing

Please read through our [contributing guidelines](https://github.com/Orange-OpenSource/ouds-ios/blob/main/.github/CONTRIBUTING.md). Included are directions for opening issues, coding standards, and notes on development. More technical details are available also in the [DEVELOP](https://github.com/Orange-OpenSource/ouds-ios/blob/main/.github/DEVELOP.md) file.

## Copyright and license

Code released under the [MIT License](https://github.com/Orange-OpenSource/ouds-ios/blob/main/LICENSE).
For images and other assets, please [refer to the NOTICE.txt](https://github.com/Orange-OpenSource/ouds-ios/blob/ain/NOTICE.txt).

## Data and privacy

The Orange Unified Design System library is a Software Development Kit (SDK) that allows developpers to create Orange branded mobile applications.
As such:
- this SDK does not handle any personnal data
- this SDK does not require any device permission to work

## Design Toolbox App

Flash the QrCode below or click on it to download the *Design System Toolbox* app.

<p align="center">
<a href="https://web.unified-design-system.orange.com/docs/0.5/examples/download-app/" title="Orange Unified Desin Sysem Design System Toolbox page"><img src="./docs_release/images/design-toolbox-download-page-qrcode.png" alt="QrCode redirecting to Orange Unified Desin Sysem Design System Toolbox page" width="125" height="125"></a>
</p>