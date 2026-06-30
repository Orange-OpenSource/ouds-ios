---
name: ouds-ios-migration
description: Use when the user wants to migrate OUDS iOS code from an older version (1.0.0 or later) to the current version (2.3.0 or higher), or when deprecated or removed OUDS APIs are detected in the codebase
license: MIT
---

# Skill: ouds-ios-migration

This skill provides step-by-step guidance to migrate OUDS iOS code from **v1.0.0** up to **v2.3.0** (current).
It covers all breaking changes, removed APIs and deprecated symbols introduced in each release.

---

## Quick-reference: what changed, when

| From → To | Impact | Key changes |
|---|---|---|
| v1.0.0 → v1.1.0 | High | `Multiple*Tokens` (plural) → `Multiple*Token` (singular); button border tokens shortened |
| v1.1.0 → v1.2.0 | High | Theme renamed: `OrangeBusinessTools` → `OrangeCompact` |
| v1.2.0 → v1.3.0 | Low | `oudsVerticalSizeClass` removed; `OUDSBulletList.UnorderedIcon` → `UnorderedAsset` |
| v1.3.0 → v1.4.0 | Low | `ouds`-prefixed `View` extension methods removed; `OUDSTabBar(selected:)` → `(selectedTab:)` |
| v1.4.0 → v2.0.0 | High | Token renames (colors, elevations, sizes, badge, bar); charts provider renamed; toolbar action type enriched |
| v2.0.0 → v2.1.0 | Low | Component token `spacePaddingBlockDensityCompactTopAlignmentTopText_container` renamed |
| v2.0.0 → v2.2.0 | Medium | `OUDSBadge` split into `OUDSBadgeStandard`, `OUDSBadgeCount`, `OUDSBadgeIcon` |
| v2.2.0 → v2.3.0 | Low | `OUDSIcon` → `OUDSImage`; `OUDSButton`, `OUDSCheckboxItem`, `OUDSCheckboxItemIndeterminate`, `OUDSCheckboxPickerData`, `OUDSRadioItem`, `OUDSRadioPickerData` and `OUDSSwitchItem` initialisers with `icon:` deprecated |

---

## Migration workflow

For each migration task, follow this sequence:

1. **Detect** — grep the target codebase for deprecated or removed symbols (commands provided per section below).
2. **Transform** — apply the before/after substitutions listed in the relevant section.
3. **Build** — run `swift build` and confirm zero errors.
4. **Check warnings** — run `swift build 2>&1 | grep -i deprecated` and confirm zero OUDS deprecation warnings.
5. **Test** — run the test suite (`swift test`) to confirm no regressions.

---

## Detection grep commands

Run these from the project root to find all occurrences before starting:

```bash
# All active deprecations (v2.x era)
grep -rn \
  "OUDSBadge\b\|OUDSIcon\b\|icon: Image\|flipIcon\|renderingMode:\|spacePaddingBlockDensityCompactTopAlignmentTopText_container" \
  --include="*.swift" .

# Breaking changes removed in v2.0.0 (v1.x era)
grep -rn \
  "oudsVerticalSizeClass\|UnorderedIcon\|\.free(\|OUDSTabBar(selected:\|\.ouds[A-Z]\|Multiple.*Tokens\b\|OrangeBusinessTools\|buttonBorderRadius\|buttonBorderWidth" \
  --include="*.swift" .
```

---

## v1.0.0 → v1.1.0 — Breaking changes

### 1. `Multiple*Tokens` (plural) → `Multiple*Token` (singular)

**Before (v1.0.0)**:
```swift
MultipleElevationCompositeRawTokens
MultipleColorSemanticTokens
MultipleFontCompositeSemanticTokens
MultipleFontLetterSpacingSemanticTokens
MultipleFontLineHeightSemanticTokens
MultipleFontSizeSemanticTokens
MultipleSizeSemanticTokens
MultipleSpaceSemanticTokens
```

**After (v1.1.0)**:
```swift
MultipleElevationCompositeRawToken
MultipleColorSemanticToken
MultipleFontCompositeSemanticToken
MultipleFontLetterSpacingSemanticToken
MultipleFontLineHeightSemanticToken
MultipleFontSizeSemanticToken
MultipleSizeSemanticToken
MultipleSpaceSemanticToken
```

**Action**: Global rename — remove the trailing `s` from each type name.

### 2. Button border component tokens shortened

**Before (v1.0.0)**:
```swift
theme.button.buttonBorderRadiusDefault
theme.button.buttonBorderRadiusRounded
theme.button.buttonBorderRadiusSocial
theme.button.buttonBorderWidthDefault
theme.button.buttonBorderWidthDefaultInteraction
theme.button.buttonBorderWidthDefaultInteractionMono
```

**After (v1.1.0)**:
```swift
theme.button.borderRadiusDefault
theme.button.borderRadiusRounded
theme.button.borderRadiusSocial
theme.button.borderWidthDefault
theme.button.borderWidthDefaultInteraction
theme.button.borderWidthDefaultInteractionMono
```

**Action**: Remove the `button` prefix from each token name.

---

## v1.1.0 → v1.2.0 — Breaking changes

### Theme renamed: OrangeBusinessTools → OrangeCompact

**Before (v1.1.0)**:
```swift
import OUDSThemeOrangeBusinessTools
// …
OUDSThemeableView(theme: OrangeBusinessToolsTheme()) { … }
```

**After (v1.2.0)**:
```swift
import OUDSThemeOrangeCompact
// …
OUDSThemeableView(theme: OrangeCompactTheme()) { … }
```

**Action**:
1. Replace import `OUDSThemeOrangeBusinessTools` → `OUDSThemeOrangeCompact`.
2. Replace all occurrences of `OrangeBusinessToolsTheme` → `OrangeCompactTheme`.
3. Replace any string or identifier containing `OrangeBusinessTools` → `OrangeCompact` (documentation, test names, etc.).

---

## v1.2.0 → v1.3.0 — Breaking changes

### 1. `oudsVerticalSizeClass` removed

**Before (v1.2.0)**:
```swift
@Environment(\.oudsVerticalSizeClass) var sizeClass
```

**After (v1.3.0)**:
```swift
// Remove entirely — the property no longer exists.
// Note: reintroduced in v1.4.0; wait for that version if you need it.
```

**Action**: Remove all uses of `oudsVerticalSizeClass`.

### 2. `OUDSBulletList.UnorderedIcon` → `OUDSBulletList.UnorderedAsset`; `.free` → `.icon`

**Before (v1.2.0)**:
```swift
var bullet: OUDSBulletList.UnorderedIcon { .free(someImage) }
```

**After (v1.3.0)**:
```swift
var bullet: OUDSBulletList.UnorderedAsset { .icon(someImage) }
```

**Action**:
1. Rename `OUDSBulletList.UnorderedIcon` → `OUDSBulletList.UnorderedAsset`.
2. Rename case `.free(…)` → `.icon(…)`.

---

## v1.3.0 → v1.4.0 — Breaking changes

### 1. `ouds`-prefixed `View` extension methods removed

All `ouds`-prefixed methods were removed. Replace each with its unprefixed counterpart:

| Removed | Replacement |
|---|---|
| `.oudsForegroundStyle(_:)` | `.foregroundStyle(_:)` |
| `.oudsForegroundColor(_:)` | `.foregroundColor(_:)` |
| `.oudsBackground(_:)` | `.background(_:)` |
| `.oudsAccentColor(_:)` | `.accentColor(_:)` |
| `.oudsShadow(_:)` | `.shadow(_:)` |
| `.oudsBorder(style:width:radius:color:)` | `.border(style:width:radius:color:)` |
| `.oudsColoredSurface(_:)` | `.coloredSurface(_:)` |
| `.oudsGridMargin(_:)` | `.gridMargin(_:)` |
| `.oudsRequestAccessibleFocus(_:)` | `.requestAccessibleFocus(_:)` |
| `.oudsRequestAccessibleFocus(_:for:)` | `.requestAccessibleFocus(_:for:)` |
| `.oudsHorizontalDivider(dividerColor:)` | `.horizontal(color:)` |
| `.oudsVerticalDivider(color:)` | `.vertical(color:)` |

**Action**: Replace each `ouds`-prefixed call with its unprefixed counterpart.

### 2. `OUDSTabBar(selected:count:content:)` → `OUDSTabBar(selectedTab:count:content:)`

**Before (v1.3.x)**:
```swift
OUDSTabBar(selected: 0, count: 3) {
    SomeView().tabItem { Label("Home", image: "ic_home") }.tag(0)
}
```

**After (v1.4.0)**:
```swift
@State private var selectedTab = 0

OUDSTabBar(selectedTab: $selectedTab, count: 3) {
    SomeView().tabItem { Label("Home", image: "ic_home") }.tag(0)
}
```

**Action**:
1. Rename parameter label `selected:` → `selectedTab:`.
2. Declare `@State private var selectedTab: Int` and pass it as `$selectedTab`.

---

## v1.4.0 → v2.0.0 — Breaking changes

### 1. Renamed semantic tokens — colors

| Old name | New name |
|---|---|
| `repositorySecondaryHigher` | `repositorySecondaryHigherHigh` |
| `overlayModalLight` | `overlayModalSheetLight` |
| `overlayModalDark` | `overlayModalSheetDark` |
| `overlayModal` | `overlayModalSheet` |

### 2. Renamed semantic tokens — elevations

| Old name | New name |
|---|---|
| `xDefault` | `xElevated` |
| `yDefault` | `yElevated` |
| `blurDefault` | `blurElevated` |
| `spreadDefault` | `spreadElevated` |
| `colorDefaultLight` | `colorElevatedLight` |
| `colorDefaultDark` | `colorElevatedDark` |

### 3. Renamed semantic tokens — sizes (remove "Type")

Pattern: `maxWidthType` → `maxWidth` for all typography size tokens.

| Old name | New name |
|---|---|
| `maxWidthTypeDisplayLargeMobile` | `maxWidthDisplayLargeMobile` |
| `maxWidthTypeDisplayLargeTablet` | `maxWidthDisplayLargeTablet` |
| `maxWidthTypeDisplayMediumMobile` | `maxWidthDisplayMediumMobile` |
| `maxWidthTypeDisplayMediumTablet` | `maxWidthDisplayMediumTablet` |
| `maxWidthTypeDisplaySmallMobile` | `maxWidthDisplaySmallMobile` |
| `maxWidthTypeDisplaySmallTablet` | `maxWidthDisplaySmallTablet` |
| `maxWidthTypeHeadingXlargeMobile` | `maxWidthHeadingXlargeMobile` |
| `maxWidthTypeHeadingXlargeTablet` | `maxWidthHeadingXlargeTablet` |
| `maxWidthTypeHeadingLargeMobile` | `maxWidthHeadingLargeMobile` |
| `maxWidthTypeHeadingLargeTablet` | `maxWidthHeadingLargeTablet` |
| `maxWidthTypeHeadingMediumMobile` | `maxWidthHeadingMediumMobile` |
| `maxWidthTypeHeadingMediumTablet` | `maxWidthHeadingMediumTablet` |
| `maxWidthTypeHeadingSmallMobile` | `maxWidthHeadingSmallMobile` |
| `maxWidthTypeHeadingSmallTablet` | `maxWidthHeadingSmallTablet` |
| `maxWidthTypeBodyLargeMobile` | `maxWidthBodyLargeMobile` |
| `maxWidthTypeBodyLargeTablet` | `maxWidthBodyLargeTablet` |
| `maxWidthTypeBodyMediumMobile` | `maxWidthBodyMediumMobile` |
| `maxWidthTypeBodyMediumTablet` | `maxWidthBodyMediumTablet` |
| `maxWidthTypeBodySmallMobile` | `maxWidthBodySmallMobile` |
| `maxWidthTypeBodySmallTablet` | `maxWidthBodySmallTablet` |
| `maxWidthTypeLabelXlargeMobile` | `maxWidthLabelXlargeMobile` |
| `maxWidthTypeLabelXlargeTablet` | `maxWidthLabelXlargeTablet` |
| `maxWidthTypeLabelLargeMobile` | `maxWidthLabelLargeMobile` |
| `maxWidthTypeLabelLargeTablet` | `maxWidthLabelLargeTablet` |
| `maxWidthTypeLabelMediumMobile` | `maxWidthLabelMediumMobile` |
| `maxWidthTypeLabelMediumTablet` | `maxWidthLabelMediumTablet` |
| `maxWidthTypeLabelSmallMobile` | `maxWidthLabelSmallMobile` |
| `maxWidthTypeLabelSmallTablet` | `maxWidthLabelSmallTablet` |

### 4. Renamed component tokens — badge

| Old name | New name |
|---|---|
| `spaceInset` | `spaceInsetMediumLarge` |

### 5. Renamed component tokens — bar (ActiveIndicator → CurrentIndicator)

| Old name | New name |
|---|---|
| `colorActiveIndicatorCustomSelectedEnabled` | `colorCurrentIndicatorCustomSelectedEnabled` |
| `colorActiveIndicatorCustomSelectedHover` | `colorCurrentIndicatorCustomSelectedHover` |
| `colorActiveIndicatorCustomSelectedPressed` | `colorCurrentIndicatorCustomSelectedPressed` |
| `colorActiveIndicatorCustomSelectedFocus` | `colorCurrentIndicatorCustomSelectedFocus` |
| `opacityActiveIndicatorCustom` | `opacityCurrentIndicatorCustom` |
| `borderRadiusActiveIndicatorCustomTop` | `borderRadiusCurrentIndicatorCustomTop` |
| `borderRadiusActiveIndicatorCustomBottom` | `borderRadiusCurrentIndicatorCustomBottom` |
| `sizeWidthActiveIndicatorCustomTop` | `sizeWidthCurrentIndicatorCustomTop` |
| `sizeWidthActiveIndicatorCustomBottom` | `sizeWidthCurrentIndicatorCustomBottom` |

### 6. Removed tokens

| Removed symbol | Action |
|---|---|
| Raw token `blur160` | Remove all uses |
| Raw token `opacityGrayLight80800` | Remove all uses |
| Semantic tokens `actionAccentLight`, `actionAccentDark`, `actionAccent` | Remove; use `colorAccent` bar component tokens if relevant |
| Radio component token `sizeIndicator` | Use `controlItem.sizeControlIndicator` instead |
| Checkbox component token `sizeIndicator` | Use `controlItem.sizeControlIndicator` instead |
| Control item tokens: `sizeMaxHeihtAssetsContainer`, `sizeLoader`, `sizeErrorIcon`, `borderRadiusItemOnly`, `colorBgHover*`, `colorBgFocus*`, `colorBgPressed*`, `colorBgLoading*`, `colorContentLoader*`, `spacePaddingInlineErrorIcon*` | Remove all uses |

### 7. Charts color token provider renamed

**Before (v1.4.x)**:
```swift
theme.charts.someColorToken
```

**After (v2.0.0)**:
```swift
theme.colorsCharts.someColorToken
```

**Action**: Replace `theme.charts.` → `theme.colorsCharts.`.

### 8. `OUDSToolBarItem.ActionType` — new `badgeType` parameter in `icon` case

If you pattern-match on the `.icon` case, add a slot for `badgeType`:

**Before (v1.4.x)**:
```swift
case .icon(let asset, let accessibilityLabel):
    …
```

**After (v2.0.0)**:
```swift
case .icon(let asset, let accessibilityLabel, let badgeType):
    …
```

---

## v2.0.0 → v2.1.0 — Deprecated symbols

### Component token renamed (ControlItem)

**Before (v2.0.0)**:
```swift
theme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopText_container
```

**After (v2.1.0)**:
```swift
theme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopTextContainer
```

**Action**: Replace the underscore form with the camelCase form.

---

## v2.0.0 → v2.2.0 — Deprecated symbols

### `OUDSBadge` split into three dedicated components

`OUDSBadge` is deprecated. Identify which variant you are using from the call site and replace it.

**Detection**: search for `OUDSBadge(` in your Swift files.

**Identification rule**:
- Call has `count:` parameter → use `OUDSBadgeCount`
- Call has a `status:` whose associated value carries an `icon:` (i.e. `StatusWithIcon`) → use `OUDSBadgeIcon`
- Otherwise → use `OUDSBadgeStandard`

#### Standard badge (no count, no icon in status)

**Before (v2.0.0)**:
```swift
OUDSBadge(accessibilityLabel: "New", status: .accent, size: .small)
OUDSBadge(accessibilityLabel: LocalizedStringKey("new_badge"), bundle: Bundle.module, status: .neutral, size: .medium)
```

**After (v2.2.0)**:
```swift
OUDSBadgeStandard(accessibilityLabel: "New", status: .accent, size: .small)
OUDSBadgeStandard(accessibilityLabel: LocalizedStringKey("new_badge"), bundle: Bundle.module, status: .neutral, size: .medium)
```

#### Count badge

**Before (v2.0.0)**:
```swift
OUDSBadge(count: 9, accessibilityLabel: "9 messages", status: .negative, size: .large)
OUDSBadge(count: 3, accessibilityLabel: LocalizedStringKey("badge_count"), bundle: Bundle.module, status: .neutral, size: .medium)
```

**After (v2.2.0)**:
```swift
// count becomes the first unlabelled argument
OUDSBadgeCount(9, accessibilityLabel: "9 messages", status: .negative, size: .large)
OUDSBadgeCount(3, accessibilityLabel: LocalizedStringKey("badge_count"), bundle: Bundle.module, status: .neutral, size: .medium)
```

> `count` must be of type `UInt8`.

#### Icon badge

**Before (v2.0.0)**:
```swift
OUDSBadge(status: .info(icon: Image("ic_info")), accessibilityLabel: "Info", size: .medium)
OUDSBadge(status: .warning(icon: Image("ic_warn")), accessibilityLabel: LocalizedStringKey("badge_warn"), bundle: Bundle.module, size: .small)
```

**After (v2.2.0)**:
```swift
OUDSBadgeIcon(status: .info(icon: Image("ic_info")), accessibilityLabel: "Info", size: .medium)
OUDSBadgeIcon(status: .warning(icon: Image("ic_warn")), accessibilityLabel: LocalizedStringKey("badge_warn"), bundle: Bundle.module, size: .small)
```

---

## v2.2.0 → v2.3.0 — Deprecated symbols

### 1. `OUDSIcon` → `OUDSImage`

`OUDSIcon` is a deprecated typealias for `OUDSImage`. The initialiser signature is identical.

**Before (v2.2.0)**:
```swift
OUDSIcon(asset: Image("ic_heart"), accessibilityLabel: "Like")
OUDSIcon(asset: Image("ic_heart"), accessibilityLabel: LocalizedStringKey("like_icon"), bundle: Bundle.module)
OUDSIcon(asset: Image("ic_heart"), accessibilityLabel: "Like", renderingMode: .original)
OUDSIcon(asset: Image("ic_heart"), flipped: true, accessibilityLabel: "Back")
```

**After (v2.3.0)**:
```swift
OUDSImage(asset: Image("ic_heart"), accessibilityLabel: "Like")
OUDSImage(asset: Image("ic_heart"), accessibilityLabel: LocalizedStringKey("like_icon"), bundle: Bundle.module)
OUDSImage(asset: Image("ic_heart"), accessibilityLabel: "Like", renderingMode: .original)
OUDSImage(asset: Image("ic_heart"), flipped: true, accessibilityLabel: "Back")
```

**Action**: Global find-and-replace `OUDSIcon(` → `OUDSImage(`.

### 2. `OUDSButton` — initialisers with `icon:` deprecated

Four `OUDSButton` initialisers that accepted a bare `Image` with separate `flipIcon`, `renderingMode` and `accessibilityLabel` parameters are deprecated.
Migrate by wrapping the image and its configuration into a single `OUDSImage` value.

**Parameter mapping**:

| Old parameter on `OUDSButton` | New location |
|---|---|
| `icon: Image("ic_x")` | `image: OUDSImage(asset: Image("ic_x"))` |
| `flipIcon: true` | `OUDSImage(asset:, flipped: true)` — omit entirely if `false` (default) |
| `renderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit entirely if `.template` (default) |
| `accessibilityLabel: "Label"` | `OUDSImage(asset:, accessibilityLabel: "Label")` |
| `accessibilityLabel: LocalizedStringKey("key"), bundle: B` | `OUDSImage(asset:, accessibilityLabel: LocalizedStringKey("key"), bundle: B)` |

#### Case A — text + icon, String label

**Before (v2.2.0)**:
```swift
OUDSButton(text: "Like", icon: Image("ic_heart"), appearance: .default) {}
OUDSButton(text: "Back", icon: Image("ic_chevron"), flipIcon: true, renderingMode: .original, appearance: .strong) {}
```

**After (v2.3.0)**:
```swift
OUDSButton(text: "Like", image: OUDSImage(asset: Image("ic_heart")), appearance: .default) {}
OUDSButton(text: "Back", image: OUDSImage(asset: Image("ic_chevron"), flipped: true, renderingMode: .original), appearance: .strong) {}
```

#### Case B — text + icon, LocalizedStringKey

**Before (v2.2.0)**:
```swift
OUDSButton(LocalizedStringKey("action_like"), icon: Image("ic_heart"), appearance: .default) {}
OUDSButton(LocalizedStringKey("go_back"), tableName: "Nav", bundle: Bundle.module,
           icon: Image("ic_chevron"), flipIcon: true, appearance: .minimal) {}
```

**After (v2.3.0)**:
```swift
OUDSButton(LocalizedStringKey("action_like"), image: OUDSImage(asset: Image("ic_heart")), appearance: .default) {}
OUDSButton(LocalizedStringKey("go_back"), tableName: "Nav", bundle: Bundle.module,
           image: OUDSImage(asset: Image("ic_chevron"), flipped: true), appearance: .minimal) {}
```

#### Case C — icon only, String accessibility label

**Before (v2.2.0)**:
```swift
OUDSButton(icon: Image("ic_heart"), accessibilityLabel: "Like", appearance: .default) {}
OUDSButton(icon: Image("ic_share"), accessibilityLabel: "Share", renderingMode: .original, appearance: .strong) {}
```

**After (v2.3.0)**:
```swift
// accessibilityLabel moves into OUDSImage
OUDSButton(image: OUDSImage(asset: Image("ic_heart"), accessibilityLabel: "Like"), appearance: .default) {}
OUDSButton(image: OUDSImage(asset: Image("ic_share"), accessibilityLabel: "Share", renderingMode: .original), appearance: .strong) {}
```

#### Case D — icon only, LocalizedStringKey accessibility label

**Before (v2.2.0)**:
```swift
OUDSButton(icon: Image("ic_heart"),
           accessibilityLabel: LocalizedStringKey("like_icon"),
           bundle: Bundle.module,
           appearance: .default) {}
```

**After (v2.3.0)**:
```swift
OUDSButton(image: OUDSImage(asset: Image("ic_heart"),
                            accessibilityLabel: LocalizedStringKey("like_icon"),
                            bundle: Bundle.module),
           appearance: .default) {}
```

**Required action**:
1. Replace `icon: Image(…)` with `image: OUDSImage(asset: Image(…))`.
2. Move `flipIcon: Bool` → `OUDSImage(asset:, flipped:)` (omit if `false`).
3. Move `renderingMode:` → `OUDSImage(asset:, renderingMode:)` (omit if `.template`).
4. Move `accessibilityLabel:` (String or LocalizedStringKey) and optional `bundle:` into `OUDSImage`.
5. Remove the now-unused `flipIcon`, `renderingMode` and `accessibilityLabel` parameters from the `OUDSButton` call site.

---

### 3. `OUDSCheckboxItem`, `OUDSCheckboxItemIndeterminate` and `OUDSCheckboxPickerData` — initialisers with `icon:` deprecated

Initialisers that accepted a bare `Image` with separate `flipIcon` and `renderingMode` parameters are deprecated.
Migrate by wrapping the image and its configuration into a single `OUDSImage?` value.

**Parameter mapping** (applies to all three types):

| Old parameter | New location |
|---|---|
| `icon: Image("ic_x")` | `icon: OUDSImage(asset: Image("ic_x"))` |
| `flipIcon: true` | `OUDSImage(asset:, flipped: true)` — omit if `false` (default) |
| `renderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit if `.template` (default) |

#### OUDSCheckboxItem — String and LocalizedStringKey

**Before (v2.2.0)**:
```swift
OUDSCheckboxItem("Label", isOn: $isOn, icon: Image(decorative: "ic_heart"))
OUDSCheckboxItem("Label", isOn: $isOn, icon: Image(decorative: "il_brand"), renderingMode: .original)
OUDSCheckboxItem("Label", isOn: $isOn,
                 icon: Image(systemName: "chevron.right"), flipIcon: layoutDirection == .rightToLeft)
OUDSCheckboxItem(LocalizedStringKey("agree_terms"), bundle: Bundle.module, isOn: $isOn,
                 icon: Image(decorative: "ic_heart"), renderingMode: .original)
```

**After (v2.3.0)**:
```swift
OUDSCheckboxItem("Label", isOn: $isOn, icon: OUDSImage(asset: Image(decorative: "ic_heart")))
OUDSCheckboxItem("Label", isOn: $isOn,
                 icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
OUDSCheckboxItem("Label", isOn: $isOn,
                 icon: OUDSImage(asset: Image(systemName: "chevron.right"),
                                 flipped: layoutDirection == .rightToLeft))
OUDSCheckboxItem(LocalizedStringKey("agree_terms"), bundle: Bundle.module, isOn: $isOn,
                 icon: OUDSImage(asset: Image(decorative: "ic_heart"), renderingMode: .original))
```

#### OUDSCheckboxItemIndeterminate

**Before (v2.2.0)**:
```swift
OUDSCheckboxItemIndeterminate("Label", selection: $state, icon: Image(decorative: "ic_heart"))
OUDSCheckboxItemIndeterminate("Label", selection: $state,
                               icon: Image(decorative: "il_brand"), renderingMode: .original,
                               flipIcon: true)
```

**After (v2.3.0)**:
```swift
OUDSCheckboxItemIndeterminate("Label", selection: $state,
                               icon: OUDSImage(asset: Image(decorative: "ic_heart")))
OUDSCheckboxItemIndeterminate("Label", selection: $state,
                               icon: OUDSImage(asset: Image(decorative: "il_brand"),
                                               flipped: true, renderingMode: .original))
// New in v2.3.0: LocalizedStringKey variant now available
OUDSCheckboxItemIndeterminate(LocalizedStringKey("select_all"), bundle: Bundle.module,
                               selection: $state,
                               icon: OUDSImage(asset: Image(decorative: "ic_heart")))
```

#### OUDSCheckboxPickerData

**Before (v2.2.0)**:
```swift
OUDSCheckboxPickerData(tag: "a", label: "Option A", icon: Image(systemName: "flame"))
OUDSCheckboxPickerData(tag: "b", label: "Option B",
                       icon: Image(decorative: "il_brand"), renderingMode: .original)
```

**After (v2.3.0)**:
```swift
OUDSCheckboxPickerData(tag: "a", label: "Option A",
                       icon: OUDSImage(asset: Image(systemName: "flame")))
OUDSCheckboxPickerData(tag: "b", label: "Option B",
                       icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
```

**Required action**:
1. Replace `icon: Image(…)` with `icon: OUDSImage(asset: Image(…))`.
2. Move `flipIcon: Bool` → `OUDSImage(asset:, flipped:)` (omit if `false`).
3. Move `renderingMode:` → `OUDSImage(asset:, renderingMode:)` (omit if `.template`).
4. Remove the now-unused `flipIcon` and `renderingMode` parameters from the call site.

### 4. `OUDSRadioItem` and `OUDSRadioPickerData` — initialisers with `icon:` deprecated

Initialisers that accepted a bare `Image` with separate `flipIcon` and `renderingMode` parameters are deprecated.
Migrate by wrapping the image and its configuration into a single `OUDSImage?` value.

**Parameter mapping** (applies to both types):

| Old parameter | New location |
|---|---|
| `icon: Image("ic_x")` | `icon: OUDSImage(asset: Image("ic_x"))` |
| `flipIcon: true` | `OUDSImage(asset:, flipped: true)` — omit if `false` (default) |
| `renderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit if `.template` (default) |

#### OUDSRadioItem — String and LocalizedStringKey

**Before (v2.2.0)**:
```swift
OUDSRadioItem("Label", isOn: $isOn, icon: Image(decorative: "ic_heart"))
OUDSRadioItem("Label", isOn: $isOn, icon: Image(decorative: "il_brand"), renderingMode: .original)
OUDSRadioItem("Label", isOn: $isOn,
              icon: Image(systemName: "chevron.right"), flipIcon: layoutDirection == .rightToLeft)
OUDSRadioItem(LocalizedStringKey("option_label"), bundle: Bundle.module, isOn: $isOn,
              icon: Image(decorative: "ic_heart"), renderingMode: .original)
```

**After (v2.3.0)**:
```swift
OUDSRadioItem("Label", isOn: $isOn, icon: OUDSImage(asset: Image(decorative: "ic_heart")))
OUDSRadioItem("Label", isOn: $isOn,
              icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
OUDSRadioItem("Label", isOn: $isOn,
              icon: OUDSImage(asset: Image(systemName: "chevron.right"),
                              flipped: layoutDirection == .rightToLeft))
OUDSRadioItem(LocalizedStringKey("option_label"), bundle: Bundle.module, isOn: $isOn,
              icon: OUDSImage(asset: Image(decorative: "ic_heart"), renderingMode: .original))
```

#### OUDSRadioPickerData

**Before (v2.2.0)**:
```swift
OUDSRadioPickerData(tag: "a", label: "Option A", icon: Image(systemName: "flame"))
OUDSRadioPickerData(tag: "b", label: "Option B", icon: Image(decorative: "il_brand"))
```

**After (v2.3.0)**:
```swift
OUDSRadioPickerData(tag: "a", label: "Option A",
                    icon: OUDSImage(asset: Image(systemName: "flame")))
OUDSRadioPickerData(tag: "b", label: "Option B",
                    icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
```

**Required action**:
1. Replace `icon: Image(…)` with `icon: OUDSImage(asset: Image(…))`.
2. Move `flipIcon: Bool` → `OUDSImage(asset:, flipped:)` (omit if `false`).
3. Move `renderingMode:` → `OUDSImage(asset:, renderingMode:)` (omit if `.template`).
4. Remove the now-unused `flipIcon` and `renderingMode` parameters from the call site.

### 5. `OUDSSwitchItem` — initialisers with `icon:` deprecated

Initialisers that accepted a bare `Image` with separate `flipIcon` and `renderingMode` parameters are deprecated.
Migrate by wrapping the image and its configuration into a single `OUDSImage?` value.

**Parameter mapping**:

| Old parameter | New location |
|---|---|
| `icon: Image("ic_x")` | `icon: OUDSImage(asset: Image("ic_x"))` |
| `flipIcon: true` | `OUDSImage(asset:, flipped: true)` — omit if `false` (default) |
| `renderingMode: .original` | `OUDSImage(asset:, renderingMode: .original)` — omit if `.template` (default) |

**Before (v2.2.0)**:
```swift
OUDSSwitchItem("Label", isOn: $isOn, icon: Image(decorative: "ic_heart"))
OUDSSwitchItem("Label", isOn: $isOn,
               icon: Image(decorative: "il_brand"), renderingMode: .original)
OUDSSwitchItem("Label", isOn: $isOn,
               icon: Image(systemName: "chevron.right"), flipIcon: layoutDirection == .rightToLeft)
OUDSSwitchItem(LocalizedStringKey("wifi_setting"), bundle: Bundle.module, isOn: $isOn,
               icon: Image(decorative: "ic_wifi"), renderingMode: .original)
```

**After (v2.3.0)**:
```swift
OUDSSwitchItem("Label", isOn: $isOn, icon: OUDSImage(asset: Image(decorative: "ic_heart")))
OUDSSwitchItem("Label", isOn: $isOn,
               icon: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
OUDSSwitchItem("Label", isOn: $isOn,
               icon: OUDSImage(asset: Image(systemName: "chevron.right"),
                               flipped: layoutDirection == .rightToLeft))
OUDSSwitchItem(LocalizedStringKey("wifi_setting"), bundle: Bundle.module, isOn: $isOn,
               icon: OUDSImage(asset: Image(decorative: "ic_wifi"), renderingMode: .original))
```

**Required action**:
1. Replace `icon: Image(…)` with `icon: OUDSImage(asset: Image(…))`.
2. Move `flipIcon: Bool` → `OUDSImage(asset:, flipped:)` (omit if `false`).
3. Move `renderingMode:` → `OUDSImage(asset:, renderingMode:)` (omit if `.template`).
4. Remove the now-unused `flipIcon` and `renderingMode` parameters from the call site.

---

## Verification checklist

After completing all transformations, run:

```bash
# Build — must succeed with zero errors
swift build

# Deprecation warnings — must return no OUDS-related lines
swift build 2>&1 | grep -i "deprecated" | grep -iv "apple\|system\|swift\|foundation"

# Residual deprecated or removed symbols — must return no results
grep -rn \
  "OUDSBadge\b\|OUDSIcon\b\|icon: Image\|flipIcon\|renderingMode:\|spacePaddingBlockDensityCompactTopAlignmentTopText_container\|buttonBorderRadius\|buttonBorderWidth\|Multiple.*Tokens\b\|OrangeBusinessTools\|oudsVerticalSizeClass\|UnorderedIcon\|\.ouds[A-Z]" \
  --include="*.swift" .

# Tests — must pass
swift test
```
