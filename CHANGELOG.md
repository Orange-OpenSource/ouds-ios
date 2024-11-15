# OUDS iOS library changelog

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased](https://github.com/Orange-OpenSource/ouds-ios/compare/0.6.0...develop)

## [0.6.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.5.0...0.6.0) - 2024-11-15

### Added

- [DemoApp] Update color screen to add a border on color illustration square ([#280](https://github.com/Orange-OpenSource/ouds-ios/issues/280))
- [DemoApp] Add grid tokens screen in demo app ([#151](https://github.com/Orange-OpenSource/ouds-ios/issues/151))
- [Tool] GitHub Action to run SwiftLint for *main* and *develop* branches

### Changed

- [Tool] Update `net-http` gem from 0.4.1 to 0.5.0 ([#286](https://github.com/Orange-OpenSource/ouds-ios/issues/286))
- [Tool] Update `cocoapods` gem from 1.15.2 to 1.16.2 ([#286](https://github.com/Orange-OpenSource/ouds-ios/issues/286))
- [Tool] Update `json` gem from 2.7.2 to 2.8.2 ([#286](https://github.com/Orange-OpenSource/ouds-ios/issues/286))
- [Tool] Update `swiftformat/cli` from 0.54.3 to 0.54.6 ([#286](https://github.com/Orange-OpenSource/ouds-ios/issues/286))
- [Tool] Update `Fastlane` from 2.223.1 to 2.225.0 ([#286](https://github.com/Orange-OpenSource/ouds-ios/issues/286))
- [DemoApp] Update accessibility statement usage and instructions ([#278](https://github.com/Orange-OpenSource/ouds-ios/issues/278))

### Fixed

- [DemoApp] Add missing accessibility label for images ([#212](https://github.com/Orange-OpenSource/ouds-ios/issues/212))
- [DemoApp] Fix text sizes when dynamic type is used (a11y) ([#247](https://github.com/Orange-OpenSource/ouds-ios/issues/247))

## [0.5.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.4.1...0.5.0) - 2024-10-31

### Added

- [DemoApp] App icons for debug, alpha, beta and production releases ([#140](https://github.com/Orange-OpenSource/ouds-ios/issues/140))
- [Tool] GitHub Actions workflow for CI/CD ([#256](https://github.com/Orange-OpenSource/ouds-ios/issues/256))
- [DemoApp] Add new tokens in size tokens page ([#245](https://github.com/Orange-OpenSource/ouds-ios/issues/245))
- [Library] Semantic token `borderWidthFocusInset` (value of `borderWidth100`) ([#207](https://github.com/Orange-OpenSource/ouds-ios/issues/207), [#241](https://github.com/Orange-OpenSource/ouds-ios/issues/241))
- [Library] Semantic token `fontWeightCode` ([#242](https://github.com/Orange-OpenSource/ouds-ios/issues/242))
- [DemoApp] Update space tokens screen with all categories ([#178](https://github.com/Orange-OpenSource/ouds-ios/issues/178))

### Changed

- [Library] Update `ElevationSemanticTokens` (tokenator *20241031125053*)
- [Library] Update `OrangeBrandColorRawTokens` (tokenator *20241030132734*)
- [Library] Update `BorderSemanticTokens` (tokenator *20241025110844*)
- [Library] Rename color semantic tokens `colorBackground*` to `colorBg*`
- [Library] Rename `MultipleSpacingTokens` to `MultipleSpaceTokens` and `MultipleSizingTokens` to `MultipleSizeTokens`
- [Library] Extract composite semantic tokens from semantic tokens (`ElevationSemanticTokens`, `TypographySemanticTokens`)
- [Library] Improve documentation about the use of semantic tokens
- [Library] Update `OpacitySemanticTokens` (tokenator *20241025101305*)
- [Library] Rename `*Spacing*Tokens` and `*Sizing*Tokens` to `*Space*Tokens` and `*Size*Tokens` ([#237](https://github.com/Orange-OpenSource/ouds-ios/issues/237))
- [Library] Update `ElevationRawTokens` (tokenator *20241022174330*)
- [Library] Update `DimensionRawTokens` (tokenator *20241022132646*)
- [Tool] Improve configuration of SwiftLint, update to v0.57.0 ([#77](https://github.com/Orange-OpenSource/ouds-ios/pull/77))
- [Library] Rename all color semantic tokens `*OnBackground*` to `*OnBg*` ([#208](https://github.com/Orange-OpenSource/ouds-ios/issues/208))
- [Library] Rename `colorDecorativeBrandTertiary` to `colorDecorativeTertiary`
- [Library] Rename `colorDecorativeBrandPrimary` to `colorDecorativePrimary` ([#208](https://github.com/Orange-OpenSource/ouds-ios/issues/208))
- [Library] Rename `colorDecorativeSkinTint*` to `colorDecorativeSkinTint*`
- [Library] Rename `colorActionVisitedOnBackgroundEmphasized` to `colorActionVisitedOnBgEmphasized` ([#208](https://github.com/Orange-OpenSource/ouds-ios/issues/208))
- [Library] Update color semantic tokens ([#208](https://github.com/Orange-OpenSource/ouds-ios/issues/208))
- [Library] Update `BorderRawTokens` (tokenator *20241022102003*)
- [Library] Update `ColorRawTokens` (tokenator *20241021180411*)
- [Tool] Migration to Swift 6
- [Tool] Migration from *Xcode 15.3* to to *Xcode 16* ([#201](https://github.com/Orange-OpenSource/ouds-ios/issues/201))
- [Library] Rename `borderWidthOutsideFocus` to `borderWidthFocus` ([#207](https://github.com/Orange-OpenSource/ouds-ios/issues/207))
- [Library] Update `OpacityRawTokens` (tokenator *20241021134644*)

### Removed

- [Library] Semantic tokens `colorDecorativeBrandTertiaryMuted`, `colorDecorativeBrandTertiaryEmphasized` ([#208](https://github.com/Orange-OpenSource/ouds-ios/issues/208))
- [Library] Semantic tokens `colorDecorativeBrandSecondaryMuted`, `colorDecorativeBrandSecondaryEmphasized` ([#208](https://github.com/Orange-OpenSource/ouds-ios/issues/208))
- [Library] Semantic tokens `colorDecorativeBrandPrimaryMuted`, `colorDecorativeBrandPrimaryEmphasized` ([#208](https://github.com/Orange-OpenSource/ouds-ios/issues/208))
- [Library] Semantic tokens `elevationBlurFocus`, `elevationXFocus`, `elevationYFocus`, `elevationColorFocus` ([#209](https://github.com/Orange-OpenSource/ouds-ios/issues/209))

### Fixed

- [DemoApp] Update typography screen to use right color on token name ([#213](https://github.com/Orange-OpenSource/ouds-ios/issues/213))
- [DemoApp] Remove duplicated section in color page for content on background values ([#236](https://github.com/Orange-OpenSource/ouds-ios/issues/236))
- [DemoApp] Hide from Voice Over decorative image in theme selector (a11y)

### Security

- [Tool] Move to Ruby 3.3.5 to fix Dependabot alert about *REXML ReDoS vulnerability* (CVE-2024-49761) ([#5](https://github.com/Orange-OpenSource/ouds-ios/security/dependabot/5))

## [0.4.1](https://github.com/Orange-OpenSource/ouds-ios/compare/0.4.0...0.4.1) - 2024-10-21

### Fixed

- [DemoApp] App crash on color token page opening ([#215](https://github.com/Orange-OpenSource/ouds-ios/issues/215))

## [0.4.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.3.0...0.4.0) - 2024-10-18

### Added

- [DemoApp] Update opacity screen with new design ([#200](https://github.com/Orange-OpenSource/ouds-ios/issues/200))
- [DemoApp] Add color tokens screen in demo app ([#152](https://github.com/Orange-OpenSource/ouds-ios/issues/152))
- [Library] Add semantic tokens `spacePaddingInlineTallest`, `spacePaddingBlockTallest`, `spaceColumnGapTaller`, `spaceColumnGapWithArrowShortest`, `spaceRowGapShortest` (Figjam final synchronization of October 16th)
- [Library] Add semantic color tokens ([#124](https://github.com/Orange-OpenSource/ouds-ios/issues/124))
- [DemoApp] Fix some design issues and mutualize some UI elements ([#189](https://github.com/Orange-OpenSource/ouds-ios/issues/189))
- [DemoApp] Add sizing tokens screen in demo app ([#150](https://github.com/Orange-OpenSource/ouds-ios/issues/150))
- [DemoApp] Add spacing tokens screen in demo app ([#149](https://github.com/Orange-OpenSource/ouds-ios/issues/149))
- [Library] Add color semantic tokens `colorContentTransparentDefault`, `colorBorderTransparentDefault` and `colorBackgroundTransparentDefault` (October 8th) ([#177](https://github.com/Orange-OpenSource/ouds-ios/issues/177))
- [DemoApp] On opacity screen, add a border around the view showing the opacity ([#157](https://github.com/Orange-OpenSource/ouds-ios/issues/157))

### Changed

- [Library] Update of semantic typography tokens (Figjam final synchronization of October 16th)
- [Library] Update of semantic grid tokens `gridExtraCompactColumnCount`, `gridCompactColumnGap`, `gridRegularColumnGap` (Figjam final synchronization of October 16th)
- [Library] Update of semantic elevation token `elevationStickyNavigationScrolled` (Figjam final synchronization of October 16th)
- [Library] Update of semantic color tokens, semantic sizing tokens (Figjam final synchronization of October 16th)
- [Library/DemoApp] Updates SwiftLint rules, fix linter warnings ([#143](https://github.com/Orange-OpenSource/ouds-ios/issues/143))
- [Tool] Update the templates for GitHub issues
- [Tool] Improve script for documentation generation ([#168](https://github.com/Orange-OpenSource/ouds-ios/issues/168))
- [Library] Rename raw brand-specific color tokens in Orange theme (no use of "brand" word) ([#179](https://github.com/Orange-OpenSource/ouds-ios/issues/179))
- [Library] `fontLetterSpacingMobile*` and `fontLetterSpacingTablet*` merged in `MultipleFontLetterSpacingTokens` objects
- [Library] `fontLineHeightMobile*` and `fontLineHeightTablet*` merged in `MultipleFontLineHeightTokens` objects
- [Library] `fontSizeMobile*` and `fontSizeTablet*` merged in `MultipleFontSizeTokens` objects 
- [Library] Update semantic and raw tokens for fonts ([#155](https://github.com/Orange-OpenSource/ouds-ios/issues/155))
- [Library] Update semantic tokens for fonts (October 7th) ([#172](https://github.com/Orange-OpenSource/ouds-ios/issues/172))
- [Library] Update raw tokens for fonts (October 7th) ([#170](https://github.com/Orange-OpenSource/ouds-ios/issues/170))
- [Library] Any semantic token of sizing `TypeXXX` has been replaced by `TypeSizeXXX` (update of October 7th)
- [Library] Any semantic tokens of sizing `WithTypeXXX` has been replaced by `TypzeXXX` (update of October 7th)
- [Library] Update semantic tokens for sizing (October 7th) ([#173](https://github.com/Orange-OpenSource/ouds-ios/issues/173))
- [Library] Any semantic tokens of spacing `isIcon` and `isArrow` are now `withIcon` and `withArrow` (update of October 7th)
- [Library] Update semantic tokens for spacing (October 4th) ([#174](https://github.com/Orange-OpenSource/ouds-ios/issues/174))
- [Library] Update semantic tokens for spacing (October 4th) ([#156](https://github.com/Orange-OpenSource/ouds-ios/issues/156))
- [Library] Update raw tokens for dimensions (October 7th) ([#169](https://github.com/Orange-OpenSource/ouds-ios/issues/169))

### Removed

- [Library] Raw typography token `fontSize100` (Figjam final synchronization of October 16th)
- [Library] Semantic token `spaceColumnGapWithArrowTaller` (Figjam final synchronization of October 16th)
- [Library] Remove all color alias semantic tokens and any optional color tokens type uses
- [Library] `SoshTheme` ([#180](https://github.com/Orange-OpenSource/ouds-ios/issues/180))
- [Library] `fontSizeMobile*`, `fontSizeTablet*`, `fontLineHeightMobile*`, `fontLineHeightTablet*`, `fontLetterSpacingMobile*`, `fontLetterSpacingTablet*` removed (update of October 4th)
- [Library] `spaceRowGapWithIconTaller`, `spaceColumnGapWithIconTaller` removed (update of October 7th)

### Fixed

- [Library] `typeBodyDefaultLarge` font weight ([#191](https://github.com/Orange-OpenSource/ouds-ios/issues/191))

## [0.3.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.2.0...0.3.0) - 2024-10-04

### Added

- [Library] Add color semantic tokens `colorBackgroundStatusNeutral`, some `OnBackgroundEmphasized`, `colorBackgroundAction`, `colorBackgroundAlways`, `colorContent` variants
- [Library] Add typography semantic tokens for font letter spacing
- [DemoApp] Create token section (Border, Typography, Elevation, Opacity) ([#120](https://github.com/Orange-OpenSource/ouds-ios/issues/120))
- [Library] Unit tests for multiple tokens
- [Library] Add color semantic composite tokens embeding light and dark modes values
- [Library] Add spacing semantic tokens "huge" and "jumbo"
- [Library] Add closed "sys" dimension semantic tokens
- [Tool] GitHub issue template for tokens update request
- [Library] Add more sizing semantic tokens ([#122](https://github.com/Orange-OpenSource/ouds-ios/issues/122))
- [Library] Add letter spacing and more font family tokens for typography ([#51](https://github.com/Orange-OpenSource/ouds-ios/issues/51))

### Changed

- [Library] Rename and move color raw tokens for core, Orange brand and Sosh brand
- [Library] Remove web-specific grid tokens, keep compact/regular widths ([#147](https://github.com/Orange-OpenSource/ouds-ios/pull/147))
- [Library] Rename of typography font weight raw tokens
- [Library] Rename dimension semantic tokens to apply T-Shirt size rules ([#130](https://github.com/Orange-OpenSource/ouds-ios/issues/130))
- [Library] Rename `SizingCompositeSemanticToken` to `MultipleSizingSemanticToken` to keep "composite" word for *Figma* design system
- [Library] Rename `ColorCompositeSemanticToken` to `MultipleColorRawToken` to keep "composite" word for *Figma* design system
- [Library] Rename `TypographyCompositeSemanticToken` to `MultipleTypographyTokens` to keep "composite" word for *Figma* design system
- [Library] Rename `SpacingCompositeSemanticToken` to `MultipleSpacingTokens` to keep "composite" word for *Figma* design system
- [Library] Rename `SizingCompositeSemanticToken` to `MultipleSizingTokens` to keep "composite" word for *Figma* design system
- [Library] Rename `ColorCompositeSemanticToken` to `MultipleColorTokens` to keep "composite" word for *Figma* design system
- [Library] Elevation colors have been merged into "multiple" objects colors to have less variables and manage color schemes
- [Library] Rename `ColorCompositeSemanticToken` to `MultipleColorSemanticToken` to keep "composite" word for *Figma* design system
- [Library] Elevation colors have been merged into composite colors to have less variables and manage color schemes
- [Library] Rename `SpacingCompositeSemanticToken` to `MultipleSpacingTokens` to keep "composite" word for *Figma* design system
- [Library] Rename `SizingCompositeSemanticToken` to `MultipleSizingTokens` to keep "composite" word for *Figma* design system
- [Library] Rename `ColorCompositeSemanticToken` to `MultipleColorTokens` to keep "composite" word for *Figma* design system
- [Library] Elevation colors have been merged into "multiple" objects colors to have less variables and manage color schemes
- [Library] Update color semantic tokens to better manage light and dark modes values
- [Library] Update elevation colors focus light and dark
- [Library] Rename space padding inline component tokens by removing "component" word
- [Library] Improve documentation about raw and semantic tokens definitions ([#127](https://github.com/Orange-OpenSource/ouds-ios/issues/127))
- [Library] Improve documentation about raw tokens definitions
- [Library] Move composite tokens elsewhere to help parser ([#129](https://github.com/Orange-OpenSource/ouds-ios/issues/129))
- [Library] Improve documentation about raw and semantic tokens definitions ([#127](https://github.com/Orange-OpenSource/ouds-ios/issues/127))
- [Library] Rename some sizing semantic tokens ([#122](https://github.com/Orange-OpenSource/ouds-ios/issues/122))
- [Library] Replace "adaptable" word by "scaled" in space semantic tokens, "fix" by "fixed" and remove "layout" ([#117](https://github.com/Orange-OpenSource/ouds-ios/issues/117))

### Removed

- [Library] Color semantic token `colorBackgroundEmphasizedSecondary`, `colorOnBackground` variants
- [Library] Remove raw tokens `elevationZIndex` ([#119](https://github.com/Orange-OpenSource/ouds-ios/issues/119))

### Fixed

- [Library] Blur values for elevation composite raw tokens

## [0.2.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.1.0...0.2.0) - 2024-09-19

### Added

- [Tests] Add UI regression tests using snapshot comparisons with *swift-snapshot-testing* tool ([#78](https://github.com/Orange-OpenSource/ouds-ios/issues/78))
- [DemoApp] Display fake components for elevation rendering tests
- [Library] A theme can now override the custom font family
- [Tests] Add more unit tests for theme overriding and raw tokens controls
- [Library] Add and update raw and semantic grid tokens ([#40](https://github.com/Orange-OpenSource/ouds-ios/issues/40))
- [Library] Manage regular and compact layouts for sizing and spacing tokens
- [Library] "Box shadow 0" has been defined and "elevation drag" changed
- [Doc] Create the basics of a documentation ([#9](https://github.com/Orange-OpenSource/ouds-ios/issues/9))
- [Library] Add more semanttic and raw tokens for typography
- [Library] Add more semantic and raw tokens for typography, and SwiftUI API to apply them
- [Library] Computation of SwiftUI radius from Figma blur and spread values for elevation tokens
- [Library] Add elevation tokens ([#32](https://github.com/Orange-OpenSource/ouds-ios/issues/32))

### Changed

- [Library] Split raws, semantics and components tokens definitions and also values, composites and type aliases
- [Showcase] Improve Fastlane alpha build notifications
- [Library] Do not store blur value in elevation semantic tokens
- [Library] Change type aliases for X and Y offsets of elevations tokens
- [Library] Update border semantic tokens values ([#106](https://github.com/Orange-OpenSource/ouds-ios/issues/106))
- [Showcase] Add fake components for demo and tokens tests
- [Library] Remove spread value for elevation tokens
- [Library] Remove paragraph spacing tokens for typography
- [Library] Term "fluid" has been replaced by "adaptable" in spacing semantic tokens
- [Doc] Improve DocC documentation about tokens and views extensions
- [Doc] Add more details in release documentation
- [Library] Rename semantic token "opacityEmphasized" to "opacityStrong" ([#94](https://github.com/Orange-OpenSource/ouds-ios/issues/94))
- [Library] Update value of opacity raw token "opacity800" from 0.88 to 0.80 ([#87](https://github.com/Orange-OpenSource/ouds-ios/issues/87))
- [Tests] Add missing unit tests for opacity raw tokens
- [Library] "OUDSThemesCommons" product has been renamed to "OUDS"

### Removed

- [Library] Remove Z Index tokens for elevations ([#109](https://github.com/Orange-OpenSource/ouds-ios/issues/109))
- [Library] Remove token "borderRadiusPill" and "borderRadiusCircle" ([#58](https://github.com/Orange-OpenSource/ouds-ios/issues/58))
- [Library] "Emphasis" words have been replaced by "emphasized"
- [Library] "Box shadow" words have been removed in elevation semantic and raw tokens 

### Fixed

- [Library] Fix some typos in documentation ([#89](https://github.com/Orange-OpenSource/ouds-ios/issues/89))

## [0.1.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.0.0...0.1.0) - 2024-08-08

### Added

- [Library] Add simple logger for console outputs
- [Tests] Add unit tests for Sosh brand colors raw tokens
- [Tests] Add unit tests for Orange brand colors raw tokens
- [Tests] Add unit tests for foundations
- [Tests] Add unit tests for raw tokens and semantic tokens for colors
- [Library] Add draft of raw tokens and semantic tokens for grids

### Changed

- [Library] Redefine Swift Package with clearer path for sources, tests cases and test plan
- [Library] Expose product "OUDSThemesCommons" instead of "OUDSThemesShared"
- [Tests] Improve unit tests for elevation semantic tokens
- [Tests] Improve unit tests for typography raw tokens
- [Tests] Improve unit tests for opacity raw tokens
- [Tests] Improve unit tests for elevations raw tokens
- [Tests] Improve unit tests for dimensions raw tokens
- [Tests] Improve unit tests for borders raw tokens

### Fixed

- [Library] Value for color raw token colorFunctionalScarlet700

## [0.0.0](https://github.com/Orange-OpenSource/ouds-ios/tree/main) - 2024-08-07

### Added

- [Library] Add draft of raw tokens and semantic tokens for typography
- [Library] Add draft of raw tokens and semantic tokens for dimensions
- [Library] Add draft of raw tokens and semantic tokens for colors
- [Library] Add draft of raw tokens and semantic tokens for grids
- [Library] Add draft of raw tokens and semantic tokens for elevation
- [Library] Add raw tokens and semantic tokens for opacity ([#29](https://github.com/Orange-OpenSource/ouds-ios/issues/29))
- [Library] Add raw tokens and semantic tokens for border ([#30](https://github.com/Orange-OpenSource/ouds-ios/issues/30))
- [Library] Define Swift Package architecture of library and tokens (raw and semantic) ([#33](https://github.com/Orange-OpenSource/ouds-ios/issues/33))
- [Library] Define Swift Package library for OUDS ([#46](https://github.com/Orange-OpenSource/ouds-ios/issues/46))
- [Showcase] Publication of comment on issues about new alpha build upload on TestFlight ([#56](https://github.com/Orange-OpenSource/ouds-ios/issues/56))
- [Showcase] Distribute demo app development version ([#12](https://github.com/Orange-OpenSource/ouds-ios/issues/12)) 
- [Showcase] Distribute demo app for feature validation ([#13](https://github.com/Orange-OpenSource/ouds-ios/issues/13))
- [Showcase] Create the basic architecture of the demo application ([#6](https://github.com/Orange-OpenSource/ouds-ios/issues/6))

### Changed

### Fixed
