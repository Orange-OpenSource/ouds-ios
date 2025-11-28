# Agents.md

This file provides guidance to AI coding agents when working with code in this repository or with OUDS iOS products.

## Project Overview

OUDS means Orange Unified Design System and is the new cohesive and unified design system for Orange Group.
It provides a Swift Package (this repository) and a demo application called Design System Tooblox which embeds the Swift Package to expose its public API.
The project is open source under MIT license and hosted on GitHub in Orange-OpenSource organization.
The products support iOS 15, iPadOS 15, macOS 15, visionOS 1, watchOS 11 and tvOS 16.
The products are written in Swift with SwiftUI as UI framework and Swift 6 (format, grammar and concurrency).

## Vocabulary

- *tokenator*: an internal tool which uses Figma specifications exported as JSON to convert them and send through pull requests the Swift code for tokens
- *token*: variable containing a value in most of cases defined by *tokenator*
- *raw token*: a family of tokens which have for value a raw type value like String, Int, or CGFloat
- *semantic token*: a family of tokens which point to raw tokens and bring meanings in their name, used inside components
- *component tokens*: a family of tokens for some components if semantic tokens are not enough, and have for values semantic tokens
- *theme*: a set of tokens, assets like fonts and images, to use in app to style it and change their look and feels
- *tuning*: some small configuration elements for a theme like rounded corners
- *token provider*: an object in a theme gathering tokens (semantics and components)

## Code formating

The source code is formatted for Swift 6.2. Configuration of formater is in `.swiftformat` and linter in `.swiftlint`.

## Architecture details

The Swift Package contains several products or targets exposing API in seperated dependencies.

### Modules

Here are the modules of the Swift Package, i.e. set of features with external dependencies.

### Core / Components

Here the the components provided by the Swift Package like buttons, switchs, checkboxes, chips, tags, links, etc.

### Core / ComponentsUIKit

Here are experimental backports or wraps of SwiftUI components for UIKit.

### Core / Themes / Orange

Here is the definition of the Orange theme for all Orange products.

### Core / Themes / Orange Business Tools

Here is the definition of the Orange theme for all Orange products but with constraints of spaces and sizes.

### Core / Themes / Sosh

Here is the definition of the Sosh theme for all Sosh products.

### Core / Themes / Wireframe

Here is the definition of the Wireframe theme for prototyping and mockups.

### Core / ThemesContract

Here is the definition of the theme contract, the tokens provider and abstract entities.

### Core / Tokens / ComponentTokens

Here are the definitions of the tokens used for components styling and look and feel.

### Core / Tokens / SemanticTokens

Here are the definitions of the tokens used by component tokens, pointing to raw tokens.

### Core / Tokens / RawTokens

Here are the definitions of the tokens pointing to raw values like strings, floats and ints, used by semantic tokens.

### Foundations

Here are some shared logics and objects with plenty of extensions and utilities used everywhere.

## Architecture guidelines

- SwiftUI is the default UI paradigm - embrace its declarative nature
- Avoid legacy UIKit patterns and unnecessary abstractions
- Focus on simplicity, clarity, and native data flow
- Let SwiftUI handle the complexity - don't fight the framework
- Organize by components, keeps things isolated
- Keep related code together in the same file when appropriate
- Use extensions to organize large files
- Follow Swift naming conventions consistently

## Build verification process

**IMPORTANT**: When editing code, you MUST:
1. Format the sources
2. Build the project after making changes
3. Fix any compilation errors before proceeding
4. Run the tests
5. Run the linter and fix any warnings and errors

## Best practices

### DO

- Write documentation in Swift DocC format for public API
- Use Swift's type system for safety
- Use public modifier only when needed, prefer internal or private
- **IMPORTANT**: The project supports iOS 26 SDK while maintaining iOS 15 as the minimum deployment target. Use `#available` checks when adopting iOS 15+ APIs.
- **IMPORTANT**: The project runs for iOS / iPadOS, macOS, visionOS, tvOS and watchOS. Use `#if os` checks to compile only code avaialble for specific API / OS
- If a third party dependency is added or updated, update the Software Bill of Material
- Apply Clean Code, DRY, SOLID and TDD principes

### DON'T

- Add abstraction layers without clear benefit
- Use Combine for simple async operations
- Overcomplicate simple features
- Use UIKit except for some specific API related to accessibility if needed

## Development requirements

- Minimum Swift 6.2
- Xcode 26 or later 
- Minimum deployment: iOS 15.0, iPad 0S 15.0, macOS 15.0, visionOS 1.0, watchOS 11.6, tvOS 16.6
- Apple Developer account for device testing

## Building commands

### Building Swift Package

To build the Swift Package:
```shell
bundle exec fastlane build
```

### Run tests

To run the unit tests on the Swift Package:
```shell
bundle exec fastlane test_unit
```

### Build documentation

To build the documentation:
```shell
cd scripts
yes | ./generateWebDocumentation.sh --libversion=none --nozip
```

### Check dead code

To check for dead code:
```shell
bundle exec fastlane check_dead_code
```

### Format the sources

To format the source code:
```shell
bundle exec fastlane format
```

### Run linter

To run the linter:
```shell
bundle exec fastlane lint
```

### Check leaks

To check for leaks of secrets:
```shell
bundle exec fastlane check_leaks
```

### SBOM update

To update the Software Bill of Materials:
```shell
bundle exec fastlane update_sbom
```

## Code samples

### Import OUDS product

Import OUDS umbrella product gathering all other librairies:
```swift
import OUDSSwiftUI
```

### Instanciate a theme object

Create a theme for Orange product:
```swift
    let theme = OrangeTheme()
```

### Inject a theme in an app

Use an `OUDSThemeableView` to inject the theme:

```swift
OUDSThemeableView(theme: theme) {

}
```

### Get the theme object

Get the theme object as environement object:
```swift
@Environment(\.theme) private var theme
```

### Use tokens from theme

Use colors (semantic tokens) defined in a theme:
```swift
theme.colors
```

Use borders (semantic tokens) defined in a theme:
```swift
theme.borders
```

Use fonts (semantic tokens) defined in a theme:
```swift
theme.fonts
```

Use sizes (semantic tokens) defined in a theme:
```swift
theme.sizes
```

Use spaces (semantic tokens) defined in a theme:
```swift
theme.spaces
```

Use dimensions (semantic tokens) defined in a theme:
```swift
theme.dimensions
```

Use elevations (semantic tokens) defined in a theme:
```swift
theme.elevations
```

Use grids (semantic tokens) defined in a theme:
```swift
theme.grids
```

Use opacities (semantic tokens) defined in a theme:
```swift
theme.opacities
```
