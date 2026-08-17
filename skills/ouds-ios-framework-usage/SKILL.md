---
name: ouds-ios-framework-usage
description: Setup and general usage of the OUDS iOS framework — imports, themes, token namespaces, view modifiers, image rules, shared control patterns and custom font registration. Load this first; then load the matching `ouds-ios-components-*` skill for a specific component family (actions, content-display, controls, dialogs, foundations, indicators, layouts, navigations).
license: MIT
---

# OUDS Framework Usage

## 1. Basic setup

```swift
import OUDSSwiftUI // Always use the umbrella import

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
    var body: some View {
        VStack(spacing: theme.spaces.fixedMedium) {
            OUDSButton(text: "Action", appearance: .default) {}
        }
        .padding(theme.spaces.fixedLarge)
    }
}
```

---

## 2. Imports

Can import internal modules, but for developer experience there are umbrella products:

| Product | Themes | When |
|---|---|---|
| `OUDSSwiftUI` | All | Default |
| `OUDSSwiftUIOrange` | Orange + OrangeCompact | Orange apps only |
| `OUDSSwiftUIOrangeSosh` | Orange + Sosh | Multi-brand |
| `OUDSSwiftUIWireframe` | Wireframe | Prototyping |

Internal modules: `OUDSComponents`, `OUDSTokensRaw`, `OUDSTokensSemantic`, `OUDSTokensComponent`, `OUDSThemesOrange`, `OUDSThemesSosh`, `OUDSFoundations`, etc.

---

## 3. Themes

```swift
OUDSThemeableView(theme: OrangeTheme()) { … }   // inject at root
@Environment(\.theme) private var theme          // consume anywhere
```

Available: `OrangeTheme`, `OrangeCompact`, `SoshTheme`, `WireframeTheme`.

---

## 4. Token namespaces

| Namespace | Content |
|---|---|
| `theme.colors` | Color semantic tokens |
| `theme.colorModes` | Color-mode tokens (for `OUDSColoredSurface`) |
| `theme.borders` | Border style / width / radius |
| `theme.fonts` | Typography |
| `theme.sizes` | Sizes |
| `theme.spaces` | Spacing |
| `theme.dimensions` | Dimensions |
| `theme.elevations` | Shadows / elevation |
| `theme.grids` | Grid |
| `theme.opacities` | Opacity |
| `theme.effects` | Visual effects |

---

## 5. View modifiers

```swift
Text("Hello")
.font(theme.fonts.bodyDefaultMedium) // typography — use view modifier with token
.foregroundColor(theme.colors.contentDefault)
.background(theme.colors.bgPrimary)
.border(style: theme.borders.styleDefault,
        width: theme.borders.widthThin,
        radius: theme.borders.radiusMedium,
        color: theme.colors.actionEnabled)
.shadow(theme.elevations.emphasized)
```

For `Shape` types, use `fill(_:style:)` with a color token — the light/dark variant is resolved automatically:

```swift
Circle()
    .fill(theme.colors.actionEnabled)                               // shape fill with token
RoundedRectangle(cornerRadius: 8)
    .fill(theme.colors.bgPrimary, style: FillStyle(eoFill: true))  // with custom fill style
```

---

## 6. Images in OUDS components

**Never call SwiftUI modifiers on an `Image` that is passed as a parameter to an OUDS component.**

OUDS components accept `Image` — the bare SwiftUI type. Calling any modifier on it (including `.accessibilityHidden(true)`) changes the type to `some View` and produces a compile error.

> The component handles the accessibility of its own images internally. You must not alter them from the call site.

**Never do this:**
```swift
OUDSButton(
    text: "Add",
    icon: Image(systemName: "plus").accessibilityHidden(true), // ❌ compile error: Image → some View
    appearance: .default) {}

OUDSLink(
    text: "Back",
    icon: OUDSImage(asset: Image(systemName: "chevron.left").accessibilityHidden(true)), // ❌ compile error: Image modifier → some View
    size: .default) {}
```

**Always do this — pass a bare `Image` inside `OUDSImage`, swiftlint comment on the line before:**
```swift
// swiftlint:disable:next accessibility_label_for_image
OUDSButton(text: "Add", icon: Image(systemName: "plus"), appearance: .default) {}

// swiftlint:disable:next accessibility_label_for_image
OUDSLink(text: "Back", icon: OUDSImage(asset: Image(systemName: "chevron.left")), size: .default) {}

// swiftlint:disable:next accessibility_label_for_image
OUDSToolBarItem(icon: Image("ic_share"), accessibilityLabel: "Share") {}
```

The `// swiftlint:disable:next accessibility_label_for_image` comment must appear **on the line immediately before** the component call, never on the line of the `Image(...)` itself.

Exception: `Image(decorative: "name")` suppresses the linter rule automatically and needs no comment.

---

## 7. Registering custom fonts

To use a custom font family with OUDS, two steps are required after adding the TTF files to your project:

**Step 1 — Register the font files** (Core Text, call once at app startup):

```swift
private static var fontsAlreadyRegistered = false

private func registerFonts() {
    guard !Self.fontsAlreadyRegistered else { return }
    Bundle.main.urls(forResourcesWithExtension: "ttf", subdirectory: nil)?
        .forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }
    Self.fontsAlreadyRegistered = true
}
```

**Step 2 — Register PostScript names** for each family + weight combination you use:

```swift
registerFont(postScript: "WinkyRough-Regular_Light",   forCombination: PSFNMK("Winky Rough", Font.Weight.light))
registerFont(postScript: "WinkyRough-Regular",         forCombination: PSFNMK("Winky Rough", Font.Weight.regular))
registerFont(postScript: "WinkyRough-Regular_Medium",  forCombination: PSFNMK("Winky Rough", Font.Weight.medium))
registerFont(postScript: "WinkyRough-Regular_SemiBold",forCombination: PSFNMK("Winky Rough", Font.Weight.semibold))
registerFont(postScript: "WinkyRough-Regular_Bold",    forCombination: PSFNMK("Winky Rough", Font.Weight.bold))
registerFont(postScript: "WinkyRough-Regular_Black",   forCombination: PSFNMK("Winky Rough", Font.Weight.black))
```

`kApplePostScriptFontNames` exposes the full map (read-only). OUDS uses it internally to resolve `Font` objects from theme font tokens. Unregistered combinations fall back to the family name without spaces.

---

## 8. Styled AttributedString from Markdown

OUDS provides utilities to create styled `AttributedString` from Markdown, with custom styling for links based on their text or URL.

### Basic usage

```swift
import OUDSComponents
import SwiftUI

let markdown = "Read our [terms of service](https://example.com/terms) and [privacy policy](https://example.com/privacy)"

let textColor = theme.colors.contentDefault.color(for: colorScheme)
let textFont = theme.fonts.bodyDefaultMedium

let urlColor = theme.colors.contentBrandPrimary.color(for: colorScheme)
let urlFont = theme.fonts.bodyStrongMedium

let configurations: [AtributedStringUrlConfiguration] = [
    AtributedStringUrlConfiguration(
        text: "terms of service",
        color: urlColor,
        font: urlFont
    ),
    AtributedStringUrlConfiguration(
        text: "privacy policy",
        urlToOpen: URL(string: "https://example.com/privacy")!,
        color: urlColor,
        font: urlFont
    ),
    AtributedStringUrlConfiguration(
        color: urlColor,
        font: urlFont
    )
]

let attributedString = AttributedString.from(
    markdown: markdown,
    foregroundColor: textColor,
    font: textFont,
    configurations: configurations
)
```

### Configuration options

| Initializer | Use case |
|---|---|
| `AtributedStringUrlConfiguration(text:urlToOpen:color:font:)` | Match by text **and** URL, set custom URL |
| `AtributedStringUrlConfiguration(text:color:font:)` | Match by text only (URL from markdown) |
| `AtributedStringUrlConfiguration(urlToOpen:color:font:)` | Match by URL only |
| `AtributedStringUrlConfiguration(color:font:)` | Default fallback for any unmatched link |

### Matching priority

1. First tries to match by URL (`urlToOpen.absoluteString == run.link?.absoluteString`)
2. Then tries to match by text (`text == linkText`)
3. Falls back to default configuration (no `text` and no `urlToOpen`)
4. If no match, applies base style from `foregroundColor` and `font`

---

## 10. Component skills

Load the matching skill for the component family you need. Each family skill mirrors `OUDS/Core/Components/Sources/<Family>/` in the repo.

| Family | Skill | Components |
|---|---|---|
| Actions | `ouds-ios-components-actions` | OUDSButton |
| Content Display | `ouds-ios-components-content-display` | OUDSBulletList |
| Controls | `ouds-ios-components-controls` | OUDSCheckbox, OUDSRadio, OUDSSwitch, OUDSSuggestionChip / OUDSFilterChip / OUDSChipPicker, OUDSPinCodeInput, OUDSPasswordInput, OUDSTextInput, OUDSTextArea |
| Dialogs | `ouds-ios-components-dialogs` | OUDSAlertMessage, OUDSInlineAlert |
| Foundations | `ouds-ios-components-foundations` | OUDSDisplay, OUDSHeading, OUDSLabel, OUDSBody, OUDSCode |
| Indicators | `ouds-ios-components-indicators` | OUDSBadge*, OUDSTag, OUDSInputTag, OUDSCircularProgressIndicator, OUDSLinearProgressIndicator |
| Layouts | `ouds-ios-components-layouts` | OUDSColoredSurface, OUDSHorizontalDivider, OUDSVerticalDivider |
| Navigations | `ouds-ios-components-navigations` | OUDSLink, OUDSTabBar, OUDSToolBarItem / `toolBarTop` / `toolBarBottom` |

---
