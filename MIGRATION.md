# Migration Guide

- [v1.4.0 → v2.0.0](#v140--v200)
- [v1.3.0 → v1.4.0](#v130--v140)
- [v1.2.0 → v1.3.0](#v120--v130)
- [v1.1.0 → v1.2.0](#v110--v120)
- [v1.0.0 → v1.1.0](#v100--v110)
- [Support](#support)

## v1.4.0 → v2.0.0

### Overview

Tokens librairies have been updated, with some raw, semantic and components tokens removed or renamed.
API for `action type` of `toolbar item` has been enriched.

### Before You Begin

#### Prerequisites

- Use version 1.4 or older

### Renamed tokens

Some component tokens (badge) and semantic tokens (colors) have been renamed.

**Impact**: High

For colors semantic tokens:

| Old name                                   | New name                             |
|--------------------------------------------|--------------------------------------|
| `repositorySecondaryHigher`                | `repositorySecondaryHigherHigh`      |
| `overlayModalLight`                        | `overlayModalSheetLight`             |
| `overlayModalDark`                         | `overlayModalSheetDark`              |
| `overlayModal`                             | `overlayModalSheet`                  |

For elevation semantic tokens:

| Old name                                   | New name                             |
|--------------------------------------------|--------------------------------------|
| `xDefault`                                 | `xElevated`                          |
| `yefault`                                  | `yElevated`                          |
| `blurDefault`                              | `blurElevated`                       |
| `spreadDefault`                            | `spreadElevated`                     |
| `colorDefaultLight`                        | `colorElevatedLight`                 |
| `colorDefaultDark`                         | `colorElevatedDark`                  |


For size semantic tokens:

| Old name                                   | New name                             |
|--------------------------------------------|--------------------------------------|
| `maxWidthTypeDisplayLargeMobile`           | `maxWidthDisplayLargeMobile`         |
| `maxWidthTypeDisplayLargeTablet`           | `maxWidthDisplayLargeTablet`         |
| `maxWidthTypeDisplayMediumMobile`          | `maxWidthDisplayMediumMobile`        |
| `maxWidthTypeDisplayMediumTablet`          | `maxWidthDisplayMediumTablet`        |
| `maxWidthTypeDisplaySmallMobile`           | `maxWidthDisplaySmallMobile`         |
| `maxWidthTypeDisplaySmallTablet`           | `maxWidthDisplaySmallTablet`         |
| `maxWidthTypeHeadingXlargeMobile`          | `maxWidthHeadingXlargeMobile`        |
| `maxWidthTypeHeadingXlargeTablet`          | `maxWidthHeadingXlargeTablet`        |
| `maxWidthTypeHeadingLargeMobile`           | `maxWidthHeadingLargeMobile`         |
| `maxWidthTypeHeadingLargeTablet`           | `maxWidthHeadingLargeTablet`         |
| `maxWidthTypeHeadingMediumMobile`          | `maxWidthHeadingMediumMobile`        |
| `maxWidthTypeHeadingMediumTablet`          | `maxWidthHeadingMediumTablet`        |
| `maxWidthTypeHeadingSmallMobile`           | `maxWidthHeadingSmallMobile`         |
| `maxWidthTypeHeadingSmallTablet`           | `maxWidthHeadingSmallTablet`         |
| `maxWidthTypeBodyLargeMobile`              | `maxWidthBodyLargeMobile`            |
| `maxWidthTypeBodyLargeTablet`              | `maxWidthBodyLargeTablet`            |
| `maxWidthTypeBodyMediumMobile`             | `maxWidthBodyMediumMobile`           |
| `maxWidthTypeBodyMediumTablet`             | `maxWidthBodyMediumTablet`           |
| `maxWidthTypeBodySmallMobile`              | `maxWidthBodySmallMobile`            |
| `maxWidthTypeBodySmallTablet`              | `maxWidthBodySmallTablet`            |
| `maxWidthTypeLabelXlargeMobile`            | `maxWidthLabelXlargeMobile`          |
| `maxWidthTypeLabelXlargeTablet`            | `maxWidthLabelXlargeTablet`          |
| `maxWidthTypeLabelLargeMobile`             | `maxWidthabelLargeMobile`            |
| `maxWidthTypeLabelLargeTablet`             | `maxWidthLabelLargeTablet`           |
| `maxWidthTypeLabelMediumMobile`            | `maxWidthLabelMediumMobile`          |
| `maxWidthTypeLabelMediumTablet`            | `maxWidthLabelMediumTablet`          |
| `maxWidthTypeLabelSmallMobile`             | `maxWidthLabelSmallMobile`           |
| `maxWidthTypeLabelSmallTablet`             | `maxWidthLabelSmallTablet`           |

For badge component tokens:

| Old name                                   | New name                             |
|--------------------------------------------|--------------------------------------|
| `spaceInset`                               | `spaceInsetMediumLarge`              |

For bar component tokens

| Old name                                        | New name                                        |
|-------------------------------------------------|-------------------------------------------------|
| `colorActiveIndicatorCustomSelectedEnabled`     | `colorCurrentIndicatorCustomSelectedEnabled`    |
| `colorActiveIndicatorCustomSelectedHover`       | `colorCurrentIndicatorCustomSelectedHover`      |
| `colorActiveIndicatorCustomSelectedPressed`     | `colorCurrentIndicatorCustomSelectedPressed`    |
| `colorActiveIndicatorCustomSelectedFocus`       | `colorCurrentIndicatorCustomSelectedFocus`      |
| `opacityActiveIndicatorCustom`                  | `opacityCurrentIndicatorCustom`                 |
| `borderRadiusActiveIndicatorCustomTop`          | `borderRadiusCurrentIndicatorCustomTop`         |
| `borderRadiusActiveIndicatorCustomBottom`       | `borderRadiusCurrentIndicatorCustomBottom`      |
| `sizeWidthActiveIndicatorCustomTop`             | `sizeWidthCurrentIndicatorCustomTop`            |
| `sizeWidthActiveIndicatorCustomBottom`          | `sizeWidthCurrentIndicatorCustomBottom`         |
| `sizeWidthActiveIndicatorCustomBottom`          | `sizeWidthCurrentIndicatorCustomBottom`         |
    
**Required Action**:
- Use the new names as explained above

**Reason for Change**: Tokens librairies have been updated in design side

### Removed tokens

Some component tokens (control item, checkbox, radio), semantic tokens (color) and raw tokens (effect, colors) have been removed.
All Sosh raw tokens have been changed.

**Impact**: High

**Required Action**:
- Remove effect raw token `blur160`
- Remove color raw token `opacityGrayLight80800`
- Remove color semantic tokens `actionAccentLight`, `actionAccentDark` and `actionAccent`
- Remove radio component token `sizeIndicator`, use `controlItem.sizeControlIndicator` instead
- Remove checkbox component token `sizeIndicator`, use `controlItem.sizeControlIndicator` instead
- Remove following control item component tokens: `sizeMaxHeihtAssetsContainer`, `sizeLoader`, `sizeErrorIcon`, `borderRadiusItemOnly`,
`colorBgHover*`, `colorBgFocus*`, `colorBgPressed*`, `colorBgLoading*`, `colorContentLoader*`, `spacePaddingInlineErrorIcon*`
- Remove use of all raw tokens for Sosh and use new ones

**Reason for Change**: Tokens librairies have been updated in design side

### Renamed color charts tokens providers

The tokens provider for charts colors, previously named `charts`, is now named `colorsCharts`.

**Impact**: High

**Required Action**:
- Rename any use of `theme.charts` to `theme.colorsCharts`

**Reason for Change**: Bring more clarity in naming

### Refactor of API for `action type` of `toolbar item`

The `OUDSToolBarItem.ActionType` enum has been updated for the `icon` case.
A new parameter named `badgeType` appeared.

**Impact**: Low

**Required Action**: 
- If you make pattern matching on this case, add a new slot for this parameter.

**Reason for Change**: Manage badge for items with icons in toolbars

### Compatibility

- **Backward Compatibility**: No
- **v1.4.0 Support**: No

## v1.3.0 → v1.4.0

### Overview

Some public `View` extension methods prefixed with `ouds` have been renamed to remove the prefix, aligning with the naming style of typography helpers.
The old methods are deprecated and will be removed in a future major version.
The tab bar component has a new initializer with a binding for the selected tab, deprecating the older one.

### Before You Begin

#### Prerequisites

- Use version 1.3 or older

### Deprecated API

#### Renamed `View` extension methods (deprecated, not removed)

The following `View` extension methods have been deprecated in favor of unprefixed versions.
The old methods still compile with a deprecation warning.

**Impact**: Low

| Deprecated                                   | Replacement                          |
|----------------------------------------------|--------------------------------------|
| `.oudsForegroundStyle(_:)`                   | `.foregroundStyle(_:)`               |
| `.oudsForegroundColor(_:)`                   | `.foregroundColor(_:)`               |
| `.oudsBackground(_:)`                        | `.background(_:)`                    |
| `.oudsAccentColor(_:)`                       | `.accentColor(_:)`                   |
| `.oudsShadow(_:)`                            | `.shadow(_:)`                        |
| `.oudsBorder(style:width:radius:color:)`     | `.border(style:width:radius:color:)` |
| `.oudsColoredSurface(_:)`                    | `.coloredSurface(_:)`                |
| `.oudsGridMargin(_:)`                        | `.gridMargin(_:)`                    |
| `.oudsRequestAccessibleFocus(_:)`            | `.requestAccessibleFocus(_:)`        |
| `.oudsRequestAccessibleFocus(_:for:)`        | `.requestAccessibleFocus(_:for:)`    |
| `.oudsHorizontalDivider(dividerColor:)`      | `.horizontal(color:)`                |
| `.oudsVerticalDivider(color:)`               | `.vertical(color:)`                  |

**Before (v1.3.x)**:
```swift
Text("Hello")
    .oudsForegroundColor(theme.colors.contentDefault)
    .oudsBackground(theme.colors.bgPrimary)
    // Etc.

SomeView()
    .oudsBorder(style: theme.borders.styleDefault,
                width: theme.borders.widthThin,
                radius: theme.borders.radiusMedium,
                color: theme.colors.borderDefault)
    .oudsShadow(theme.elevations.emphasized)
    // Etc.
```

**After (v1.4.0)**:
```swift
Text("Hello")
    .foregroundColor(theme.colors.contentDefault)
    .background(theme.colors.bgPrimary)

SomeView()
    .border(style: theme.borders.styleDefault,
            width: theme.borders.widthThin,
            radius: theme.borders.radiusMedium,
            color: theme.colors.borderDefault)
    .shadow(theme.elevations.emphasized)
```

**Required Action**:
- Replace deprecated `ouds`-prefixed calls with their unprefixed counterparts

**Reason for Change**: User feedback indicated the `ouds` prefix on methods was redundant and verbose given that parameter types are strongly typed OUDS tokens which prevent any ambiguity with native SwiftUI overloads.

#### Deprecated `OUDSTabBar` initializer

The `OUDSTabBar(selected:count:content:)` initializer that accepted a plain `Int` for the initially selected tab is now deprecated.
A new `OUDSTabBar(selectedTab:count:content:)` initializer replaces it, accepting a `Binding<Int>` that is updated whenever the user taps a tab — keeping the parent view in sync with the tab bar selection without any extra code.

**Impact**: Low

**Before (v1.3.x)**:
```swift
// The initial tab is fixed at 0; user interactions are not propagated back.
OUDSTabBar(selected: 0, count: 3) {
    SomeView().tabItem { Label("Home", image: "ic_home") }.tag(0)
    OtherView().tabItem { Label("Search", image: "ic_search") }.tag(1)
    LastView().tabItem { Label("Profile", image: "ic_profile") }.tag(2)
}
```

**After (v1.4.0)**:
```swift
// Declare a @State to hold the selected tab index.
@State private var selectedTab = 0

// Pass it as a Binding: the tab bar updates selectedTab when the user taps a tab,
// and programmatically changing selectedTab switches the displayed tab.
OUDSTabBar(selectedTab: $selectedTab, count: 3) {
    SomeView().tabItem { Label("Home", image: "ic_home") }.tag(0)
    OtherView().tabItem { Label("Search", image: "ic_search") }.tag(1)
    LastView().tabItem { Label("Profile", image: "ic_profile") }.tag(2)
}
```

**Required Action**:
- Replace `OUDSTabBar(selected:count:content:)` calls with `OUDSTabBar(selectedTab:count:content:)`
- Declare a `@State private var selectedTab: Int` (or use an existing state/binding) and pass it as `$selectedTab`
- Remove any manual workaround you may have used to track or drive tab selection from outside the component

**Reason for Change**: The original initializer only accepted a one-time initial value (`Int`) with no way to observe or control the selected tab from outside the component.
The new initializer uses a `Binding<Int>` so the selected tab is always in sync with the parent view: user taps update the binding, and external state changes switch the visible tab.

### Compatibility

- **Backward Compatibility**: Yes
- **v1.3.0 Support**:  Until release of next minor version

## v1.2.0 → v1.3.0

### Overview

The design team confirms that any logic related to grids, gutters and spacings are related to the horizontal size class.
Thus existence of `oudsVerticalSizeClass`, used nowhere, is a non-sense; this property has been removed.

### Before You Begin

#### Prerequisites

- Use version 1.2 or older

### Breaking Changes

#### 1. Removal of `oudsVerticalSizeClass`

**Impact**: Low

**Before (v1.x)**:
```swift
@Environment(\.oudsVerticalSizeClass) var sizeClass // Or any other name for property
```

**After (v1.3.0)**:
```swift
// Property removed
```

**Required Action**:
- Remove us of `oudsVerticalSizeClass` environment object

**Reason for Change**: Not used, not relevant, must not be considered even if design side

**Note**: This property comes back with v1.4.0 as some users still used it

#### 2. Rename of OUDSBulletList.UnorderedIcon` to `OUDSBulletList.UnorderedAsset`

**Impact**: Low

**Before (v1.x)**:
```swift
var someIconForBulletList: OUDSBulletList.UnorderedIcon {
    .free(someImage)
}
```

**After (v1.3.0)**:
```swift
var someIconForBulletList: OUDSBulletList.UnorderedAsset {
    .icon(someImage)
}
```

**Required Action**:
- Rename any use of `OUDSBulletList.UnorderedIcon` to `OUDSBulletList.UnorderedAsset`
- Case `.free` must be replaced by `.icon`

**Reason for Change**: "asset" word has a better meaning than "icon", and is aligned with Android OUDS library API

### Compatibility

- **Backward Compatibility**: No
- **v1.2.0 Support**:  Until release of next minor version

## v1.1.0 → v1.2.0

### Overview

The *Orange Business Tools* theme has been renamed by the design team to *Orange Compact*
Thus the theme name is more accurate and does not have ambiguity anymore with Orange Business company.

### Before You Begin

#### Prerequisites

- Use version 1.x

### Breaking Changes

#### 1. Rename of Swift package product

**Impact**: High

**Before (v1.x)**:
```swift
import OUDSThemeOrangeBusinessTools
```

**After (v1.2.0)**:
```swift
import OUDSThemeOrangeCompact
```

**Required Action**:
- If you use individual imports, rename the name of the Swift Package product from `OUDSThemeOrangeCompact` to `OUDSThemeOrangeCompact`

**Reason for Change**: Use more accurate name for the theme

#### 2. Rename of the theme

**Impact**: High

**Before (v1.x)**:
```swift
OrangeBusinessToolsTheme()
```

**After (v1.2.0)**:
```swift
OrangeCompactTheme()
```

**Required Action**:
- If you instanciated `OrangeCompactTheme` object, use instead `OrangeCompactTheme` name

**Reason for Change**: Use more accurate name for the theme

#### 3. Change any use of "OrangeCompact"

**Impact**: High

**Required Action**:
- Wherever you use the name "OrangeBusinessTools" (whatever the case or the style), in documentation, tests or source code, replace instead by "OrangeCompact"

**Reason for Change**: Use more accurate name for the theme

### Compatibility

- **Backward Compatibility**: No
- **v1.1.0 Support**:  Until release of next minor version

## v1.0.0 → v1.1.0

### Overview

Some "multiple" object tokens have been renamed from plural form to singular form.
Component tokens of button for borders have been shortened.

### Before You Begin

#### Prerequisites

- Use version 1.0.0

### Breaking Changes

#### 1. Rename of "multiple" objects

**Impact**: High

**Before (v1.0.0)**:
```swift
// Old namings of objects
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
// Use new namings without final 's'
MultipleElevationCompositeRawToken
MultipleColorSemanticToken
MultipleFontCompositeSemanticToken
MultipleFontLetterSpacingSemanticToken
MultipleFontLineHeightSemanticToken
MultipleFontSizeSemanticToken
MultipleSizeSemanticToken
MultipleSpaceSemanticToken
```

**Required Action**:
- Step 1: Rename all `MultipleColorSemanticTokens` uses to `MultipleColorSemanticToken`
- Step 2: Rename all `MultipleElevationCompositeRawTokens` uses to `MultipleElevationCompositeRawToken`
- Step 3: Rename all `MultipleFontCompositeSemanticTokens` uses to `MultipleFontCompositeSemanticToken`
- Step 4: Rename all `MultipleFontLetterSpacingSemanticTokens` uses to `MultipleFontLetterSpacingSemanticToken`
- Step 5: Rename all `MultipleFontLineHeightSemanticTokens` uses to `MultipleFontLineHeightSemanticToken`
- Step 6: Rename all `MultipleFontSizeSemanticTokens` uses to `MultipleFontSizeSemanticToken`
- Step 7: Rename all `MultipleSizeSemanticTokens` uses to `MultipleSizeSemanticToken`
- Step 8: Rename all `MultipleSpaceSemanticTokens` uses to `MultipleSpaceSemanticToken`

**Reason for Change**: Bring consistency between objects exposed by the API; plural form is not correct

#### 2. Rename of component tokens of button for border

**Impact**: High
    
**Before (v1.0.0)**:
```swift
// Old namings of objects
buttonBorderRadiusDefault
buttonBorderRadiusRounded
buttonBorderRadiusSocial
buttonBorderWidthDefault 
buttonBorderWidthDefaultInteraction
buttonBorderWidthDefaultInteractionMono
```

**After (v1.1.0)**:
```swift
// Use new namings without 'button' prefix
borderRadiusDefault
borderRadiusRounded
borderRadiusSocial
borderWidthDefault 
borderWidthDefaultInteraction
borderWidthDefaultInteractionMono
```

**Required Action**:
- Step 1: Rename all `buttonBorderRadiusDefault` uses to `borderRadiusDefault`
- Step 2: Rename all `buttonBorderRadiusRounded` uses to `borderRadiusRounded`
- Step 3: Rename all `buttonBorderRadiusSocial` uses to `borderRadiusSocial`
- Step 4: Rename all `buttonBorderWidthDefault` uses to `borderWidthDefault`
- Step 5: Rename all `buttonBorderWidthDefaultInteraction` uses to `buttonBorderWidthDefaultInteraction`
- Step 6: Rename all `buttonBorderWidthDefaultInteractionMono` uses to `borderWidthDefaultInteractionMono`

**Reason for Change**: Tokens names must be shortened and must not repeat the component name

### Compatibility

- **Backward Compatibility**: No
- **v1.0.0 Support**:  Until release of version v1.1.0

### Additional Resources

- [Full Changelog](https://github.com/Orange-OpenSource/ouds-ios/compare/1.0.0...1.1.0)

## Support

If you encounter issues:
- [Open an issue](https://github.com/Orange-OpenSource/ouds-ios/issues)
