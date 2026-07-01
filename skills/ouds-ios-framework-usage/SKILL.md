---
name: ouds-ios-framework-usage
description: How to set up and use the OUDS iOS framework with imports, themes, tokens, view modifiers, and all available components with code examples
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

## 6. Common patterns (shared by multiple components)

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

## 7. Components

**Index:** [Button](#actions--button) · [BulletList](#content-display--bullet-list) · [Checkbox](#controls--checkbox) · [Radio](#controls--radio-button) · [Switch](#controls--switch) · [PinCode](#controls--pin-code-input) · [Password](#controls--password-input) · [Chips](#controls--chips) · [TextInput](#controls--text-input) · [TextArea](#controls--text-area) · [AlertMessage](#dialogs--alert-message) · [InlineAlert](#dialogs--inline-alert) · [Badge](#indicators--badge) · [Tag](#indicators--tag) · [InputTag](#indicators--input-tag) · [ColoredSurface](#layouts--colored-surface) · [Divider](#layouts--divider) · [Link](#navigations--link) · [TabBar](#navigations--tab-bar) · [Toolbars](#navigations--toolbars)

---

### Actions — Button

```swift
OUDSButton(text: "Label", appearance: .default) {}
OUDSButton(text: "Label", appearance: .default, style: .loading) {}
OUDSButton(text: "Label", icon: Image("ic"), appearance: .default) {}
OUDSButton(icon: Image("ic"), accessibilityLabel: "Label") {}
```

---

### Content Display — Bullet List

```swift
OUDSBulletList {
    OUDSBulletList.Item("Label 1")
    OUDSBulletList.Item("Label 2")
}
OUDSBulletList(type: .ordered) {
    OUDSBulletList.Item("Label 1") { OUDSBulletList.Item("Label 1.1") }
}
OUDSBulletList { OUDSBulletList.Item(AttributedString(…)) }
```

---

### Controls — Checkbox

```swift
OUDSCheckbox(isOn: $isOn, accessibilityLabel: "Label")
OUDSCheckboxIndeterminate(selection: $selection, accessibilityLabel: "Label")
OUDSCheckboxItem("Label", isOn: $isOn)
OUDSCheckboxItem("Label", isOn: $isOn, description: "Helper",
                 icon: OUDSImage(asset: Image(decorative: "ic")))
OUDSCheckboxItem("Label", isOn: $isOn,
                 icon: OUDSImage(asset: Image(decorative: "ic")), isReversed: true)
// Raw (non-tinted) image:
OUDSCheckboxItem("Label", isOn: $isOn,
                 icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
OUDSCheckboxItem("Label", isOn: $isOn,
                 icon: OUDSImage(asset: Image(systemName: "figure.handball"),
                                 flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
OUDSCheckboxItem(LocalizedStringKey("agree_terms"), bundle: Bundle.module, isOn: $isOn,
                 icon: OUDSImage(asset: Image(decorative: "ic")))
// Indeterminate (three states) — also accepts LocalizedStringKey:
OUDSCheckboxItemIndeterminate("Label", selection: $selection,
                               icon: OUDSImage(asset: Image(decorative: "ic")))
OUDSCheckboxItemIndeterminate(LocalizedStringKey("select_all"), bundle: Bundle.module,
                               selection: $selection)
// Error / helper / disabled → see §6 Common patterns
```

> Parameter order: `(_ label:, isOn:, description:, icon:, isReversed:, isError:, errorText:, isReadOnly:, hasDivider:, constrainedMaxWidth:, action:)`

```swift
// Picker — icon is OUDSImage?
OUDSCheckboxPicker(selections: $selections, checkboxes: [
    .init(tag: "a", label: "Option A"),
    .init(tag: "b", label: "Option B", description: "Details", isReversed: true),
    .init(tag: "c", label: "Option C", icon: OUDSImage(asset: Image(systemName: "flame"))),
    .init(tag: "d", label: "Option D",
          icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original)),
])
OUDSCheckboxPicker(selections: $selections, checkboxes: data,
                   placement: .verticalRooted("All options", .textAndCount))
OUDSCheckboxPicker(selections: $selections, checkboxes: data,
                   isReversed: true, placement: .horizontal(true))
```

---

### Controls — Radio Button

```swift
OUDSRadio(isOn: $isOn, accessibilityLabel: "Label")
OUDSRadioItem("Label", isOn: $isOn)
OUDSRadioItem("Label", isOn: $isOn, icon: OUDSImage(asset: Image(decorative: "ic")))
// Raw (non-tinted) image:
OUDSRadioItem("Label", isOn: $isOn,
              icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
OUDSRadioItem("Label", isOn: $isOn,
              icon: OUDSImage(asset: Image(systemName: "chevron.right"),
                              flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
OUDSRadioItem(LocalizedStringKey("option_label"), bundle: Bundle.module, isOn: $isOn,
              icon: OUDSImage(asset: Image(decorative: "ic")))
// Error / helper / disabled → see §6 Common patterns
OUDSRadioPicker(selection: $selection,
                radios: [
                    .init(tag: "a", label: "Option A"),
                    .init(tag: "b", label: "Option B",
                          icon: OUDSImage(asset: Image(systemName: "flame"))),
                    .init(tag: "c", label: "Option C",
                          icon: OUDSImage(asset: Image(decorative: "il_brand"),
                                         renderingMode: .original)),
                ],
                placement: .vertical)
```

---

### Controls — Switch

```swift
OUDSSwitch(isOn: $isOn, accessibilityLabel: "Label")
OUDSSwitchItem("Label", isOn: $isOn)
OUDSSwitchItem("Label", isOn: $isOn,
               icon: OUDSImage(asset: Image(decorative: "ic")))
// Raw (non-tinted) image:
OUDSSwitchItem("Label", isOn: $isOn,
               icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
OUDSSwitchItem("Label", isOn: $isOn,
               icon: OUDSImage(asset: Image(systemName: "figure.handball"),
                               flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
OUDSSwitchItem(LocalizedStringKey("wifi_setting"), bundle: Bundle.module, isOn: $isOn,
               icon: OUDSImage(asset: Image(decorative: "ic")))
// Error / helper / disabled → see §6 Common patterns
```

---

### Controls — Pin Code Input

Available lengths: `.four`, `.six` (default).

```swift
OUDSPinCodeInput($value)
OUDSPinCodeInput($value, length: .four, autofocus: true)
OUDSPinCodeInput($value, helperText: "Enter your PIN")
// Error status → see §6 Common patterns (status: .error / .richError)
```

---

### Controls — Password Input

> `status` is of type `OUDSTextInput.Status` (shared with `OUDSTextInput`).

```swift
OUDSPasswordInput(label: "Password", password: $password, isHiddenPassword: $isHidden)
OUDSPasswordInput(label: "Password", password: $password, isHiddenPassword: $isHidden,
                  placeholder: "Min. 8 chars", prefix: "🔑", lockIcon: true)
// Helper / error status → see §6 Common patterns
```

---

### Controls — Chips

```swift
OUDSSuggestionChip(text: "Label") {}
OUDSSuggestionChip(icon: OUDSImage(asset: Image("ic")), text: "Label") {}
OUDSSuggestionChip(icon: OUDSImage(asset: Image("ic"), renderingMode: .original), text: "Label") {} // raw image (not tinted)
OUDSSuggestionChip(icon: OUDSImage(asset: Image("ic")), accessibilityLabel: "Label") {}
OUDSSuggestionChip(icon: OUDSImage(asset: Image("ic"), renderingMode: .original), accessibilityLabel: "Label") {} // raw image (not tinted)
OUDSFilterChip(text: "Label") {}
OUDSFilterChip(icon: OUDSImage(asset: Image("ic")), text: "Label") {}
OUDSFilterChip(icon: OUDSImage(asset: Image("ic"), renderingMode: .original), text: "Label") {} // raw image (not tinted)
OUDSFilterChip(icon: OUDSImage(asset: Image("ic")), accessibilityLabel: "Label") {}
OUDSFilterChip(icon: OUDSImage(asset: Image("ic"), renderingMode: .original), accessibilityLabel: "Label") {} // raw image (not tinted)
OUDSChipPicker(title: "Title", selection: $selection, chips: [
    .init(tag: .value1, layout: .textAndIcon("Label", image: OUDSImage(asset: Image("ic")))),
    .init(tag: .value2, layout: .textAndIcon("Brand", image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original))), // raw image
    .init(tag: .value3, layout: .icon(OUDSImage(asset: Image("ic")), accessibilityLabel: "Label")),
    .init(tag: .value4, layout: .icon(OUDSImage(asset: Image("ic_brand"), renderingMode: .original), accessibilityLabel: "Brand")), // raw image
])
```

---

### Controls — Text Input

```swift
OUDSTextInput(label: "Label", text: $text)
OUDSTextInput(label: "Label", text: $text, placeholder: "…", prefix: "Pre", suffix: "Suf")
OUDSTextInput(label: "Label", text: $text, leadingIcon: OUDSImage(asset: Image("ic")))
OUDSTextInput(label: "Label", text: $text,
              leadingIcon: OUDSImage(asset: Image("ic"), renderingMode: .original)) // raw image (not tinted)
OUDSTextInput(label: "Label", text: $text,
              leadingIcon: OUDSImage(asset: Image("ic"), flipped: layoutDirection == .rightToLeft)) // flip for RTL
OUDSTextInput(label: "Label", text: $text,
              trailingAction: .init(icon: OUDSImage(asset: Image("ic")), actionHint: "Hint") {})
OUDSTextInput(label: "Label", text: $text,
              trailingAction: .init(icon: OUDSImage(asset: Image("ic"), renderingMode: .original),
                                    actionHint: "Hint") {}) // raw image
// Helper / error status → see §6 Common patterns
```

---

### Controls — Text Area

`helperText` type: `.plain(String)` | `.rich(AttributedString)` | `.charactersMaxCount(UInt16)`

```swift
OUDSTextArea(label: "Label", text: $text)
OUDSTextArea(label: "Label", text: $text, placeholder: "Describe…")
OUDSTextArea(label: "Label", text: $text, helperText: .plain("Max 500 chars."))
OUDSTextArea(label: "Label", text: $text, helperText: .charactersMaxCount(500))
OUDSTextArea(label: "Label", text: $text,
             helperLink: .init(text: "Learn more") { openUrl(url) })
// Fixed height — no vertical growth, scroll from first overflow line
OUDSTextArea(label: "Label", text: $text, constrainedMaxHeight: true)
// Error status → see §6 Common patterns
```

> Height is controlled by two component tokens on `theme.textArea`:
> - `sizeMinHeightInput` (72 pt by default) — minimum height, always applied
> - `sizeMaxHeightInput` (240 pt by default) — maximum height before scroll (used when `constrainedMaxHeight: false`, the default)
>
> When `constrainedMaxHeight: true`, `maxHeight` is capped to `sizeMinHeightInput`, keeping the component at a fixed compact size.

---

### Dialogs — Alert Message

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`

```swift
OUDSAlertMessage(label: "Label")
OUDSAlertMessage(label: "Label", status: .warning, description: "Details") { /* dismiss */ }
OUDSAlertMessage(label: "Label",
                 status: .neutral(icon: OUDSImage(asset: Image("ic_heart"), renderingMode: .original)), // .original to avoid to have tinted images
                 bulletList: ["A", "B"],
                 link: .init(text: "More", position: .bottom) {},
                 onClose: {})
// Rich description / rich bullet list: pass AttributedString instead of String
```

---

### Dialogs — Inline Alert

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative`

```swift
OUDSInlineAlert(label: "Label")
OUDSInlineAlert(label: "Label", status: .warning)
OUDSInlineAlert(label: "Label", status: .accent(icon: OUDSImage(asset: Image("ic_heart"))))
```

---

### Indicators — Badge

Statuses: `neutral`, `accent`, `positive`, `info`, `warning`, `negative` — Sizes: `extraSmall`, `small`, `medium`, `large`
Count parameter must be of type `UInt8`.

```swift
OUDSBadgeStandard(accessibilityLabel: "Some label", status: .neutral, size: .medium)
OUDSBadgeCount(3, accessibilityLabel: "Some label", status: .neutral, size: .medium)
OUDSBadgeIcon(status: .neutral(icon: Image("ic")), accessibilityLabel: "Label", size: .medium)
```

---

### Indicators — Tag

```swift
OUDSTag(label: "Label")
OUDSTag(label: "Label", status: .neutral(icon: OUDSImage(asset: Image("ic"))))
OUDSTag(label: "Label", status: .neutral(icon: OUDSImage(asset: Image("ic"), renderingMode: .original))) // raw image (not tinted)
OUDSTag(label: "Label", status: .neutral(icon: OUDSImage(asset: Image("ic"), flipped: true))) // flipped for RTL
OUDSTag(label: "Label", status: .accent(icon: OUDSImage(asset: Image("ic"))))
OUDSTag(label: "Label", status: .accent(icon: OUDSImage(asset: Image("ic"), renderingMode: .original))) // raw image (not tinted)
OUDSTag(label: "Label", status: .neutral(bullet: true))
```

---

### Indicators — Input Tag

```swift
OUDSInputTag("Label") { /* remove action */ }
```

---

### Layouts — Colored Surface

```swift
OUDSColoredSurface(color: theme.colorModes.onStatusPositiveEmphasized) {
    // child views
}
```

---

### Layouts — Divider

```swift
OUDSHorizontalDivider(color: .brandPrimary)
OUDSVerticalDivider(color: .brandPrimary)
```

---

### Navigations — Link

```swift
OUDSLink(text: "Text", size: .default) {}
OUDSLink(text: "Text", indicator: .back, size: .default) {}
OUDSLink(text: "Text", icon: OUDSImage(asset: Image("ic")), size: .default) {}
OUDSLink(text: "Text", icon: OUDSImage(asset: Image("ic"), renderingMode: .original), size: .default) {} // raw image (not tinted)
```

---

### Navigations — Tab Bar

> Never combine with `OUDSToolBarBottom` on the same screen.

```swift
// iOS 15–25
@State private var selectedTab = 0
OUDSTabBar(selectedTab: $selectedTab, count: 3) {
    SomeView().tabItem { Label("Tab 1", image: "ic_1") }.tag(0)
    OtherView().tabItem { Label("Tab 2", image: "ic_2") }.tag(1)
}

// iOS 26+
OUDSTabBar {
    SomeView().tabItem { Label("Tab 1", image: "ic_1") }
    OtherView().tabItem { Label("Tab 2", image: "ic_2") }
}
```

> Tab bar images: 26×26 pt. `OUDSTabBar(selected:count:content:)` (plain `Int`) is deprecated — use `selectedTab: Binding<Int>`.

---

### Navigations — Toolbars

> Availability: iOS 15+, visionOS 1+. Not available on watchOS, tvOS, macOS.

**Setup (top toolbar):**
- Must be inside `NavigationStack`.
- Call `.oudsNavigationBarAppearance()` once on the root `NavigationStack`.
- On iOS ≤ 18: add `.accentColor(theme.colors.contentDefault)` on root view for the back chevron.
- `subtitle` rendered on iOS 26+ only; ignored when `hasLargeTitle: true`.

**Setup (bottom toolbar):**
- Never combine with `OUDSTabBar` on the same screen.
- `groupedItems` layout meaningful on iOS 26+ only.

```swift
// Top — minimal
NavigationStack {
    ContentView().toolBarTop("Title")
}

// Top — with items
NavigationStack {
    ContentView()
        .toolBarTop("Title",
            leadingItems: { OUDSToolBarItem(navigation: .back()) },
            trailingItems: {
                OUDSToolBarItem(icon: Image("ic_settings"), accessibilityLabel: "Settings") {}
            })
}

// Top — large title + subtitle (subtitle iOS 26+ only)
ContentView().toolBarTop("Title", hasLargeTitle: true, subtitle: "Sub")

// Bottom — leading/trailing split
ContentView()
    .toolBarBottom(
        leadingItems: { OUDSToolBarItem(label: "Edit") {} },
        trailingItems: { OUDSToolBarItem(icon: Image("ic_share"), accessibilityLabel: "Share") {} })

// Bottom — grouped (iOS 26+ only)
ContentView()
    .toolBarBottom(groupedItems: {
        OUDSToolBarItem(label: "Save") {}
        OUDSToolBarItem(icon: Image("ic_delete"), accessibilityLabel: "Delete") {}
    })
```

**`OUDSToolBarItem` reference:**

```swift
OUDSToolBarItem(label: "Edit") {}                              // text action
OUDSToolBarItem(icon: Image("ic"), accessibilityLabel: "X") {} // icon action
OUDSToolBarItem(navigation: .back())                           // back — auto dismiss
OUDSToolBarItem(navigation: .back(label: "Cancel"))            // back with label (ignored iOS 26+)
OUDSToolBarItem(navigation: .back(label: "Back") { saveDraft() }) // back + custom action
OUDSToolBarItem(navigation: .close)                            // close — NO closure, auto dismiss

// Badge on icon (v2.0.0+) — icon actions only
OUDSToolBarItem(action: .icon(asset: Image("ic_bell"), accessibilityLabel: "Notif",
                              badgeType: .standard))
OUDSToolBarItem(action: .icon(asset: Image("ic_mail"), accessibilityLabel: "Mail",
                              badgeType: .number(count: 9)))

// Action style — iOS 26+ only
if #available(iOS 26, *) {
    OUDSToolBarItem(action: .label("Save", emphasized: false, accessibilityHint: nil) {},
                    style: .prominent)  // .default | .prominent | .tinted
}

// Custom view
OUDSToolBarItem { Menu("More") { Button("Option 1") {} } }

// Conditional (result-builder syntax)
.toolBarTop("Title", trailingItems: {
    if isEditing {
        OUDSToolBarItem(label: "Done") { isEditing = false }
    } else {
        OUDSToolBarItem(label: "Edit") { isEditing = true }
    }
})
```

> Badge rendering: iOS ≤ 25 → `OUDSBadge`; iOS 26+ top → native system badge; iOS 26+ bottom → `OUDSBadge` forced.

---

## Registering custom fonts

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
