---
name: ouds-ios-framework-usage
description: Setup and general usage of the OUDS iOS framework — imports, themes, token namespaces, view modifiers, image rules, shared control patterns and custom font registration. Load this first; then load the matching `ouds-ios-components-*` skill for a specific component family (actions, content-display, controls, dialogs, indicators, layouts, navigations).
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

Never import internal modules. Always use an umbrella product:

| Product | Themes | When |
|---|---|---|
| `OUDSSwiftUI` | All | Default |
| `OUDSSwiftUIOrange` | Orange + OrangeCompact | Orange apps only |
| `OUDSSwiftUIOrangeSosh` | Orange + Sosh | Multi-brand |
| `OUDSSwiftUIWireframe` | Wireframe | Prototyping |

Internal modules (never import directly): `OUDSComponents`, `OUDSTokensRaw`, `OUDSTokensSemantic`, `OUDSTokensComponent`, `OUDSThemesOrange`, `OUDSThemesSosh`, `OUDSFoundations`, etc.

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

## 5b. Images in OUDS components

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

## 6. Common patterns (shared by multiple Controls components)

These patterns apply to Checkbox, Radio, Switch, TextInput, TextArea, PinCodeInput, PasswordInput unless noted otherwise.

| Pattern | Syntax |
|---|---|
| Error state | `isError: true, errorText: "Message"` |
| Rich error | `errorText: AttributedString` |
| Plain helper | `helperText: "…"` |
| Rich helper | `helperText: AttributedString` |
| Error status (inputs) | `status: .error(message: "…")` |
| Rich error status | `status: .richError(message: AttributedString)` |
| Read-only | `isReadOnly: true` |
| Disabled | `.disabled(true)` — never combine with `isError` or `isReadOnly` |

> **Forbidden combinations** (fatal error at runtime): `isError` + `isReadOnly`, `isError` + `.disabled`, `isReadOnly` + `.disabled`

---

## 7. Component skills

Load the matching skill for the component family you need. Each family skill mirrors `OUDS/Core/Components/Sources/<Family>/` in the repo.

| Family | Skill | Components |
|---|---|---|
| Actions | `ouds-ios-components-actions` | OUDSButton |
| Content Display | `ouds-ios-components-content-display` | OUDSBulletList |
| Controls | `ouds-ios-components-controls` | OUDSCheckbox, OUDSRadio, OUDSSwitch, OUDSSuggestionChip / OUDSFilterChip / OUDSChipPicker, OUDSPinCodeInput, OUDSPasswordInput, OUDSTextInput, OUDSTextArea |
| Dialogs | `ouds-ios-components-dialogs` | OUDSAlertMessage, OUDSInlineAlert |
| Indicators | `ouds-ios-components-indicators` | OUDSBadge*, OUDSTag, OUDSInputTag, OUDSCircularProgressIndicator |
| Layouts | `ouds-ios-components-layouts` | OUDSColoredSurface, OUDSHorizontalDivider, OUDSVerticalDivider |
| Navigations | `ouds-ios-components-navigations` | OUDSLink, OUDSTabBar, OUDSToolBarItem / `toolBarTop` / `toolBarBottom` |

---

## 8. Registering custom fonts

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
