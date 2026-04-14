---
name: ouds-framework-usage
description: How to set up and use the OUDS iOS framework with imports, themes, tokens, view modifiers, and all available components with code examples
license: MIT
compatibility: opencode
---

# OUDS Framework Usage

Full reference for integrating and using the OUDS iOS Swift Package.

---

## 1. Basic setup

```swift
import SwiftUI
import OUDSSwiftUI // Umbrella import

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: OrangeTheme()) {
                ContentView()
            }
        }
    }
}

struct ContentView: View {
    @Environment(\.theme) private var theme
    @State private var isToggled = false

    var body: some View {
        VStack(spacing: theme.spaces.fixedMedium) {
            OUDSButton(text: "Primary Action", appearance: .default) {}
            OUDSSwitch(isOn: $isToggled, accessibilityLabel: "Toggle setting")
        }
        .padding(theme.spaces.fixedLarge)
    }
}
```

---

## 2. Imports

```swift
import OUDSSwiftUI // Recommended umbrella import
```

Other granular imports are documented at https://ios.unified-design-system.orange.com/documentation/oudsthemescontract/gettingstarted

---

## 3. Themes

Available themes: `OrangeTheme`, `OrangeCompact`, `SoshTheme`, `WireframeTheme`.

```swift
// Instantiate
let theme = OrangeTheme()

// Inject at root
OUDSThemeableView(theme: theme) { … }

// Consume anywhere
@Environment(\.theme) private var theme
```

---

## 4. Token namespaces

| Namespace | Usage |
|-----------|-------|
| `theme.colors` | Color semantic tokens |
| `theme.colorModes` | Color-mode tokens (for `OUDSColoredSurface`) |
| `theme.borders` | Border style / width / radius tokens |
| `theme.fonts` | Typography tokens |
| `theme.sizes` | Size tokens |
| `theme.spaces` | Spacing tokens |
| `theme.dimensions` | Dimension tokens |
| `theme.elevations` | Shadow / elevation tokens |
| `theme.grids` | Grid tokens |
| `theme.opacities` | Opacity tokens |
| `theme.effects` | Visual-effect tokens |

---

## 5. View modifiers

### Typography
Use OUDS modifiers instead of SwiftUI's `font()`:
```swift
Text("Hello").bodyDefaultMedium(theme)
```

### Colors
```swift
.foregroundColor(theme.colors.contentDefault)
.background(theme.colors.bgPrimary)
.tint(theme.colors.contentDefault)
```

### Border
```swift
.border(style: theme.borders.styleDefault,
        width: theme.borders.widthThin,
        radius: theme.borders.radiusMedium,
        color: theme.colors.actionEnabled)
```

### Shadow / elevation
```swift
.shadow(theme.elevations.emphasized)
```

---

## 6. Components

### Actions — Button
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsbutton/

```swift
OUDSButton(text: "Label", appearance: .default, style: .default) {}
OUDSButton(text: "Label", appearance: .default, style: .loading) {}
OUDSButton(text: "Label", icon: Image("ic"), appearance: .default) {}
OUDSButton(icon: Image("ic"), accessibilityLabel: "Label") {}
```

---

### Content Display — Bullet List
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsbulletlist/

```swift
// Unordered (default)
OUDSBulletList {
    OUDSBulletList.Item("Label 1")
    OUDSBulletList.Item("Label 2")
}

// Ordered, nested
OUDSBulletList(type: .ordered) {
    OUDSBulletList.Item("Label 1") {
        OUDSBulletList.Item("Label 1.1")
    }
    OUDSBulletList.Item("Label 2")
}
```

---

### Controls — Checkbox
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudscheckbox/

```swift
OUDSCheckbox(isOn: $isOn, accessibilityLabel: "Label")
OUDSCheckboxItem("Label", isOn: $isOn)
OUDSCheckboxItem("Label", isOn: $isOn, description: "Hint", icon: Image(decorative: "ic"))

// Picker
let data: [OUDSCheckboxPickerData<String>] = [
    .init(tag: "a", label: "Option A"),
]
OUDSCheckboxPicker(selections: $selections, checkboxes: data)
```
Picker docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudscheckboxpicker

---

### Controls — Radio Button
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsradio/

```swift
OUDSRadio(isOn: $selection, accessibilityLabel: "Label")
OUDSRadioItem("Label", isOn: $isOn)
OUDSRadioItem("Label", isOn: $isOn, icon: Image(decorative: "ic"))

// Picker
let data: [OUDSRadioPickerData<String>] = [
    .init(tag: "a", label: "Option A"),
]
OUDSRadioPicker(selection: $selection, radios: data, placement: .vertical)
```
Picker docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsradiopicker

---

### Controls — Switch / Toggle
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsswitch

```swift
OUDSSwitch(isOn: $isOn, accessibilityLabel: "Label")
OUDSSwitchItem("Label", isOn: $isOn)
OUDSSwitchItem("Label", isOn: $isOn, icon: Image(decorative: "ic"))
```

---

### Controls — Suggestion Chip
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudssuggestionchip

```swift
OUDSSuggestionChip(text: "Label") {}
OUDSSuggestionChip(icon: Image("ic"), text: "Label") {}
OUDSSuggestionChip(icon: Image("ic"), accessibilityLabel: "Label") {}
```

---

### Controls — Filter Chip & Chip Picker
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudschippicker

```swift
OUDSFilterChip(text: "Label") {}
OUDSFilterChip(icon: Image("ic"), text: "Label") {}

// Picker
let data: [OUDSChipPickerData<MyEnum>] = [
    .init(tag: .value1, layout: .textAndIcon("Label", icon: Image("ic"))),
]
OUDSChipPicker(title: "Title", selection: $selection, chips: data)
```

---

### Controls — Text Input
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudstextinput

```swift
OUDSTextInput(label: "Label", text: $text)
OUDSTextInput(label: "Label", text: $text, placeholder: "…", prefix: "Pre", suffix: "Suf")
OUDSTextInput(label: "Label", text: $text, leadingIcon: Image("ic"))
OUDSTextInput(label: "Label", text: $text,
              trailingAction: .init(icon: Image("ic"), actionHint: "Hint") {})
OUDSTextInput(label: "Label", text: $text, status: .error(message: "Error"))
```

---

### Controls — Text Area
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudstextarea

```swift
// Basic
OUDSTextArea(label: "Label", text: $text)

// With placeholder
OUDSTextArea(label: "Label", text: $text, placeholder: "Describe…")

// Plain helper text
OUDSTextArea(label: "Label", text: $text, helperText: .plain("Max 500 chars."))

// Remaining characters — count is rendered bold in the UI
OUDSTextArea(label: "Label", text: $text, helperText: .charactersMaxCount(500))

// Helper link
let helperLink = OUDSTextArea.Helperlink(text: "Learn more") { openUrl(url) }
OUDSTextArea(label: "Label", text: $text, helperLink: helperLink)

// Error status — error message replaces the helper text
OUDSTextArea(label: "Label", text: $text, status: .error(message: "Required."))
```

> Min visible lines: `OUDSTextArea.minLines` (3). Max lines before scrolling: `OUDSTextArea.maxLines` (10).

---

### Dialogs — Alert Message
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsalertmessage

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`

```swift
OUDSAlertMessage(label: "Label")   // positive by default
OUDSAlertMessage(label: "Warning", status: .warning,
                 description: "Details") { /* dismiss */ }
OUDSAlertMessage(label: "Label",
                 status: .neutral(icon: OUDSIcon(asset: Image("ic_heart"))),
                 bulletList: ["A", "B"],
                 link: .init(text: "More", position: .bottom) {},
                 onClose: {})
```

---

### Dialogs — Inline Alert

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`

```swift
OUDSInlineAlert(label: "Label")
OUDSInlineAlert(label: "Warning", status: .warning)
OUDSInlineAlert(label: "Label", status: .accent(icon: OUDSIcon(asset: Image("ic_heart"))))
```

---

### Indicators — Badge
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsbadge

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative` — Sizes: `extraSmall`, `small`, `medium`, `large`

```swift
OUDSBadge(status: .neutral, size: .medium)
OUDSBadge(count: 3, status: .neutral, size: .medium)
OUDSBadge(status: .neutral(icon: Image("ic")), accessibilityLabel: "Label", size: .medium)
```

---

### Indicators — Tag
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudstag

```swift
OUDSTag(label: "Label")
OUDSTag(label: "Label", status: .neutral(icon: Image("ic")))
OUDSTag(label: "Label", status: .neutral(bullet: true))
```

---

### Indicators — Input Tag
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsinputtag

```swift
OUDSInputTag("Label") { /* remove action */ }
```

---

### Layouts — Colored Surface
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudscoloredsurface

```swift
OUDSColoredSurface(color: theme.colorModes.onStatusPositiveEmphasized) {
    // child views here
}
```

---

### Layouts — Divider
Horizontal docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudshorizontaldivider
Vertical docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudsverticaldivider

```swift
OUDSHorizontalDivider(color: .brandPrimary)
OUDSVerticalDivider(color: .brandPrimary)
```

---

### Navigations — Link
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudslink

```swift
OUDSLink(text: "Text", size: .default) {}
OUDSLink(text: "Text", indicator: .back, size: .default) {}
OUDSLink(text: "Text", icon: Image("ic"), size: .default) {}
```

---

### Navigations — Tab Bar
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/oudstabbar

```swift
// iOS 15–25: declare a @State for the selected tab, then pass it as a Binding.
// The binding is updated when the user taps a tab, and changing it programmatically
// switches the displayed tab.
@State private var selectedTab = 0

OUDSTabBar(selectedTab: $selectedTab, count: 3) {
    SomeView().tabItem { Label("Tab 1", image: "ic_1") }.tag(0)
    OtherView().tabItem { Label("Tab 2", image: "ic_2") }.tag(1)
    LastView().tabItem { Label("Tab 3", image: "ic_3") }.tag(2)
}

// iOS 26+: no need for selectedTab/count
OUDSTabBar {
    SomeView().tabItem { Label("Tab 1", image: "ic_1") }
    OtherView().tabItem { Label("Tab 2", image: "ic_2") }
    LastView().tabItem { Label("Tab 3", image: "ic_3") }
}
```

> Tab bar images must be 26×26 pt. Colors are managed automatically by `OUDSTabBar`.
> `OUDSTabBar(selected:count:content:)` (plain `Int`) is deprecated — use `OUDSTabBar(selectedTab:count:content:)` (`Binding<Int>`) instead.

---

### Navigations — Toolbar Top
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/toolBartop

> **Availability:** iOS 15+, visionOS 1+. Not available on watchOS, tvOS, or macOS.

Use the `.toolBarTop(…)` view modifier (preferred) or the `toolBarTop` `ViewModifier` directly.

**Requirements:**
- Must be placed inside a `NavigationStack` (or `NavigationView` on iOS 15/16).
- Call `.oudsNavigationBarAppearance()` **once** on the root `NavigationStack` to apply OUDS styling to the system navigation bar.
- On iOS ≤ 18, add `.accentColor(theme.colors.contentDefault)` on the root view to color the system back-button chevron correctly.
- Only one top toolbar per screen.
- `subtitle` is only rendered on iOS 26+; it is ignored when `hasLargeTitle` is `true`.

```swift
// Minimal — title only
NavigationStack {
    ContentView()
        .toolBarTop("My Title")
}

// With leading / trailing items
NavigationStack {
    ContentView()
        .toolBarTop("My Title",
            leadingItems: {
                toolBarItem(navigation: .back())
            },
            trailingItems: {
                toolBarItem(icon: Image("ic_settings"),
                                accessibilityLabel: "Settings") { }
            })
}

// Large title with subtitle (subtitle visible on iOS 26+ only)
NavigationStack {
    ContentView()
        .toolBarTop("My Title", hasLargeTitle: true, subtitle: "Sub")
}

// iOS ≤ 18: apply on root view to color the system back-button chevron
.accentColor(theme.colors.contentDefault)
```

---

### Navigations — Toolbar Bottom
Docs: https://ios.unified-design-system.orange.com/documentation/oudscomponents/toolBarbottom

> **Availability:** iOS 15+, visionOS 1+. Not available on watchOS, tvOS, or macOS.

Use the `.toolBarBottom(…)` view modifier (preferred) or the `toolBarBottom` `ViewModifier` directly.

**Requirements:**
- Only one bottom toolbar per screen.
- **Never combine with `OUDSTabBar`** on the same screen — they conflict on both iOS 18 and iOS 26+.
- The `groupedItems` layout is only meaningful on iOS 26+ (Liquid Glass); on earlier OS versions the system splits the items into leading/trailing positions.

```swift
// Leading + trailing split
ContentView()
    .toolBarBottom(
        leadingItems: {
            toolBarItem(label: "Edit") { }
        },
        trailingItems: {
            toolBarItem(icon: Image("ic_share"),
                            accessibilityLabel: "Share") { }
        })

// Grouped / centered — iOS 26+ (Liquid Glass) only
ContentView()
    .toolBarBottom(
        groupedItems: {
            toolBarItem(label: "Save") { }
            toolBarItem(icon: Image("ic_delete"),
                            accessibilityLabel: "Delete") { }
        })

// ⚠️ Never combine toolBarBottom with OUDSTabBar on the same screen.
```

---

### Navigations — Toolbar Item (`toolBarItem`)

`toolBarItem` is the building block for both `toolBarTop` and `toolBarBottom`. Items are composed with the `@toolBarItemsBuilder` result builder, which supports conditionals and loops.

**Action styles** (`toolBarItem.ActionStyle`) — iOS 26+ only:

| Case | Visual effect |
|------|---------------|
| `.default` | Standard appearance |
| `.prominent` | Filled/emphasized appearance |
| `.tinted` | Tinted appearance |

```swift
// Action — text label
toolBarItem(label: "Edit") { }

// Action — icon
toolBarItem(icon: Image("ic_share"), accessibilityLabel: "Share") { }

// Action — explicit style (iOS 26+ only)
if #available(iOS 26, *) {
    toolBarItem(
        action: .label("Save", emphasized: false, accessibilityHint: nil) { },
        style: .proiminent)
}

// Navigation — back (custom dismiss handler)
toolBarItem(navigation: .back(label: "Back") { })

// Navigation — back (default system dismiss)
toolBarItem(navigation: .back { })

// Navigation — close (built-in dismiss; uses ic_button_expurge icon)
toolBarItem(navigation: .close)

// Custom view (e.g. a Menu)
toolBarItem {
    Menu("More") {
        Button("Option 1") { }
        Button("Option 2") { }
    }
}

// Conditional item using result-builder syntax
.toolBarTop("Title",
    trailingItems: {
        if isEditing {
            toolBarItem(label: "Done") { isEditing = false }
        } else {
            toolBarItem(label: "Edit") { isEditing = true }
        }
    })
```