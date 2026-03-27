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

## 1. Project Overview

OUDS means Orange Unified Design System and is the new cohesive and unified design system for Orange Group.
It provides a Swift Package (this repository) and a demo application called Design System Tooblox which embeds the Swift Package to expose its public API.
The project is open source under MIT license and hosted on GitHub in Orange-OpenSource organization.
The products support iOS 15, iPadOS 15, macOS 13, visionOS 1, watchOS 11 and tvOS 16.
The products are written in Swift with SwiftUI as UI framework and Swift 6 (format, grammar and concurrency).

## 2. Vocabulary

- *tokenator*: an internal tool which uses Figma specifications exported as JSON to convert them and send through pull requests the Swift code for tokens
- *token*: variable containing a value in most of cases defined by *tokenator*
- *raw token*: a family of tokens which have for value a raw type value like String, Int, or CGFloat
- *semantic token*: a family of tokens which point to raw tokens and bring meanings in their name, used inside components
- *component tokens*: a family of tokens for some components if semantic tokens are not enough, and have for values semantic tokens
- *theme*: a set of tokens, assets like fonts and images, to use in app to style it and change their look and feels
- *tuning*: some small configuration elements for a theme like rounded corners
- *token provider*: an object in a theme gathering tokens (semantics and components)
- *component*: mainly a SwiftUI view with specific features and layouts like buttons, switch, link etc.


> **Note for contributors and maintainers**: Code formatting, architecture details, build process, best practices, ecodesign, accessibility, development requirements, build commands and review guidelines are documented in [`.github/copilot-instructions.md`](.github/copilot-instructions.md).

## 3. How to use OUDS framwork

### 3.1 Basic setup

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

### 3.2 Import OUDS product

Import OUDS umbrella product gathering all other librairies:
```swift
import OUDSSwiftUI
```

The user can import other librairies as explained in [the online documentation](https://ios.unified-design-system.orange.com/documentation/oudsthemescontract/gettingstarted).
These imports are mandatory.

### 3.3 Instanciate a theme object

Create a theme for Orange product:
```swift
    let theme = OrangeTheme()
```

The user can use instead `SoshTheme`, `WireframeTheme` or `OrangeCompact` theme.

### 3.4 Inject a theme in an app

Use an `OUDSThemeableView` to inject the theme. This is the root view defining several environment objects.
The theme must be injected inside it to be available everywhere.

```swift
OUDSThemeableView(theme: theme) {

}
```

### 3.5 Get the theme object

Get the theme object as environment object:
```swift
@Environment(\.theme) private var theme
```

### 3.6 Use tokens from theme to apply syle

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

### 3.7 Use helpers and view modifiers

#### Apply typography

OUDS framework provides SwiftUI view modifiers to apply typography on texts (using a token).
For example, if a user wants to apply typography `theme.fonts.bodyDefaultMedium` he must not use the `font()` method from SwiftUI but instead
the dedicated OUDS view modifier with the same name as the typography, i.e. `bodyDefaultMedium(theme)`.

#### Apply colors

OUDS framework provides SwiftUI view modifiers to apply colors (using tokens).

For example if a user want to apply in foreground the color `theme.colors.contentDefault`, use
the dedicated OUDS overload of `foregroundColor(_:)` passing a `MultipleColorSemanticToken`:
```swift
.foregroundColor(theme.colors.contentDefault)
```

The logic is the same for background color which must use the dedicated OUDS overload of `background(_:)`:
```swift
.background(theme.colors.bgPrimary)
```

The logic is the same for tint color which must use the dedicated OUDS overload of `tint(_:)`:
```swift
.tint(theme.colors.contentDefault)
```

#### Add border

Border can be defined using the OUDS overload of `border(style:width:radius:color:)` with tokens in parameters like:
```swift
.border(style: theme.borders.styleDefault,
        width: theme.borders.widthThin,
        radius: theme.borders.radiusMedium,
        color: theme.colors.actionEnabled)
```

#### Add shadow / elevation effect

Elevations effets or box shadows can be applied to view with the dedicated OUDS overload of `shadow(_:)` with an elevation token like:
```swift
.shadow(theme.elevations.emphasized)
```


### 3.8 Use components

#### Actions

##### Button

A button proposes layout with text only, icon only or text and icon. Four hierarchies are proposed for all layouts: default, strong, minimal and negative. 
Button has several styles: default and loading.
Button has several appearances: default, strong, brand, minimal and negative.
Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsbutton/).

Button can be intantiated like:
```swift
OUDSButton(text: "Some text", appearance: .default,  style: .default) { /* the action to process */ }
```

or in loading state:
```swift
OUDSButton(text: "Some text", appearance: .default,  style: .loading) { /* the action to process */ }
```

or with an image and a text inside:
```swift
OUDSButton(text: "Some text", icon: Image("image_name"), appearance: .default) { /* the action to process */ }
```

or only with an image:
```swift
OUDSButton(icon: Image("image_name"), accessibilityLabel: "Some label") { /* the action to process */ }
```

### Content Display

#### Bullet list

A bullet list is a list of elements which can be ordered or not. OUDS bullet lists can have up to 3 levels of depth.
A bullet list can be unordered (default), ordered or bare (i.e. without leading chips not indices).

Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsbulletlist/).

A bullet list by default is not ordered:
```swift
OUDSBulletList {
    OUDSBulletList.Item("Label 1")
    OUDSBulletList.Item("Label 2")
    OUDSBulletList.Item("Label 3")
}
```

A bullet lsit can have several levels of depth by nesting items
```swift
OUDSBulletList(type: .ordered) {
    OUDSBulletList.Item("Label 1") {
        OUDSBulletList.Item("Label 1.1") {
            OUDSBulletList.Item("Label 1.1.1")
            OUDSBulletList.Item("Label 1.1.2")
        }
    }
    OUDSBulletList.Item("Label 2")
        OUDSBulletList.Item("Label 3")
    }
```

### Controls

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
OUDSCheckboxItem("An important text",
                 isOn: $isOn,
                 description: "A secondary text",
                 icon: Image(decorative: "image_name"))
```

or only with one text:
```swift
@Published var isOn: Bool = true
OUDSCheckboxItem("Hello world", isOn: $isOn)
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
OUDSRadioItem("Some text",
              isOn: $isOn,
              icon: Image(decorative: "image_name"))
```

or only with one text:
```swift
@Published var isOn: Bool = true
OUDSRadioItem("Some text", isOn: $isOn)
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
OUDSRadioPicker(selection: $selection, radios: someDataToPopulate, placement: .vertical)
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
OUDSTextInput(label: "Some label", text: $text, placeholder: "Placeholder", prefix: "Prefix", suffix: "Suffix")
```

or with a trailing action button:
```swift
@State var text: String = ""
let trailingAction = OUDSTextInput.TrailingAction(icon: Image("image_name"), actionHint: "Some label") { /* Action to process */ }
OUDSTextInput(label: "Label", text: $text, trailingAction: trailingAction)
```

Text input can also manage errors like:
```swift
OUDSTextInput(label: "Label",
              text: $text,
              status: .error(message: "Error message"))
```

or have also a leading icon:
```swift
OUDSTextInput(label: "Label", text: $text, leadingIcon: Image("image_name"))
```

#### Dialogs

##### Alert Messages

Alert message is a UI element that displays system feedback, status changes or required action; throughout detailed, prominent, persistent and actionable communication. It does not disappear automatically and remains visible until dismissed or resolved by the user.
Its documentation is [available online](https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsalertmessage).
Alert message can have 1 status between 6: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`. `neutral` and `accent` status can have custom icon.
 
Alert message are positive by default:
```swift
OUDSAlertMessage(label: "Label")
```

They can have also a description and a close action:
```
OUDSAlertMessage(label: "Warning", status: .warning, description: "Some details about the warning") {
    // Do some tasks here to dismiss the alert message when clicked
}
```

Alerts can have custom icons, bullet lists and detail link:
```swift
OUDSAlertMessage(label: "Label",
                status: .neutral(icon: OUDSIcon(asset: Image("ic_heart")))
                bulletList: ["Bullet 1", "Bullet 2", "Bullet 3"],
                link: .init(text: "Link", position: .bottom) {},
                onClose: {})
```

#### Inline Alert

Inline alert is a lightweight UI element, placed in the content flow, that displays information, system feedback, status changes throughout short, prominent, 
persistent and non actionable communication. 
Inline alert includes functional icon and semantic colour, and does not include a close button and/or action link. 
Inline alert does not disappear and remains visible.

It can have only a label (by default at neutral status):
```swift
OUDSInlineAlert(label: "Label")
```

The status can be changed (within `neutral`, `accent`, `positive`, `info`, `warning`, `negative`. `neutral` and `accent`)
```swift
OUDSInlineAlert(label: "Warning", status: .warning)
```

Custom icon can be used for accent and neutral status:
```
OUDSInlineAlert(label: "Label", status: .accent(icon: OUDSIcon(asset: Image("ic_heart"))))
OUDSInlineAlert(label: "Label", status: .neutral(icon: OUDSIcon(asset: Image("ic_heart"))))
```

#### Indicators

##### Badge

A badge is a small UI element used to highlight status, notifications, or categorization within an interface. 
It is often displayed as a label or indicator with a distinct background color and text. It is richer than the native iOS component.
Badge has several status: neutral, accent, positive, info, warning and negative.
Badge has several sizes: extraSmall, small, medium and large.

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
It is not an iOS native component.
Tag has several status: positive, info, negative, warning, neutral and accent.
Tag has several appearances: emphasized and muted.
Tag has several shapes: square and rounded.
Tag has several sizes: default and small.
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

Colored backgrounds use surface colors to maximize the contrast with content. The colors of several OUDS components (for instance button or link) are automatically adjusted if they are placed on such colored surface.
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

