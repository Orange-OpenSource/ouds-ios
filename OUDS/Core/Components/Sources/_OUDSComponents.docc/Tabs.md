# Tabs

Switch between related sections within a screen using line or contained tabs.

## Overview

``OUDSLineTabs`` marks the selected tab with an underline. ``OUDSContainedTabs``
also uses backgrounds, borders and a theme-controlled divider to distinguish sections.
Both components are available on iOS/iPadOS 15+, macOS 13+, tvOS 16+ and visionOS 1+,
but not on watchOS. They do not replace the app-level navigation of ``OUDSTabBar``.

### Line tabs

@TabNavigator {
    @Tab("Orange") {
        ![Line tabs in light and dark modes with Orange theme](component_line_tabs_Orange)
    }
    @Tab("Orange Compact") {
        ![Line tabs in light and dark modes with Orange Compact theme](component_line_tabs_OrangeCompact)
    }
    @Tab("Sosh") {
        ![Line tabs in light and dark modes with Sosh theme](component_line_tabs_Sosh)
    }
    @Tab("Wireframe") {
        ![Line tabs in light and dark modes with Wireframe theme](component_line_tabs_Wireframe)
    }
}

### Contained tabs

@TabNavigator {
    @Tab("Orange") {
        ![Contained tabs in light and dark modes with Orange theme](component_contained_tabs_Orange)
    }
    @Tab("Orange Compact") {
        ![Contained tabs in light and dark modes with Orange Compact theme](component_contained_tabs_OrangeCompact)
    }
    @Tab("Sosh") {
        ![Contained tabs in light and dark modes with Sosh theme](component_contained_tabs_Sosh)
    }
    @Tab("Wireframe") {
        ![Contained tabs in light and dark modes with Wireframe theme](component_contained_tabs_Wireframe)
    }
}

## Usage

```swift
import OUDSSwiftUI

struct Sections: View {
    enum Section: Hashable { case overview, details }
    @State private var selection = Section.overview

    var body: some View {
        VStack(spacing: 0) {
            OUDSLineTabs(selection: $selection) {
                OUDSTabItem(tag: Section.overview, label: .localized("overview"))
                OUDSTabItem(tag: Section.details, label: .localized("details"))
            }

            // Only the application decides how to present the selected section.
            switch selection {
            case .overview: Text("Overview content")
            case .details: Text("Details content")
            }
        }
    }
}
```

Replace `OUDSLineTabs` with `OUDSContainedTabs` to change the appearance while
keeping the same selection and items. Each ``OUDSTabItem`` accepts a localized,
raw or rich label, optional description, ``OUDSImage``, trailing badge or tag,
disabled state and accessibility identifier. Both variants support these layouts:

- `.textOnly` (default): labels without images.
- `.textAndLeadingAsset`: images before the labels.
- `.textAndTopAsset`: images above the labels.
- `.assetOnly`: images without visible labels or descriptions. Labels remain mandatory for accessibility.

Each item must supply an image in an asset layout. The builder supports items,
arrays, `if`, `if/else`, availability checks and Swift `for` loops (not `ForEach`).
The array-based `tabs:` initializer remains available. Items are evaluated in declaration order.

### Trailing indicators and rich text

```swift
OUDSContainedTabs(selection: $selection) {
    OUDSTabItem(tag: Section.overview,
                label: .rich(overviewLabel),
                description: .localized("overview_description"),
                trailing: .badge(.count(3, accessibilityLabel: "3 notifications", status: .negative)))
    OUDSTabItem(tag: Section.details,
                label: .localized("details"),
                trailing: .tag(OUDSTag(label: "New", size: .small)))
}
```

``OUDSTabItemTrailing`` deliberately supports fewer options than list-item trailing
content: only standard badges (`.extraSmall`), count badges (`.medium`) and OUDS tags.
Badge sizes are enforced internally; icon badges and arbitrary views are not supported.
Trailing means **right in LTR, left in RTL**. Indicators follow the visible label,
or the image in asset-only layout. Descriptions appear below the main text.

`hasStrongLabel` defaults to `true`. Setting it to `false` uses the theme's default
body typography, including the medium weight defined by Sosh. Rich text retains
explicit attributes supplied by the caller.

### Distribution, margins and sticky styling

Only justified distribution and default tabs are supported. Left-aligned distribution,
previous/next controls and expand tabs are intentionally outside the current scope.
The row keeps equal columns and theme paddings when they fit. Otherwise it measures
the natural width of each header (label, asset and indicator), adapts column widths,
and reduces horizontal paddings proportionally. This keeps short labels such as
"Label 1" on one line, including in contained tabs, without shrinking the font.
Descriptions do not force header widths: they can wrap independently below the label.
If the headers alone exceed the available width even with zero padding, wrapping
remains the fallback rather than clipping, truncation or hidden horizontal overflow.

Labels and descriptions wrap rather than truncate, even when a parent supplies a
line limit. Each tab can grow vertically to fit its complete content; tabs in the
same row share the height required by the tallest item, including contained tabs.

With `hasGridMargin: true` (default), the row fills the available width with horizontal
grid margins. With `false`, the row uses its intrinsic width and is centered on the page.
The divider is shown by default and can be disabled with `hasDivider: false`.

`hasStickyBackground: true` applies the semantic sticky background, elevation and
component spacing **only when grid margins are enabled**. It does not pin the row;
place it in the application's pinned section header to control scrolling behavior.
No sticky treatment is applied by default.

### Skeleton

Use `.showSkeleton(isVisible: true)` on either variant or a parent. Tabs render
using the shared OUDS skeleton mechanism, cannot be activated and are hidden from
accessibility while placeholders are displayed.

## Selection and accessibility

- A group supports up to eight items. Tags must be unique and labels must be nonempty,
  including asset-only labels. Invalid configurations fail with a diagnostic; items
  are never silently truncated. Use stable domain identifiers, not changing array positions.
- Selection is owned by the application. An unknown tag selects no item; removing
  or disabling an item does not implicitly modify the binding.
- Empty groups render no tabs. Disabled items cannot be activated.
- Each tab exposes one accessible button combining its label, description and indicator
  description, with the selected trait when appropriate. Images are decorative.
- Native buttons support activation by keyboard, VoiceOver and the tvOS remote.
  Focus styling uses the theme's focus colors and border width.
- Typography follows Dynamic Type, and leading/trailing placement follows RTL layout.
- Selection does not introduce animations, including with Reduce Motion enabled.

## Topics

### Components
- ``OUDSLineTabs``
- ``OUDSContainedTabs``

### Configuration
- ``OUDSTabItem``
- ``OUDSTabItemsBuilder``
- ``OUDSTabsLayout``
- ``OUDSTabItemTrailing``
