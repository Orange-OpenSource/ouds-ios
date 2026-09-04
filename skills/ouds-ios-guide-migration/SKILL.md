---
name: ouds-ios-guide-migration
description: Use when the user wants to migrate OUDS iOS code from an older version (1.0.0 or later) to the current version (3.0.0 or higher), or when deprecated or removed OUDS APIs are detected in the codebase
license: MIT
---

# Skill: ouds-ios-guide-migration

Migration guide from **v1.0.0** to **v3.0.0** (current). Covers all breaking changes and deprecated symbols.
For full before/after examples, refer to `MIGRATION.md` in the project root.

---

## Quick-reference: what changed, when

| From → To | Impact | Key changes |
|---|---|---|
| v1.0.0 → v1.1.0 | High | `Multiple*Tokens` → `Multiple*Token`; button border tokens shortened |
| v1.1.0 → v1.2.0 | High | Theme renamed: `OrangeBusinessTools` → `OrangeCompact` |
| v1.2.0 → v1.3.0 | Low | `oudsVerticalSizeClass` removed; `UnorderedIcon` → `UnorderedAsset` |
| v1.3.0 → v1.4.0 | Low | `ouds`-prefixed `View` methods removed; `OUDSTabBar(selected:)` → `(selectedTab:)` |
| v1.4.0 → v2.0.0 | High | Token renames (colors, elevations, sizes, badge, bar); charts provider renamed; toolbar action type enriched |
| v2.0.0 → v2.1.0 | Low | Component token `spacePaddingBlockDensityCompactTopAlignmentTopText_container` renamed |
| v2.0.0 → v2.2.0 | Medium | `OUDSBadge` split into `OUDSBadgeStandard`, `OUDSBadgeCount`, `OUDSBadgeIcon` |
| v2.2.0 → v2.3.0 | Low | `OUDSIcon` → `OUDSImage`; all `icon: Image` + `flipIcon` + `renderingMode` params replaced by `OUDSImage` |
| v2.3.0 → v3.0.0 | High | Button/tag/link component token renames (add `Default` suffix); `icon.colorContentDefault` removed; `theme.controlItem` → `theme.listItem`; `OUDSLink.Indicator.back` → `.previous`; `OUDSChipPickerData.Layout.icon(icon:…)` → `.image(image:)`; `.textAndIcon` → `.textAndImage`; alert status `.neutral(icon:)`/`.accent(icon:)` → `(image:)`; `OUDSBadgeIcon` status `.neutral(icon:flipped:renderingMode:)`/`.accent(…)` → `(image: OUDSImage)`; `forceOUDSLegacyTabBar` → `forceOUDSLegacyLayout`; `OUDSLegacyTabBarModifier` → `OUDSLegacyLayoutModifier`; `OUDSButton.Style.loading` → `.loading()` |

---

## Migration workflow

1. **Detect** — grep for deprecated symbols (commands below).
2. **Transform** — apply the rules for the relevant version.
3. **Build** — `swift build` must succeed with zero errors.
4. **Check warnings** — `swift build 2>&1 | grep -i deprecated` must return nothing OUDS-related.
5. **Test** — `swift test` must pass.

---

## Detection grep commands

```bash
# Breaking changes (v3.0.0)
grep -rn \
  "theme\.controlItem\|icon\.colorContentDefault\|spaceInsetLoader\|\.sizeMaxHeightIconOnly\b\|\.sizeMinHeight\b\|\.sizeMinWidth\b\|\.sizeIcon\b\|\.sizeIconOnly\b\|\.sizeProgressIndicator\b\|\.spaceColumnGapIconChevron\b\|\.spaceColumnGapChevron\b\|\.spaceInsetIconOnly\b\|\.spacePaddingBlock\b\|\.spacePaddingInlineChevronEnd\b\|\.spacePaddingInlineChevronStart\b\|\.spacePaddingInlineEndIconStart\b\|\.spacePaddingInlineIconNone\b\|\.spacePaddingInlineStartIconEnd\b\|indicator: \.back\b\|forceOUDSLegacyTabBar\|OUDSLegacyTabBarModifier" \
  --include="*.swift" .

# Active deprecations (v2.x)
grep -rn \
  "OUDSBadge\b\|OUDSIcon\b\|icon: Image\|flipIcon\|renderingMode:\|spacePaddingBlockDensityCompactTopAlignmentTopText_container" \
  --include="*.swift" .

# Removed symbols (v1.x era)
grep -rn \
  "oudsVerticalSizeClass\|UnorderedIcon\|\.free(\|OUDSTabBar(selected:\|\.ouds[A-Z]\|Multiple.*Tokens\b\|OrangeBusinessTools\|buttonBorderRadius\|buttonBorderWidth" \
  --include="*.swift" .
```

---

## v1.0.0 → v1.1.0

| Old | New |
|---|---|
| `MultipleElevationCompositeRawTokens` | `MultipleElevationCompositeRawToken` |
| `MultipleColorSemanticTokens` | `MultipleColorSemanticToken` |
| `MultipleFontCompositeSemanticTokens` | `MultipleFontCompositeSemanticToken` |
| `MultipleFontLetterSpacingSemanticTokens` | `MultipleFontLetterSpacingSemanticToken` |
| `MultipleFontLineHeightSemanticTokens` | `MultipleFontLineHeightSemanticToken` |
| `MultipleFontSizeSemanticTokens` | `MultipleFontSizeSemanticToken` |
| `MultipleSizeSemanticTokens` | `MultipleSizeSemanticToken` |
| `MultipleSpaceSemanticTokens` | `MultipleSpaceSemanticToken` |
| `theme.button.buttonBorderRadiusDefault` | `theme.button.borderRadiusDefault` |
| `theme.button.buttonBorderRadiusRounded` | `theme.button.borderRadiusRounded` |
| `theme.button.buttonBorderRadiusSocial` | `theme.button.borderRadiusSocial` |
| `theme.button.buttonBorderWidthDefault` | `theme.button.borderWidthDefault` |
| `theme.button.buttonBorderWidthDefaultInteraction` | `theme.button.borderWidthDefaultInteraction` |
| `theme.button.buttonBorderWidthDefaultInteractionMono` | `theme.button.borderWidthDefaultInteractionMono` |

---

## v1.1.0 → v1.2.0

Replace everywhere: `OUDSThemeOrangeBusinessTools` → `OUDSThemeOrangeCompact`, `OrangeBusinessToolsTheme` → `OrangeCompactTheme`, `OrangeBusinessTools` → `OrangeCompact`.

---

## v1.2.0 → v1.3.0

- Remove all uses of `@Environment(\.oudsVerticalSizeClass)`.
- Rename `OUDSBulletList.UnorderedIcon` → `OUDSBulletList.UnorderedAsset`; case `.free(…)` → `.icon(…)`.

---

## v1.3.0 → v1.4.0

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
| `OUDSTabBar(selected: 0, count: 3) { … }` | `@State var selectedTab = 0; OUDSTabBar(selectedTab: $selectedTab, count: 3) { … }` |

---

## v1.4.0 → v2.0.0

### Renamed semantic tokens

| Old | New |
|---|---|
| `repositorySecondaryHigher` | `repositorySecondaryHigherHigh` |
| `overlayModalLight/Dark/` | `overlayModalSheetLight/Dark/` (drop `Modal`, add `Sheet`) |
| `xDefault`, `yDefault`, `blurDefault`, `spreadDefault` | `xElevated`, `yElevated`, `blurElevated`, `spreadElevated` |
| `colorDefaultLight/Dark` | `colorElevatedLight/Dark` |
| All `maxWidthType*` sizes | `maxWidth*` (remove `Type`) |
| Badge `spaceInset` | `spaceInsetMediumLarge` |
| Bar `colorActiveIndicator*` | `colorCurrentIndicator*` |
| Bar `opacityActiveIndicator*`, `borderRadiusActiveIndicator*`, `sizeWidthActiveIndicator*` | same with `Current` |

### Removed tokens

Remove: `blur160`, `opacityGrayLight80800`, `actionAccentLight/Dark/` (use `colorAccent` bar tokens), radio/checkbox `sizeIndicator` (use `listItem.sizeControlIndicator`), control item tokens: `sizeMaxHeightAssetsContainer`, `sizeLoader`, `sizeErrorIcon`, `borderRadiusItemOnly`, `colorBgHover/Focus/Pressed/Loading*`, `colorContentLoader*`, `spacePaddingInlineErrorIcon*`.

### Other changes

- `theme.charts.*` → `theme.colorsCharts.*`
- `OUDSToolBarItem.ActionType` `.icon` case: add new `badgeType` slot in pattern matching.

---

## v2.0.0 → v2.1.0

`theme.controlItem.spacePaddingBlockDensityCompactTopAlignmentTopText_container` → `spacePaddingBlockDensityCompactTopAlignmentTopTextContainer`

---

## v2.0.0 → v2.2.0 — OUDSBadge split

`OUDSBadge` is deprecated. Identify the variant and replace:

| If the call has… | Use |
|---|---|
| `count:` parameter | `OUDSBadgeCount(count, accessibilityLabel:status:size:)` — count is first unlabelled arg, type `UInt8` |
| `status:` of type `StatusWithIcon` (carries an icon) | `OUDSBadgeIcon(status:accessibilityLabel:size:)` |
| Neither | `OUDSBadgeStandard(accessibilityLabel:status:size:)` |

---

## v2.2.0 → v2.3.0 — OUDSImage migration

### Universal rule

All components that used `icon: Image`, `flipIcon: Bool`, `renderingMode:` as separate parameters now use `OUDSImage`:

```
icon: Image("x")                  →  OUDSImage(asset: Image("x"))
flipIcon: true                    →  OUDSImage(asset:, flipped: true)          [omit if false]
renderingMode: .original          →  OUDSImage(asset:, renderingMode: .original) [omit if .template]
```

### OUDSIcon → OUDSImage

`OUDSIcon` is a deprecated typealias. Global find-and-replace: `OUDSIcon(` → `OUDSImage(`.

### Components index

| Component | Old params removed | New param | Notes |
|---|---|---|---|
| `OUDSButton` | `icon:`, `flipIcon:`, `renderingMode:`, `accessibilityLabel:` | `image: OUDSImage` | `accessibilityLabel` moves **into** `OUDSImage` |
| `OUDSCheckboxItem` | `icon: Image?`, `flipIcon:`, `renderingMode:` | `image: OUDSImage?` | Renamed `icon:` → `image:` to resolve init ambiguity |
| `OUDSCheckboxItemIndeterminate` | `icon: Image?`, `flipIcon:`, `renderingMode:` | `image: OUDSImage?` | New `LocalizedStringKey` init added; renamed `icon:` → `image:` |
| `OUDSCheckboxPickerData` | `icon: Image?`, `renderingMode:` | `image: OUDSImage?` | Renamed `icon:` → `image:` to resolve init ambiguity |
| `OUDSRadioItem` | `icon: Image?`, `flipIcon:`, `renderingMode:` | `image: OUDSImage?` | Renamed `icon:` → `image:` to resolve init ambiguity |
| `OUDSRadioPickerData` | `icon: Image?` | `image: OUDSImage?` | Renamed `icon:` → `image:`; both the deprecated and the active init use a named `tag:` parameter |
| `OUDSSwitchItem` | `icon: Image?`, `flipIcon:`, `renderingMode:` | `image: OUDSImage?` | `isReversed` defaults to `true`; renamed `icon:` → `image:` |
| `OUDSFilterChip` | `icon: Image`, `renderingMode:` | `image: OUDSImage` | Renamed `icon:` → `image:`; no `flipIcon`; `accessibilityLabel` **stays on chip** |
| `OUDSSuggestionChip` | `icon: Image`, `renderingMode:` | `image: OUDSImage` | No `flipIcon`; `icon:` → `image:` for all variants |
| `OUDSChipPickerData.Layout` | cases `.icon(icon: Image, …)` / `.textAndIcon(text:icon:renderingMode:)` — still available | static factories `.icon(OUDSImage, accessibilityLabel:)` / `.textAndIcon(_ text: String, image: OUDSImage)` | The static factory's first argument has **no label** (`_`): drop the `text:` label when migrating from the enum case |
| `OUDSTag.Status` | `neutral/accent(icon: Image, flipIcon:, renderingMode:)` | `neutral/accent(image: OUDSImage)` | Deprecated static factories; parameter label renamed `icon:` → `image:`; other status unchanged |
| `OUDSLink` | `icon: Image?`, `renderingMode:` | `image: OUDSImage?` | Renamed `icon:` → `image:` to resolve init ambiguity; navigation inits unchanged. **Two-step trap**: if you first replaced `Image(…)` with `OUDSImage(asset: Image(…))` but kept the `icon:` label, you end up with `icon: OUDSImage(…)` which still compiles (no error) but is wrong — you must also rename the label to `image:` |
| `OUDSTextInput` | `leadingIcon: Image?`, `flipLeadingIcon:`, `leadingIconRenderingMode:` | `leadingImage: OUDSImage?` | Renamed `leadingIcon:` → `leadingImage:` to resolve init ambiguity |
| `OUDSTextInput.TrailingAction` | `icon: Image`, `flipIcon:`, `renderingMode:` | `image: OUDSImage` | — |

### ⚠ Residual init ambiguity — workaround

Even after the `icon:` → `image:` / `leadingIcon:` → `leadingImage:` rename, a call site that omits the image parameter entirely can still trigger a Swift compile-time ambiguity error, because the deprecated initialisers (`icon: Image? = nil`) and the active initialisers (`image: OUDSImage? = nil`) both match a call with no image argument at all.

**Symptom**: `error: ambiguous use of 'init(...)'` on a component call with no image argument.

**Fix**: Pass the image parameter explicitly as `nil` to force resolution toward the active init:

| Component | Add this to the call site |
|---|---|
| `OUDSCheckboxItem` | `image: nil` |
| `OUDSCheckboxItemIndeterminate` | `image: nil` |
| `OUDSCheckboxPickerData` | `image: nil` |
| `OUDSRadioItem` | `image: nil` |
| `OUDSRadioPickerData` | `image: nil` |
| `OUDSSwitchItem` | `image: nil` |
| `OUDSLink` | `image: nil` |
| `OUDSTextInput` | `leadingImage: nil` |

```swift
// ❌ ambiguous while deprecated inits coexist:
OUDSCheckboxItem("Label", isOn: $isOn)
OUDSRadioItem("Label", isOn: $isOn)
OUDSRadioPickerData(tag: "a", label: "Option A")
OUDSSwitchItem("Label", isOn: $isOn)
OUDSLink(text: "Learn more", size: .default) {}
OUDSTextInput(label: "Email", text: $text)

// ✅ unambiguous — active init selected:
// temporary — remove once deprecated inits are gone in v3
OUDSCheckboxItem("Label", isOn: $isOn, image: nil)
OUDSRadioItem("Label", isOn: $isOn, image: nil)
OUDSRadioPickerData(tag: "a", label: "Option A", image: nil) 
OUDSSwitchItem("Label", isOn: $isOn, image: nil)
OUDSLink(text: "Learn more", image: nil, size: .default) {}
// ⚠ leadingImage: comes AFTER placeholder:/prefix:/suffix: in the active init:
OUDSTextInput(label: "Email", text: $text, placeholder: "you@example.com", leadingImage: nil)
```

> **⚠ `OUDSTextInput` parameter order**: the active init signature is
> `label:, text:, placeholder:, prefix:, suffix:, leadingImage:, trailingAction:, …`
> A mechanical migration may insert `leadingImage: nil` right after `text:`, placing it **before** `placeholder:`.
> Always ensure `placeholder:` (and `prefix:`/`suffix:` if present) appears **before** `leadingImage:` in the call site.

This workaround is only needed until the deprecated initialisers are removed in v3.

---

## v2.3.0 → v3.0.0

**Backward compatibility**: None. All changes are breaking.

### Button component tokens — add `Default` suffix

15 size and space tokens for `OUDSButton` have been renamed. Add the `Default` suffix to each.

| Old (v2.3) | New (v3.0) |
|---|---|
| `sizeMaxHeightIconOnly` | `sizeMaxHeightIconOnlyDefault` |
| `sizeMinHeight` | `sizeMinHeightDefault` |
| `sizeMinWidth` | `sizeMinWidthDefault` |
| `sizeIcon` | `sizeIconDefault` |
| `sizeIconOnly` | `sizeIconOnlyDefault` |
| `sizeProgressIndicator` | `sizeProgressIndicatorDefault` |
| `spaceColumnGapIconChevron` | `spaceColumnGapIconChevronDefault` |
| `spaceColumnGapChevron` | `spaceColumnGapChevronDefault` |
| `spaceInsetIconOnly` | `spaceInsetIconOnlyDefault` |
| `spacePaddingBlock` | `spacePaddingBlockDefault` |
| `spacePaddingInlineChevronEnd` | `spacePaddingInlineChevronEndDefault` |
| `spacePaddingInlineChevronStart` | `spacePaddingInlineChevronStartDefault` |
| `spacePaddingInlineEndIconStart` | `spacePaddingInlineEndIconStartDefault` |
| `spacePaddingInlineIconNone` | `spacePaddingInlineIconNoneDefault` |
| `spacePaddingInlineStartIconEnd` | `spacePaddingInlineStartIconEndDefault` |

```swift
// Before (v2.3)
theme.button.sizeMinHeight
theme.button.spacePaddingBlock

// After (v3.0)
theme.button.sizeMinHeightDefault
theme.button.spacePaddingBlockDefault
```

**Required action**: for each row, global find-and-replace `theme.button.<oldName>` → `theme.button.<newName>`.

---

### OUDSButton style — `.loading` → `.loading()`

The `OUDSButton.Style` enum case for loading now takes an optional `progress` parameter (nil for indeterminate, double for determinate percentage).

| Old (v2.3) | New (v3.0) |
|---|---|
| `style: .loading` | `style: .loading()` (indeterminate) |
| — | `style: .loading(progress: 0.75)` (determinate, 75%) |

```swift
// Before (v2.3)
OUDSButton(text: "Delete", style: .loading, size: .small) { }

// After (v3.0) — indeterminate
OUDSButton(text: "Delete", style: .loading(), size: .small) { }

// After (v3.0) — determinate with 75% progress
OUDSButton(text: "Delete", style: .loading(progress: 0.75), size: .small) { }
```

**Required action**: replace `style: .loading` with `style: .loading()` (or `.loading(progress: value)` for determinate).

---

### Tag component tokens — `Loader` → `ProgressIndicator`

| Old (v2.3) | New (v3.0) |
|---|---|
| `spaceInsetLoaderSmall` | `spaceInsetProgressIndicatorSmall` |
| `spaceInsetLoaderDefault` | `spaceInsetProgressIndicatorDefault` |

```swift
// Before (v2.3)
theme.tag.spaceInsetLoaderSmall

// After (v3.0)
theme.tag.spaceInsetProgressIndicatorSmall
```

**Required action**: replace `Loader` with `ProgressIndicator` in all `theme.tag` token names.

---

### Link component tokens — mixed rename

> Note the asymmetry: one token gains `Default`, the other loses it.

| Old (v2.3) | New (v3.0) |
|---|---|
| `spacePaddingBlock` | `spacePaddingBlockDefault` |
| `sizeMinWidthDefault` | `sizeMinWidth` |

```swift
// Before (v2.3)
theme.link.spacePaddingBlock
theme.link.sizeMinWidthDefault

// After (v3.0)
theme.link.spacePaddingBlockDefault
theme.link.sizeMinWidth
```

**Required action**: apply both renames independently; a bulk "add Default" pass will break `sizeMinWidth`.

---

### Removed: `icon.colorContentDefault`

The token `theme.icon.colorContentDefault` has been fully removed (was deprecated in v2.x).

```swift
// Before (v2.3)
theme.icon.colorContentDefault

// After (v3.0) — verify semantic equivalence before replacing
theme.colors.contentDefault
```

**Required action**: replace any use of `theme.icon.colorContentDefault` with `theme.colors.contentDefault`.

---

### Provider renamed: `controlItem` → `listItem`

The `controlItem` tokens provider no longer exists in Figma and has been removed from the Swift API.
This affects both the theme accessor and all public Swift types (classes, protocols).

```swift
// Before (v2.3)
theme.controlItem.someToken

// After (v3.0)
theme.listItem.someToken
```

**Required action**: global find-and-replace `theme.controlItem` → `theme.listItem` across the codebase.

All Swift types have been renamed accordingly:

| Old type (v2.3) | New type (v3.0) |
|---|---|
| `OrangeThemeControlItemComponentTokensProvider` | `OrangeThemeListItemComponentTokensProvider` |
| `OrangeCompactThemeControlItemComponentTokensProvider` | `OrangeCompactThemeListItemComponentTokensProvider` |
| `SoshThemeControlItemComponentTokensProvider` | `SoshThemeListItemComponentTokensProvider` |
| `WireframeThemeControlItemComponentTokensProvider` | `WireframeThemeListItemComponentTokensProvider` |
| `AllControlItemComponentTokensProvider` | `AllListItemComponentTokensProvider` |
| `ControlItemComponentTokens` | `ListItemComponentTokens` |

```swift
// Before (v2.3)
class MyProvider: OrangeThemeControlItemComponentTokensProvider { … }
let provider: AllControlItemComponentTokensProvider = MyProvider()

// After (v3.0)
class MyProvider: OrangeThemeListItemComponentTokensProvider { … }
let provider: AllListItemComponentTokensProvider = MyProvider()
```

**Required action**: rename all subclasses and type annotations referencing the old types above.

---

### OUDSChipPickerData.Layout — `.icon` and `.textAndIcon` cases replaced

Both layout cases of `OUDSChipPickerData.Layout` that accepted bare `Image` parameters have been removed and replaced by cases that accept `OUDSImage`.

| Old (v2.3) | New (v3.0) |
|---|---|
| `.icon(icon:accessibilityLabel:renderingMode:)` | `.image(image:)` |
| `.textAndIcon(text:icon:renderingMode:)` | `.textAndImage(text:image:)` |

```swift
// Before (v2.3)
.icon(icon: Image("someImage"), accessibilityLabel: "Foo", renderingMode: .original)
.textAndIcon(text: "Foo", icon: Image("someImage"), renderingMode: .original)

// After (v3.0)
.image(image: OUDSImage(asset: Image("someImage"), accessibilityLabel: "Foo", renderingMode: .original))
.textAndImage(text: "Foo", image: OUDSImage(asset: Image("someImage"), renderingMode: .original))
```

**Required action**:
- Replace `.icon(icon:accessibilityLabel:renderingMode:)` with `.image(image:)`, wrapping the asset, accessibility label and rendering mode into a single `OUDSImage`.
- Replace `.textAndIcon(text:icon:renderingMode:)` with `.textAndImage(text:image:)`, wrapping the asset and rendering mode into a single `OUDSImage`.

---

### OUDSBadgeIcon status — `neutral` and `accent` now accept `OUDSImage`

The `.neutral(icon:flipped:renderingMode:)` and `.accent(icon:flipped:renderingMode:)` cases of `OUDSBadgeIcon` status have been replaced: the three separate parameters are now grouped into a single `OUDSImage` passed as `image:`.

| Old (v2.3) | New (v3.0) |
|---|---|
| `.neutral(icon:flipped:renderingMode:)` | `.neutral(image: OUDSImage)` |
| `.accent(icon:flipped:renderingMode:)` | `.accent(image: OUDSImage)` |

```swift
// Before (v2.3)
.neutral(icon: Image("someImage"), flipped: false, renderingMode: .original)
.accent(icon: Image("someImage"), flipped: false, renderingMode: .original)

// After (v3.0)
.neutral(image: OUDSImage(asset: Image("someImage"), flipped: false, renderingMode: .original))
.accent(image: OUDSImage(asset: Image("someImage"), flipped: false, renderingMode: .original))
```

**Required action**:
- Replace `.neutral(icon:flipped:renderingMode:)` with `.neutral(image:)`, wrapping asset, flip flag and rendering mode into a single `OUDSImage`.
- Replace `.accent(icon:flipped:renderingMode:)` with `.accent(image:)`, same wrapping.

---

### Alert status — `icon:` parameter renamed to `image:` and made optional

The `.neutral(icon:)` and `.accent(icon:)` cases of alert status have two changes:
- The parameter label is renamed from `icon:` to `image:`.
- The type changes from `OUDSImage` (required) to `OUDSImage?` with a default value of `nil`, making the parameter optional.

| Old (v2.3) | New (v3.0) |
|---|---|
| `.neutral(icon: someOudsImage)` | `.neutral(image: someOudsImage)` |
| `.accent(icon: someOudsImage)` | `.accent(image: someOudsImage)` |
| — | `.neutral()` / `.accent()` (no image, new in v3.0) |

```swift
// Before (v2.3)
.neutral(icon: someOudsImage)
.accent(icon: someOudsImage)

// After (v3.0)
.neutral(image: someOudsImage)
.accent(image: someOudsImage)

// Also valid in v3.0 — no image (uses nil default)
.neutral()
.accent()
```

**Required action**:
- Replace `.neutral(icon:)` with `.neutral(image:)`.
- Replace `.accent(icon:)` with `.accent(image:)`.

---

### Modifier renamed: `forceOUDSLegacyTabBar` → `forceOUDSLegacyLayout`

The `.forceOUDSLegacyTabBar()` view modifier and its underlying `OUDSLegacyTabBarModifier` type have been renamed to reflect a broader layout scope.

| Old (v2.3) | New (v3.0) |
|---|---|
| `.forceOUDSLegacyTabBar()` | `.forceOUDSLegacyLayout()` |
| `OUDSLegacyTabBarModifier` | `OUDSLegacyLayoutModifier` |

```swift
// Before (v2.3)
SomeView().forceOUDSLegacyTabBar()
let modifier: OUDSLegacyTabBarModifier = ...

// After (v3.0)
SomeView().forceOUDSLegacyLayout()
let modifier: OUDSLegacyLayoutModifier = ...
```

**Required action**: global find-and-replace `forceOUDSLegacyTabBar` → `forceOUDSLegacyLayout` and `OUDSLegacyTabBarModifier` → `OUDSLegacyLayoutModifier`.

---

### OUDSLink indicator — `.back` → `.previous`

The `OUDSLink.Indicator` enum case for backward navigation has been renamed.

| Old (v2.3) | New (v3.0) |
|---|---|
| `.back` | `.previous` |

```swift
// Before (v2.3)
OUDSLink(text: "Back", indicator: .back, size: .default) { }

// After (v3.0)
OUDSLink(text: "Back", indicator: .previous, size: .default) { }
```

**Required action**: replace all `indicator: .back` with `indicator: .previous` in `OUDSLink` calls.

---

## Verification checklist

```bash
swift build

swift build 2>&1 | grep -i "deprecated" | grep -iv "apple\|system\|swift\|foundation"

# v3.0 breaking changes — must return nothing
grep -rn \
  "theme\.controlItem\|icon\.colorContentDefault\|spaceInsetLoader\|\.sizeMaxHeightIconOnly\b\|\.sizeMinHeight\b\|\.sizeMinWidth\b\|\.sizeIcon\b\|\.sizeIconOnly\b\|\.sizeProgressIndicator\b\|\.spaceColumnGapIconChevron\b\|\.spaceColumnGapChevron\b\|\.spaceInsetIconOnly\b\|\.spacePaddingBlock\b\|\.spacePaddingInlineChevronEnd\b\|\.spacePaddingInlineChevronStart\b\|\.spacePaddingInlineEndIconStart\b\|\.spacePaddingInlineIconNone\b\|\.spacePaddingInlineStartIconEnd\b\|Layout\.icon(icon:\|\.textAndIcon\b\|indicator: \.back\b\|\.neutral(icon:\|\.accent(icon:\|neutral(icon:\|accent(icon:\|OrangeThemeControlItemComponentTokensProvider\|OrangeCompactThemeControlItemComponentTokensProvider\|SoshThemeControlItemComponentTokensProvider\|WireframeThemeControlItemComponentTokensProvider\|AllControlItemComponentTokensProvider\|ControlItemComponentTokens\|forceOUDSLegacyTabBar\|OUDSLegacyTabBarModifier" \
  --include="*.swift" .

# v2.x deprecated symbols — must return nothing
grep -rn \
  "OUDSBadge\b\|OUDSIcon\b\|icon: Image\|leadingIcon: Image\|flipIcon\|renderingMode:\|spacePaddingBlockDensityCompactTopAlignmentTopText_container\|buttonBorderRadius\|buttonBorderWidth\|Multiple.*Tokens\b\|OrangeBusinessTools\|oudsVerticalSizeClass\|UnorderedIcon\|\.ouds[A-Z]" \
  --include="*.swift" .

# v2.3.0 init label disambiguation — must return nothing
grep -rn \
  "icon: OUDSImage\|leadingIcon: OUDSImage" \
  --include="*.swift" .

swift test
```
