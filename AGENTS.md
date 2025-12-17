---
type: ai-agent-guide
framework: OUDS-iOS
language: Swift
ui-framework: SwiftUI
platforms: [iOS, iPadOS, macOS, visionOS, watchOS, tvOS]
min-deployment: iOS 15.0
---

# OUDS iOS Framework - AI Agent Guide

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
- *component*: mainly a SwiftUI view with specific features and layouts like buttons, switch, link etc.

## Code formating

The source code is formatted for Swift 6.2. Configuration of formater is in `.swiftformat` and linter in `.swiftlint`.

## Architecture details

The Swift Package contains several products or targets exposing API in separated dependencies.

### Modules

Here are the modules of the Swift Package, i.e. set of features with external dependencies.

#### Core / Components

Here the the components provided by the Swift Package like buttons, switchs, checkboxes, chips, tags, links, etc.

#### Core / ComponentsUIKit

Here are experimental backports or wraps of SwiftUI components for UIKit. Their use is not recommended yet.

#### Core / Themes / Orange

Here is the definition of the Orange theme for all Orange products.

#### Core / Themes / Orange Business Tools

Here is the definition of the Orange theme for all Orange products but with constraints of spaces and sizes.

#### Core / Themes / Sosh

Here is the definition of the Sosh theme for all Sosh products.

#### Core / Themes / Wireframe

Here is the definition of the Wireframe theme for prototyping and mockups.

#### Core / ThemesContract

Here is the definition of the theme contract, the tokens provider and abstract entities.

#### Core / Tokens / ComponentTokens

Here are the definitions of the tokens used for components styling and look and feel.

#### Core / Tokens / SemanticTokens

Here are the definitions of the tokens used by component tokens, pointing to raw tokens.

#### Core / Tokens / RawTokens

Here are the definitions of the tokens pointing to raw values like strings, floats and ints, used by semantic tokens.

#### Foundations

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
- Minimum deployment: iOS 15.0, iPad0S 15.0, macOS 15.0, visionOS 1.0, watchOS 11.6, tvOS 16.6
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

## How to use OUDS framwork

### Basic setup

```swift
import SwiftUI
import OUDSSwiftUI // Umbrella import of OUDS with components, themes, tokens and more

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeTheme()) { // Inject in the app the Orange theme
                ContentView()
            }
        }
    }
}

struct ContentView: View {
    @Environment(\.theme) private var theme // Get the theme injected thanks to OUDSThemeableView
    @State private var isToggled = false
    
    var body: some View {
        VStack(spacing: theme.spaces.fixedMedium) {
            OUDSButton(text: "Primary Action", appearance: .default) {
                // Handle action
            }
            
            OUDSSwitch(isOn: $isToggled, accessibilityLabel: "Toggle setting")
        }
        .padding(theme.spaces.fixedLarge)
    }
}
```

### Import OUDS product

Import OUDS umbrella product gathering all other librairies:
```swift
import OUDSSwiftUI
```

The user can import other librairies as explained in [the online documentation](https://ios.unified-design-system.orange.com/documentation/oudsthemescontract/gettingstarted).
These imports are mandatory.

### Instanciate a theme object

Create a theme for Orange product:
```swift
    let theme = OrangeTheme()
```

The user can use instead `SoshTheme`, `WireframeTheme` or `OrangeBusinessTools` theme.

### Inject a theme in an app

Use an `OUDSThemeableView` to inject the theme. This is the root view defining several environment objects.
The theme must be injected inside it to be available everywhere.

```swift
OUDSThemeableView(theme: theme) {

}
```

### Get the theme object

Get the theme object as environment object:
```swift
@Environment(\.theme) private var theme
```

### Use tokens from theme to apply syle

Use colors (semantic tokens) defined in a theme:
```swift
theme.colors
```

Use color modes (semantic tokens) defined in a theme:
```swift
theme.colorModes
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

Use effects (semantic tokens) defined in a theme:
```swift
theme.effects
```

### Use components

#### Actions

##### Button

A button proposes layout with text only, icon only or text and icon. Four hierarchies are proposed for all layouts: default, strong, minimal and negative. Two style are available: default and loading
Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsbutton/).

Button can be intantiated like:
```swift
OUDSButton(text: "Some text", appearance: .default,  style: .default) { /* the action to process */ }
```

or with an image and a text inside:
```swift
OUDSButton(text: "Some text", icon: Image("image_name"), appearance: .default) { /* the action to process */ }
```

or only with an image:
```swift
OUDSButton(icon: Image("image_name"), accessibilityLabel: "Some label") { /* the action to process */ }
```

##### Checkbox

A checkbox can be alone or can have texts. It is not a native iOS component. It is a square button which can be selected or not.
The checkbox only documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudscheckbox/).
The checkbox with texts documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudscheckboxitem).

Checkboxes can be intantiated like:
```swift
@Published var isOn: Bool = true
OUDSCheckbox(isOn: $isOn, accessibilityLabel: "Some label to vocalize")
```

or with texts and image:
```swift
@Published var isOn: Bool = true
OUDSCheckboxItem(isOn: $isOn,
                 label: "An important text",
                 description: "A secondary text",
                 icon: Image(decorative: "image_name"))
```

or only with one text:
```swift
@Published var isOn: Bool = true
OUDSCheckboxItem(isOn: $isOn, label: "Hello world")
```

Checkboxes can be wrapped inside a checkbox picker.
The documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudscheckboxpicker).

```swift
// Define raw data to display
var someDataToPopulate: [OUDSCheckboxPickerData<String>] {
    [
         OUDSCheckboxPickerData<String>(tag: "Choice_1",
                                        label: "Label 1"),
         OUDSCheckboxPickerData<String>(tag: "Choice_2",
                                        label: "Label 2"),
         OUDSCheckboxPickerData<String>(tag: "Choice_3",
                                        label: "Label 3"),
    ]
}

// Prepare the selection, with a value previously selected
// Use the data and the binding for the picker.
@State var selections: [String] = ["Choice_1"] // or empty if nothing selected

// Here the picker is vertical by default
OUDSCheckboxPicker(selections: $selections, checkboxes: someDataToPopulate)
```

##### Radio button

A radio button can be alone or can have texts. It is not a native iOS component. It is a circular button in most of cases in a group, which can be selected or not.
The radio buton only documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsradio/).
The radio button with texts documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsradioitem/).

Radio buttons can be intantiated like:
```swift
@Published var selection: Bool = false
OUDSRadio(isOn: $selection, accessibilityLabel: "Some label to vocalized")
```

or with texts and image:
```swift
@Published var isOn: Bool = true
OUDSRadioItem(isOn: $isOn,
              label: "Some text",
              icon: Image(decorative: "image_name"))
```

or only with one text:
```swift
@Published var isOn: Bool = true
OUDSRadioItem(isOn: $isOn, label: "Some text")
```

Radio buttons can be wrapped inside a radio picker.
The documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsradiopicker).

```swift
// Define the elements to display in radio buttons using OUDSRadioPickerData.
var someDataToPopulate: [OUDSRadioPickerData<String>] {
    [
        OUDSRadioPickerData<String>(tag: "Choice_1",
                                    label: "Label 1"),
        OUDSRadioPickerData<String>(tag: "Choice_2",
                                    label: "Label 2"),
        OUDSRadioPickerData<String>(tag: "Choice_2",
                                    label: "Label 2"),
    ]
}

// Prepare the selection, with a value previously selected
// Use the data and the binding for the picker.
@State var selection: String = "Choice_1"

// Here the picker is vertical
OUDSRadioPicker(selection: $selection, radios: someDataToPopulate)
```

##### Switch / toggle

A switch, or toggle, can be alone or can have texts. It is a native iOS component. It is a kind of button with on/off state.
The switch only documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsswitch).
The switch with texts documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsswitchitem).

Switch can be intantiated like:
```swift
@Published var selection: Bool = false
OUDSSwitch(isOn: $isOn, accessibilityLabel: "Some label to vocalize")
```

or with texts and image:
```swift
@Published var isOn: Bool = true
OUDSSwitchItem("Some text",
               isOn: $isOn,
               icon: Image(decorative: "ic_himage_name"))
```

or only with one text:
```swift
@Published var isOn: Bool = true
OUDSSwitchItem("Some text",
               isOn: $isOn)
```

##### Suggestion chip

A suggestion chip is a kind of label inside a capsule shape to make some predicitve or recommended selection.
It is not a native iOS component.
The suggestion chip has its [documentation online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudssuggestionchip).

Suggestion chip can be used like:
```swift
OUDSSuggestionChip(text: "Some text") { /* the action to process */ }
```

or with text and image:
```swift
OUDSSuggestionChip(icon: Image("image_name"), text: "Some text") { /* the action to process */ }
```

or only with an image
```swift
OUDSSuggestionChip(icon: Image("image_name"), accessibilityLabel: "Some label to vocalize") { /* the action to process */ }
```

##### Filter chip

A filter chip is a kind of label inside a capsule shape to make some filtering with selected or unselected options.
It is not a native iOS component.
The suggestion chip has its [documentation online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudssuggestionchip).

Filter chip can be used like:
```swift
OUDSFilterChip(text: "Some text") { /* the action to process */ }
```

or with text and image:
```swift
OUDSFilterChip(icon: Image("image_name"), text: "Some text") { /* the action to process */ }```

or only with an image
```swift
OUDSFilterChip(icon: Image("image_name"), accessibilityLabel: "Some label to vocalize") { /* the action to process */ }
```

Filter chip can be used in group withing a chip picker.
Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudschippicker).

```swift
// Define the elements to display in filter chip using OUDSChipPickerData.
enum Values: String, CaseIterable {
    case value1, value2, value3
}

var someDataToPopulate: [OUDSChipPickerData<Drink>] {
    [
        OUDSChipPickerData(tag: Values.value1,
                          layout: .textAndIcon("Value 1 label", icon: Image("image_name_1"))),

        OUDSChipPickerData(tag: Values.value2,
                           layout: .textAndIcon("Value 2 label", icon: Image("image_name_2"))),

        OUDSChipPickerData(tag: Values.value3,
                           layout: .textAndIcon("Value 3 label", icon: Image("image_name_3"))),
    ]
}

// Prepare the selection, with a value previously selected
// Use the data and the binding for the picker.
@State var selection: Values? = .value1

// Here the picker with title, selection and data
OUDSChipPicker(title: "Some text", selection: $selection, chips: someDataToPopulate)
```

##### Text input

Text input is a component with a text field, labels, helpers and optional buttons to let user write text data and be helped if needed. 
Such components can have or not a leading icon or a trailing action with or without placeholders.
It is based on the native iOS component but enriched a lot.
Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudstextinput).

Text input can be used like:
```swift
@State var text: String = ""
OUDSTextInput(label: "Some label", text: $text)
```

or with a prefix and/or a suffix to bring more context to the user:
```swift
@State var text: String = ""
OUDSTextInput(label: "Some label", text: $text, prefix: "Prefix", suffix: "Suffix")
```

or with a trailing action button:
```swift
@State var text: String = ""
let trailingAction = OUDSTextInput.TrailingAction(icon: Image("image_name"), accessibilityLabel: "Some label") { /* Action to process */ }
OUDSTextInput(label: "Label", text: $text, trailingAction: trailingAction)
```

#### Indicators

##### Badge

A badge is a small UI element used to highlight status, notifications, or categorization within an interface. 
It is often displayed as a label or indicator with a distinct background color and text. It is richer than the native iOS component.
Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsbadge).

Badge can be used like:
```swift
OUDSBadge(status: .neutral, size: .medium)
```

or with a value inside:
```swift
OUDSBadge(count: 1, status: .neutral, size: .medium)
```

or with an icon inside:
```swift
OUDSBadge(status: .neutral(icon: Image("image_name")), accessibilityLabel: "Label for image", size: .medium)
```

##### Tag

An tag is a small element that shows short information like a label, keyword, or category. It helps users quickly find, group, or understand content.
it is not an iOS native component.
Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudstag).

The tag can be used like:
```swift
OUDSTag(label: "Label")
```

or with an icon:
```swift
OUDSTag(label: "Label", status: .neutral(icon: Image("image_name")))
```

or with a bullet instead of an icon:
```swift
OUDSTag(label: "Label", status: .neutral(bullet: true))
```

##### Input tag

An input tag is a small element that shows short information like a label, keyword, or category, which can be removed or changed on tap.
It is not an iOS native component.
Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsinputtag).

Input tag can be used like:

```swift
OUDSInputTag("Label") {
    // Do something, usually remove itself from a list
}
```

#### Layouts

##### Colored surface

Colored backgrounds use surface colors to maximize the contrast with content. The colors of several OUDS components (for instance butoton or link) are automatically adjusted if they are placed on such colored surface.
Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudscoloredsurface).

Colored surface uses tokens of colors modes available with `theme.colorModes` and can be used like:
```swift
    OUDSColoredSurface(color: theme.colorModes.onStatusPositiveEmphasized) {
        // The view with components insided
    }
```

##### Divider

A divider is used to separate content elements in a view. Two kinds of divider are proposed: horizontal and vertical. It is richer than native iOS component.
Dividers must be used with a predefined color.
Horizontal divider documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudshorizontaldivider)
Vertical divider documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsverticaldivider)

To use an horizontal divider:
```swift
OUDSHorizontalDivider(color: .brandPrimary)
```

To use a vertical divider:
```swift
OUDSVerticalDivider(color: .brandPrimary)
```

#### Navigations

##### Link

The link proposes layout with text only or text with icon. It also proposes layout to navigate forward or backward. The link can be displayed in small or default size.
It is richer than the native iOS component.
Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudslink).

Link can be used like:
```swift
OUDSLink(text: "Text", size: .default) { /* the action to process */ }
```

or with predefined indicator
```swift
OUDSLink(text: "Text", indicator: .back, size: .default) { /* the action to process */ }
```

or with an image:
```swift
OUDSLink(text: "Text", icon: Image("image_name"), size: .default) { /* the action to process */ }
```

##### Tab bar

Tab bar is a navigation component, based a lot on the iOS native component, and displays tabs to the user which redirect to views and journeys.
Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudstabbar).

If iOS lower than 26 is managed, a selected tab indicator must be displayed, thus the component must know the number of items to display and get
a selected item info associated to a tag:

```swift
OUDSTabBar(selected: 0, count: 3) {

    // Add the views with the SwiftUI tab item and labels
    // No need to define colors, everything is done inside OUDSTabBar
    // Image must be in 26 x 26
    // Tag value must be used in "selected" parameter
    SomeView()
        .tabItem {
            Label("Label 1", image: "image_1")
        }
        .tag(0)
    OtherView()
        .tabItem {
            Label("Label 2", image: "image_2")
        }
        .tag(1)
    LastView()
        .tabItem {
            Label("Label 3", image: "image_3")
        }
        .tag(2)
}
```

If the user targets iOS 26 and greater, prefer this definition of tab bar:
```swift
OUDSTabBar {

    // Add the views with the SwiftUI tab item and labels
    // No need to define colors, everything is done inside OUDSTabBar
    // Image must be in 26 x 26
    SomeView()
        .tabItem {
            Label("Label 1", image: "image_1")
        }
    OtherView()
        .tabItem {
            Label("Label 2", image: "image_2")
        }
    LastView()
        .tabItem {
            Label("Label 3", image: "image_3")
        }
}
```

