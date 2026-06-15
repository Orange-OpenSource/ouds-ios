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

**Index:** [Button](#actions--button) · [BulletList](#content-display--bullet-list) · [Checkbox](#controls--checkbox) · [Radio](#controls--radio-button) · [Switch](#controls--switch) · [PinCode](#controls--pin-code-input) · [Password](#controls--password-input) · [Chips](#controls--chips) · [TextInput](#controls--text-input) · [TextArea](#controls--text-area) · [AlertMessage](#dialogs--alert-message) · [InlineAlert](#dialogs--inline-alert) · [Badge](#indicators--badge) · [Tag](#indicators--tag) · [InputTag](#indicators--input-tag) · [ColoredSurface](#layouts--colored-surface) · [Divider](#layouts--divider) · [Link](#navigations--link) · [ListItems](#navigations--list-items) · [TabBar](#navigations--tab-bar) · [Toolbars](#navigations--toolbars)

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
OUDSCheckboxItem("Label", isOn: $isOn, description: "Helper", icon: Image(decorative: "ic"))
OUDSCheckboxItem("Label", isOn: $isOn, icon: Image(decorative: "ic"), isReversed: true)
// Error / helper / disabled → see §6 Common patterns
```

> Parameter order: `(_ label:, isOn:, description:, icon:, flipIcon:, isReversed:, isError:, errorText:, isReadOnly:, hasDivider:, constrainedMaxWidth:, action:)`

```swift
// Picker
OUDSCheckboxPicker(selections: $selections, checkboxes: [
    .init(tag: "a", label: "Option A"),
    .init(tag: "b", label: "Option B", description: "Details", isReversed: true),
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
OUDSRadioItem("Label", isOn: $isOn, icon: Image(decorative: "ic"))
// Error / helper / disabled → see §6 Common patterns
OUDSRadioPicker(selection: $selection,
                radios: [.init(tag: "a", label: "Option A")],
                placement: .vertical)
```

---

### Controls — Switch

```swift
OUDSSwitch(isOn: $isOn, accessibilityLabel: "Label")
OUDSSwitchItem("Label", isOn: $isOn)
OUDSSwitchItem("Label", isOn: $isOn, icon: Image(decorative: "ic"))
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
OUDSSuggestionChip(icon: Image("ic"), text: "Label") {}
OUDSFilterChip(text: "Label") {}
OUDSFilterChip(icon: Image("ic"), text: "Label") {}
OUDSChipPicker(title: "Title", selection: $selection, chips: [
    .init(tag: .value1, layout: .textAndIcon("Label", icon: Image("ic"))),
])
```

---

### Controls — Text Input

```swift
OUDSTextInput(label: "Label", text: $text)
OUDSTextInput(label: "Label", text: $text, placeholder: "…", prefix: "Pre", suffix: "Suf")
OUDSTextInput(label: "Label", text: $text, leadingIcon: Image("ic"))
OUDSTextInput(label: "Label", text: $text,
              trailingAction: .init(icon: Image("ic"), actionHint: "Hint") {})
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
                 status: .neutral(icon: OUDSIcon(asset: Image("ic_heart"))),
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
OUDSInlineAlert(label: "Label", status: .accent(icon: OUDSIcon(asset: Image("ic_heart"))))
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
OUDSTag(label: "Label", status: .neutral(icon: Image("ic")))
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
OUDSLink(text: "Text", icon: Image("ic"), size: .default) {}
```

---

### Navigations — List Items

> Availability: iOS 15+, macOS 13+, visionOS 1+, watchOS 11+, tvOS 16+. Since: 2.2.0.

Two components share the same data model and slot/leading/trailing API:
- **`OUDSStaticListItem`** — non-interactive, display-only row.
- **`OUDSNavigationListItem`** — tappable row with a navigation affordance (chevron or external-link icon).

#### `OUDSListItemData` — textual content model

```swift
// All text fields are optional except label.
// overline and extraLabel are hidden in .small size.
OUDSListItemData(label: "Label")
OUDSListItemData(
    label: "Label",
    isBoldLabel: true,          // renders label in bold
    description: "Description", // secondary text below label
    overline: "Overline",       // small text above label (hidden in .small size)
    extraLabel: "Extra Label",  // additional text below description (hidden in .small size)
    helperText: "Helper text"   // supporting text rendered below the row, outside the HStack
)
```

#### `OUDSStaticListItem` — non-interactive

```swift
// Minimal
OUDSStaticListItem(data: OUDSListItemData(label: "Label"))

// With leading icon and trailing badge
OUDSStaticListItem(
    data: OUDSListItemData(label: "Label", description: "Description"),
    leading: .icon(OUDSListItemIcon(type: .info, size: .medium)),
    trailing: .badge(OUDSBadge(count: 3, accessibilityLabel: "3 new", status: .negative, size: .medium))
)

// With a custom slot view (rendered between text block and helperText)
OUDSStaticListItem(data: OUDSListItemData(label: "Label"), slot: myCustomView)
```

#### `OUDSNavigationListItem` — tappable with affordance

```swift
// Default affordance: .next (forward chevron at trailing edge)
OUDSNavigationListItem(data: OUDSListItemData(label: "Next screen")) {
    // navigate forward
}

// .external: external-link icon at trailing edge (use for URLs, out-of-app content)
OUDSNavigationListItem(
    data: OUDSListItemData(label: "Open website"),
    affordanceType: .external
) { openURL(url) }

// .previous: backward chevron at leading edge — leading: parameter is silently ignored
OUDSNavigationListItem(
    data: OUDSListItemData(label: "Go back"),
    affordanceType: .previous
) { dismiss() }

// Full example with leading avatar, trailing muted text, custom slot
OUDSNavigationListItem(
    data: OUDSListItemData(label: "Profile", description: "View your profile"),
    slot: mySlotView,
    affordanceType: .next,
    leading: .avatar(OUDSListItemAvatar(type: .icon, size: .medium)),
    trailing: .text(.labelMuted(Text("Details")))
) { navigateToProfile() }
```

#### `OUDSNavigationListItemAffordanceType`

| Case | Affordance position | Use for | Leading element |
|------|--------------------|---------|----|
| `.next` (default) | Trailing chevron | In-app forward navigation | Visible |
| `.previous` | Leading chevron | In-app back navigation | **Always hidden** |
| `.external` | Trailing external-link icon | Out-of-app / URL content | Visible |

> RTL support: `.next` and `.previous` icons are automatically swapped when `layoutDirection == .rightToLeft`.

#### Leading slot — `OUDSListItemLeading`

```swift
.leading = .icon(OUDSListItemIcon(type: .info, size: .medium))    // status/custom icon
.leading = .image(asset: Image("il_placeholder"))                  // static image
.leading = .flag(asset: Image("il_flag_fr"))                       // country flag
.leading = .video(URL(string: "https://example.com/video.mp4")!)   // video thumbnail
.leading = .avatar(OUDSListItemAvatar(type: .icon, size: .medium)) // circular avatar
```

#### Trailing slot — `OUDSListItemTrailing`

```swift
.trailing = .text(.label(Text("Info")))
.trailing = .text(.labelMuted(Text("Secondary")))       // muted/secondary color
.trailing = .text(.labelStrong(Text("Strong")))         // bold/emphasized
.trailing = .text(.labelAndExtraLabel(Text("Label"), Text("Extra"))) // stacked; extra hidden in .small
.trailing = .badge(OUDSBadge(count: 3, accessibilityLabel: "3 notifications", status: .negative, size: .medium))
.trailing = .tag(OUDSTag(label: "New"))
.trailing = .icon(OUDSListItemIcon(type: .warning, size: .small))
.trailing = .image(asset: Image("il_placeholder"))
.trailing = .flag(asset: Image("il_flag_fr"))
.trailing = .video(URL(string: "https://example.com/video.mp4")!)
.trailing = .avatar(OUDSListItemAvatar(type: .initials("AB"), size: .medium))
```

#### `OUDSListItemAvatar` — circular avatar

```swift
OUDSListItemAvatar(type: .icon, size: .medium)                   // predefined person/people icon
OUDSListItemAvatar(type: .image(Image("avatar")), size: .large)  // custom image
OUDSListItemAvatar(type: .initials("AB"), size: .medium)         // up to 2-char initials
OUDSListItemAvatar(type: .icon, size: .large,
                   badge: OUDSBadge(accessibilityLabel: "New", status: .negative, size: .small))
```

> Badge size recommendations: `.medium` avatar → `.extraSmall` badge · `.large` → `.small` badge · `.extraLarge` → `.medium` badge.
> In `.small` list item size, the avatar size parameter is ignored — smallest variant is always used.

#### `OUDSListItemIcon` — status icon

```swift
OUDSListItemIcon(type: .neutral(asset: Image("ic_heart")))          // custom image, default color
OUDSListItemIcon(type: .neutral(asset: Image("ic_bell"), badge: true)) // with negative dot badge
OUDSListItemIcon(type: .positive)    // predefined checkmark, positive (green)
OUDSListItemIcon(type: .info)        // predefined info icon, informational (blue)
OUDSListItemIcon(type: .warning)     // predefined warning icon, warning color, two-layer rendering
OUDSListItemIcon(type: .negative)    // predefined alert icon, negative (red)
OUDSListItemIcon(type: .info, size: .small)   // .small | .medium (default) | .large
```

> In `.small` list item size, the icon size parameter is ignored — smallest variant is always used.

#### View modifiers — styling and layout

Modifiers propagate via SwiftUI environment: apply once to a container (`VStack`, `List`, `ForEach`) to style all enclosed list items.

```swift
// Size: .standard (default) or .small (hides overline, extraLabel, trailing extra label)
.oudsListItemSize(.small)

// Vertical alignment of leading/trailing/text containers: .center (default) or .top
.oudsListItemContainerAlignment(.top)

// Content style
.oudsListItemStyle(style: .outlined)                              // visible border around each item
.oudsListItemStyle(style: .standard(divider: true, background: false))  // default
.oudsListItemStyle(style: .standard(divider: false, background: true))  // background fill, no divider

// Card style shorthand (hasDivider: false, hasBackground: true by default)
.oudsListCardStyle(hasDivider: false, hasBackground: true)

// Rounded corners on image/video media elements (default: false)
.oudsListItemRoundedMedia(true)
```

```swift
// Apply modifiers to a container — affects all child list items
VStack {
    OUDSStaticListItem(data: OUDSListItemData(label: "Item 1"))
    OUDSStaticListItem(data: OUDSListItemData(label: "Item 2"))
    OUDSNavigationListItem(data: OUDSListItemData(label: "Item 3")) {}
}
.oudsListItemSize(.small)
.oudsListItemContainerAlignment(.top)
.oudsListCardStyle()
```

#### Key behavioral rules

1. **`OUDSStaticListItem`** has no tap interaction — `isEnabled` only affects visual opacity.
2. **`OUDSNavigationListItem`** manages `.enabled`, `.hover`, `.pressed`, `.disabled` states automatically.
3. **`.previous` affordance** — the `leading:` parameter is **silently hidden**; do not pass a leading element expecting it to appear.
4. **`.small` size** — hides `overline`, `extraLabel`, and trailing `labelAndExtraLabel`'s extra label; forces avatar/icon/badge to their smallest variant.
5. **`slot:`** — rendered between the text group (label/description/overline/extraLabel) and `helperText`.
6. **`helperText`** — rendered outside the row `HStack`, below it (not inside the leading/trailing row layout).
7. **`oudsListCardStyle(hasDivider:hasBackground:)`** — shorthand for applying `.standard(divider:hasDivider, background:hasBackground)` (defaults: divider `false`, background `true`).

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
