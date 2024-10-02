# OUDS iOS library changelog

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased](https://github.com/Orange-OpenSource/ouds-ios/compare/0.2.0...develop)

### Added

- [Library] Add typography semantic tokens for font letter spacing
- [Library] Unit tests for multiple tokens
- [Library] Add color semantic composite tokens embeding light and dark modes values
- [Library] Add spacing semantic tokens "huge" and "jumbo"
- [Library] Add closed "sys" dimension semantic tokens
- [Tool] GitHub issue template for tokens update request
- [Library] Add more sizing semantic tokens ([#122](https://github.com/Orange-OpenSource/ouds-ios/issues/122))
- [Library] Add letter spacing and more font family tokens for typography ([#51](https://github.com/Orange-OpenSource/ouds-ios/issues/51))

### Changed

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
