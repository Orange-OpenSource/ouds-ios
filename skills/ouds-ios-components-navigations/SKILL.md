---
name: ouds-ios-components-navigations
description: Usage and code examples for OUDS iOS Navigations components — OUDSLink (text, indicator, icon, size), OUDSTabBar (iOS 15–25 and iOS 26+ APIs) and Toolbars (toolBarTop / toolBarBottom + OUDSToolBarItem with back / close / icon / label / badge / prominent style). Load the ouds-ios-framework-usage skill first for imports, themes and image rules.
license: MIT
---

# OUDS Navigations components

> Prerequisite: load `ouds-ios-framework-usage` first for imports, themes and image rules
> (`OUDSImage`, `// swiftlint:disable:next accessibility_label_for_image`).

## Link

```swift
OUDSLink(text: "Text", size: .default) {}
OUDSLink(text: "Text", indicator: .back, size: .default) {}
OUDSLink(text: "Text", icon: OUDSImage(asset: Image("ic")), size: .default) {}
OUDSLink(text: "Text", icon: OUDSImage(asset: Image("ic"), renderingMode: .original), size: .default) {} // raw image (not tinted)
```

---

## Tab Bar

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

## Toolbars

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

## List Items

### Common Patterns

**Shared types:**

| Type | Purpose |
|------|---------|
| `OUDSListItemData` | Textual data: label, description, overline, extraLabel, helperText |
| `OUDSListItemLeading` | Leading element: icon, image, flag, avatar |
| `OUDSListItemTrailing` | Trailing element: text, badge, tag, icon, image, flag, avatar |

**Shared view modifiers:**

```swift
.oudsListItemSize(.standard)   // or .small
.oudsListItemContainerAlignment(.center)  // or .top
.oudsListItemStyle(divider: true, background: false)
.oudsListCardStyle(.outlined())
.oudsListItemRoundedMedia(true)
```

---

### Static List Item

```swift
// Minimal
OUDSStaticListItem(data: OUDSListItemData(label: "Label"))

// Full textual content
OUDSStaticListItem(data: OUDSListItemData(
    label: "Label",
    description: "Description",
    overline: "Overline",
    extraLabel: "Extra"
))

// With leading icon
OUDSStaticListItem(
    data: OUDSListItemData(label: "Info"),
    leading: .icon(OUDSListItemIcon(status: .info, description: "", size: .medium))
)

// With trailing badge
OUDSStaticListItem(
    data: OUDSListItemData(label: "Notifications"),
    trailing: .badge(.count(.init(3, accessibilityLabel: "3", status: .negative, size: .medium)))
)

// With avatar + tag
OUDSStaticListItem(
    data: OUDSListItemData(label: "Profile"),
    leading: .avatar(OUDSListItemAvatar(type: .icon, size: .medium)),
    trailing: .tag(OUDSTag(label: "New", size: .small))
)

// With trailing text
OUDSStaticListItem(
    data: OUDSListItemData(label: "Status"),
    trailing: .text(.labelMuted("Active"))
)

// With flag
OUDSStaticListItem(
    data: OUDSListItemData(label: "Country"),
    leading: .flag(OUDSListItemFlag(asset: Image("flag_fr"), size: .medium))
)

// With slot (view under texts)
OUDSStaticListItem(
    data: OUDSListItemData(label: "With slot"),
    slot: Text("Additional content")
)
```

---

### Navigation List Item

```swift
// Forward navigation (default)
OUDSNavigationListItem(data: OUDSListItemData(label: "Next")) {
    // action
}

// Backward navigation
OUDSNavigationListItem(data: OUDSListItemData(label: "Back"), indicatorType: .previous) {
    // action
}

// External navigation
OUDSNavigationListItem(data: OUDSListItemData(label: "Website"), indicatorType: .external) {
    openURL(url)
}

// With leading/trailing
OUDSNavigationListItem(
    data: OUDSListItemData(label: "Profile", description: "View details"),
    leading: .avatar(OUDSListItemAvatar(type: .initials("JD"), size: .medium)),
    trailing: .text(.labelMuted("Details"))
) {
    // navigate
}

// With slot
OUDSNavigationListItem(
    data: OUDSListItemData(label: "Settings"),
    slot: Text("Configure options")
) {
    // navigate
}

// With external link + badge
OUDSNavigationListItem(
    data: OUDSListItemData(label: "Documentation"),
    indicatorType: .external,
    trailing: .badge(.standard(.init(accessibilityLabel: "New", status: .accent, size: .small)))
) {
    openURL(url)
}
```

---

### Associated Types — Icon

```swift
// Status icons
OUDSListItemIcon(status: .info, description: "", size: .medium)
OUDSListItemIcon(status: .warning, description: "", size: .large)
OUDSListItemIcon(status: .negative, description: "", size: .medium)
OUDSListItemIcon(status: .positive, description: "", size: .medium)

// Custom neutral icon
OUDSListItemIcon(status: .neutral(asset: Image("ic"), description: "Label"), size: .medium)

// Custom neutral icon with notification badge
OUDSListItemIcon(status: .neutral(asset: Image("ic"), description: "Label", badge: true), size: .medium)
```

---

### Associated Types — Avatar

```swift
// Avatar types
OUDSListItemAvatar(type: .icon, size: .medium)
OUDSListItemAvatar(type: .image(Image("photo")), size: .large)
OUDSListItemAvatar(type: .initials("AB"), size: .extraLarge)

// Avatar with badge
OUDSListItemAvatar(
    type: .icon,
    size: .medium,
    badgeType: .standard(.init(accessibilityLabel: "Online", status: .positive, size: .small))
)

OUDSListItemAvatar(
    type: .initials("JD"),
    size: .large,
    badgeType: .icon(.init(status: .negative, accessibilityLabel: "Offline", size: .small))
)
```

---

### Associated Types — Image & Flag

```swift
// Image (static)
OUDSListItemImage(asset: Image("photo"), size: .medium)
OUDSListItemImage(asset: Image("photo"), size: .large)

// Image (async from URL)
OUDSListItemImage(asyncImage: AsyncImage(url: URL(string: "https://example.com/photo.png")), description: "Photo", size: .medium)

// Image (async from URL with OUDSAsyncImage — cached)
OUDSListItemImage(
    asyncImage: OUDSAsyncImage(url: URL(string: "https://example.com/photo.png")),
    description: "Photo",
    size: .medium
)

// Image (async with custom content/placeholder)
OUDSListItemImage(
    asyncImage: AsyncImage(url: URL(string: "https://example.com/photo.png")) { image in
        image.resizable()
    } placeholder: {
        ProgressView()
    },
    description: "Photo",
    size: .medium
)

// Flag
OUDSListItemFlag(asset: Image("flag_fr"), size: .medium)
OUDSListItemFlag(asset: Image("flag_us"), size: .large)
```
