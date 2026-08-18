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

## 8. Styled AttributedString with hyperlinks

OUDS provides utilities to create styled `AttributedString` from plain text or Markdown, with custom styling for links based on their text or URL.

Font tokens (e.g. `theme.fonts.bodyDefaultMedium`) are `MultipleFontCompositeSemanticToken` values, not SwiftUI `Font`.
Convert them with `Font.makeFont(family:from:isCompact:)` before using them in `AttributedStringUrlConfiguration` or `AttributedString.from(...)`.

### Basic usage — Markdown

```swift
import OUDSComponents
import SwiftUI

let markdown = "Read our [terms of service](https://example.com/terms) and [privacy policy](https://example.com/privacy)"

let textColor = theme.colors.contentDefault.color(for: colorScheme)
let textFont = Font(Font.makeFont(family: theme.fontFamily,
                                   from: theme.fonts.bodyDefaultMedium,
                                   isCompact: horizontalSizeClass == .compact || verticalSizeClass == .compact))

let urlColor = theme.colors.contentBrandPrimary.color(for: colorScheme)
let urlFont = Font(Font.makeFont(family: theme.fontFamily,
                                  from: theme.fonts.bodyStrongMedium,
                                  isCompact: horizontalSizeClass == .compact || verticalSizeClass == .compact))

let configurations: [AttributedStringUrlConfiguration] = [
    AttributedStringUrlConfiguration(
        text: "terms of service",
        color: urlColor,
        font: urlFont
    ),
    AttributedStringUrlConfiguration(
        text: "privacy policy",
        urlToOpen: URL(string: "https://example.com/privacy")!,
        color: urlColor,
        font: urlFont
    ),
    AttributedStringUrlConfiguration(
        color: urlColor,
        font: urlFont
    )
]

let attributedString = AttributedString.from(
    markdown: markdown,
    foregroundColor: textColor,
    font: textFont,
    urlConfigurations: configurations
)
```

### Basic usage — plain text

Use `AttributedString.from(text:foregroundColor:font:urlConfigurations:)` when the text and the words to turn into hyperlinks are known upfront
(no Markdown syntax). Each configuration **must** provide both `text` and `urlToOpen`, otherwise it is ignored:

```swift
let attributedString = AttributedString.from(
    text: "You must read the terms of service before continuing",
    foregroundColor: textColor,
    font: textFont,
    urlConfigurations: [
        AttributedStringUrlConfiguration(
            text: "terms of service",
            urlToOpen: URL(string: "https://example.com/terms")!,
            color: urlColor,
            font: urlFont
        )
    ]
)
```

A `LocalizedStringKey`-based overload is also available: `AttributedString.from(_:tableName:bundle:foregroundColor:font:urlConfigurations:)`.
`AttributedStringUrlConfiguration` also has a `LocalizedStringKey`-based initializer: `AttributedStringUrlConfiguration(_:tableName:bundle:urlToOpen:color:font:)`.

### Foreground color only (no hyperlinks)

If you only need to apply a color to a whole text or Markdown source (no custom font, no hyperlink styling), use the simpler overloads:

```swift
let coloredText = AttributedString.from(text: "Some plain text", foregroundColor: textColor)
let coloredKey = AttributedString.from("some.localized.key", foregroundColor: textColor)
let coloredMarkdown = AttributedString.from(markdown: someMarkdown, foregroundColor: textColor)
```

Each of these also has a `ColorSemanticToken`-based overload, e.g. `AttributedString.from(text:foregroundColor: ColorSemanticToken)`.

### Configuration options

| Initializer | Use case |
|---|---|
| `AttributedStringUrlConfiguration(text:urlToOpen:color:font:)` | Match by text **and** URL, set custom URL. Required form for `AttributedString.from(text:...)` |
| `AttributedStringUrlConfiguration(text:color:font:)` | Match by text only (URL taken from Markdown). Only usable with `AttributedString.from(markdown:...)` |
| `AttributedStringUrlConfiguration(urlToOpen:color:font:)` | Match by URL only. Only usable with `AttributedString.from(markdown:...)` |
| `AttributedStringUrlConfiguration(color:font:)` | Default fallback for any unmatched link. Only usable with `AttributedString.from(markdown:...)` |

### Matching priority (Markdown only)

For each hyperlink found in the Markdown source, the **first** configuration in the `urlConfigurations` array that matches (by URL **or** by text) is applied:

1. Configurations are scanned in array order; the first one whose `urlToOpen` matches the link's URL, or whose `text` matches the link's text, wins.
2. If no configuration matches, the default configuration (the one with no `text` and no `urlToOpen`) is applied, if any.
3. If neither matches, a warning is logged and the base `foregroundColor` / `font` style is kept.

`AttributedString.from(text:...)` does not use this fallback logic: only configurations with both `text` and `urlToOpen` set are applied, matched by exact text.

---

## 9. Component skills

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
