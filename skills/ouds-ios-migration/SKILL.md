---
name: ouds-ios-migration
description: Use when the user wants to migrate OUDS iOS code from an older version (1.0.0 or later) to the current version (2.3.0 or higher), or when deprecated or removed OUDS APIs are detected in the codebase
license: MIT
---

# Skill: ouds-ios-migration

Migration guide from **v1.0.0** to **v2.3.0** (current). Covers all breaking changes and deprecated symbols.
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

Remove: `blur160`, `opacityGrayLight80800`, `actionAccentLight/Dark/` (use `colorAccent` bar tokens), radio/checkbox `sizeIndicator` (use `controlItem.sizeControlIndicator`), control item tokens: `sizeMaxHeihtAssetsContainer`, `sizeLoader`, `sizeErrorIcon`, `borderRadiusItemOnly`, `colorBgHover/Focus/Pressed/Loading*`, `colorContentLoader*`, `spacePaddingInlineErrorIcon*`.

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
OUDSTextInput(label: "Email", text: $text, leadingImage: nil)
```

This workaround is only needed until the deprecated initialisers are removed in v3.

---

## Verification checklist

```bash
swift build

swift build 2>&1 | grep -i "deprecated" | grep -iv "apple\|system\|swift\|foundation"

grep -rn \
  "OUDSBadge\b\|OUDSIcon\b\|icon: Image\|leadingIcon: Image\|flipIcon\|renderingMode:\|spacePaddingBlockDensityCompactTopAlignmentTopText_container\|buttonBorderRadius\|buttonBorderWidth\|Multiple.*Tokens\b\|OrangeBusinessTools\|oudsVerticalSizeClass\|UnorderedIcon\|\.ouds[A-Z]" \
  --include="*.swift" .

# Detect old active-init parameter labels that were renamed (v2.3.0 disambiguation).
# All components (including OUDSSuggestionChip and OUDSTag.Status) now use image: OUDSImage.
# Any remaining icon: OUDSImage or leadingIcon: OUDSImage in call sites must be renamed.
grep -rn \
  "icon: OUDSImage\|leadingIcon: OUDSImage" \
  --include="*.swift" .

swift test
```
