
# OUDS iOS library changelog

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased](https://github.com/Orange-OpenSource/ouds-ios/compare/1.0.0...develop)

### Added

- Stop animation of switch if defined in accessibility settings (Orange-OpenSource/ouds-ios#660)
- Display in logs components versions
- Python script to find dead / unused tokens (Orange-OpenSource/ouds-ios#1237)

### Changed

- Update definitions of components using DSM definitions (Orange-OpenSource/ouds-ios#1238) 
- Move from Xcode 26.1.1 to Xcode 26.2 (Orange-OpenSource/ouds-ios#1246)
- Move from Xcode 26.0 to Xcode 26.1.1 (Orange-OpenSource/ouds-ios#1209)
- Unused `status` and `size` properties of `badge` component (count and icon variants) removed (Orange-OpenSource/ouds-ios#1233)
- Various cleanings in the documentation
- Update constants file with versions values in comments for documentation
- Display tokens librairies versions in themes Swift files
- Update README with reference to AGENTS.md file
- **BREAKING**: Rename component tokens `buttonBorder*` to `border*`
- **BREAKING**: Rename some multiple token objects (from plural to singular form)
- Use `DynamicTypeSize` instead of `ContentSizeCategory` (Orange-OpenSource/ouds-ios#1187)
- Gem `fastlane` gem from v2.229.1 to v2.230.0

### Removed

- **BREAKING**: Experimental UIKit backports with wrapped SwiftUI components

### Fixed

- Cycle in attribute graph with OUDS tab bar and Xcode 26.2 (Orange-OpenSource/ouds-ios#1247) (Orange-OpenSource/ouds-ios#1249)

## [1.0.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.22.0...1.0.0) - 2025-12-18

### Added

- `tab bar` component (Orange-OpenSource/ouds-ios#1135)
- `constrainedMaxWidth` parameter to `control items` and `text input` components (Orange-OpenSource/ouds-ios#1211)

### Changed

- `Ruby` version from v3.4.7 to v3.4.8 for `build-and-test` workflows
- `actions/upload-artifact` action from v5.0.0 to v6.0.0 for `scorecard` workflow
- `ruby/setup-ruby` action from v1.268.0 to v1.271.0 for `build-and-test` workflow 
- GitHub Actions `checkout` from v6.0.0 to v6.0.1 for all workflows
- `github/codeql-action/upload-sarif` action for `scorecard` workflow
- Swift package `SwifFormat` from v0.58.6 to v0.58.7
- Define timeout of 1 hour for all GitHub Actions workflows
- Color semantic tokens (Orange-OpenSource/ouds-ios#1206)
- Update wording keys and translations (Orange-OpenSource/ouds-ios#1200)
- Update icons to v1.4.0 (Orange-OpenSource/ouds-ios#1193)
- References to DSM documentation (Orange-OpenSource/ouds-ios#1210) (Orange-OpenSource/ouds-ios#1212)
- Update `switch` components to v1.5.0 (Orange-OpenSource/ouds-ios#1138)
- Update `radio` components to v1.4.0 (Orange-OpenSource/ouds-ios#1139)
- Update `checkbox` components to v2.4.0 (Orange-OpenSource/ouds-ios#1137)
- Read only variant for `checkbox` and  `checkbox indeterminate` components (Orange-OpenSource/ouds-ios#1137)

### Fixed

- Accessibility hint on placeholder if no helper text in `text input` (Orange-OpenSource/ouds-ios#1083)
- Separate label from trait, state, value and error message in `text input`, `checkbox`, `radio` and `switch` (Orange-OpenSource/ouds-ios#1188)
- The warning icon for Orange theme is not the right one used on `tag` and `badge` (Orange-OpenSource/ouds-ios#1219)
- Icon not shown for negative `tag` and `badge` types (Orange-OpenSource/ouds-ios#1216)
- Missing accessibility label for badge `standard` and `count` types (Orange-OpenSource/ouds-ios#1060) (Orange-OpenSource/ouds-ios#1222)
- Set own accessibility label to trailing action in `TextInput` (Orange-OpenSource/ouds-ios#1087)
- Scale icons with information for tag and badge components (Orange-OpenSource/ouds-ios#1179)

## [0.22.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.21.0...0.22.0) - 2025-11-28

### Added

- `bar` component tokens (Orange-OpenSource/ouds-ios#1169)
- `effect` raw and semantic tokens (Orange-OpenSource/ouds-ios#1169)
- Icon flip option for `text input` component trailing action (Orange-OpenSource/ouds-ios#1041)
- Icon flip option for `button` component (Orange-OpenSource/ouds-ios#1124)
- Support for `watchOS` (Orange-OpenSource/ouds-ios#1110)
- Support for `tvOS` (Orange-OpenSource/ouds-ios#1109)

### Changed

- `github/codeql-action/upload-sarif` action for `scorecard` workflow
- `ruby/setup-ruby` action from v1.267.0 to v1.268.0 for `build-and-test` workflow 
- GitHub Actions `checkout` from v5 to v6 for all workflows
- Gem `fastlane` gem from v2.228.0 to v2.229.1
- `Wireframe` color raw tokens names
- `Wireframe` theme `border` semantic tokens (tokens libraries System v2.3) (Orange-OpenSource/ouds-ios#1158)
- `size` semantic tokens (tokens libraries System v2.3) (Orange-OpenSource/ouds-ios#1158)
-  Update `badge` to use internal icons for some status (Orange-OpenSource/ouds-ios#1136)
- `SwiftFormat` Swift package plugin from v0.58.5 to v0.58.6
- `actions/dependency-review-action` action from v4.8.1 to v4.8.2 for `dependency-review` workflow
- `color` semantic tokens (tokens libraries Core v1.9, System v2.2)
- `icon` component tokens (tokens libraries Core v1.9, System v2.2)
- `control item` component tokens (tokens libraries Core v1.9, System v2.2) 
- Update `text input` to display the label on two lines and in the middle when no placeholder and one line at top otherwise (Orange-OpenSource/ouds-ios#1086)

### Fixed

- Switch control cannot be toggled by swipe (Orange-OpenSource/ouds-ios#995)
- Fonts and typography not applied (Orange, Sosh, Wireframe) on watchOS (Orange-OpenSource/ouds-ios#1142)
- Fonts and typography not applied (Orange, Sosh, Wireframe) on tvOS (Orange-OpenSource/ouds-ios#1145)
- Typography with line height token and dedicated line spacing and paddings (Orange-OpenSource/ouds-ios#594)
- Font composite tokens and typography
- PostScript rules for typographies
- `font` composite semantic tokens
- View modifiers for typography 
- `font` composite raw tokens
- Keyboard focus and VoiceOver focus issue on chip component (Orange-OpenSource/ouds-ios#914)
- `outlined` default value for `radio item` component

## [0.21.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.20.0...0.21.0) - 2025-11-05

### Added

- Add umbrella Swift Package product to wrap all others (Orange-OpenSource/ouds-ios#1117)
- GitHub Actions workflow to move the SNAPSHOT tag
- Display in standard ouput information message about tokens libraries versions in use
- Support for `visionOS` (Orange-OpenSource/ouds-ios#1102) 
- Support for `macOS` (Orange-OpenSource/ouds-ios#1102) 
- `input tag` component (Orange-OpenSource/ouds-ios#917)
- Swift DocC tutorial (Orange-OpenSource/ouds-ios#919)

### Changed

- `github/codeql-action/upload-sarif` action for `scorecard` workflow
- `actions/upload-artifact` action from v4.6.2 to v5.0.0 for `scorecard` workflow
- `ruby/setup-ruby` action from v1.26.0 to v1.267.0 for `build-and-test` workflow 
- `SwiftLintPlugins` Swift package from v0.62.1 to v0.62.2
- `SwiftFormat` Swift package from v0.58.3 to v0.58.5
- Update `button` component to version v3.2.0 (Orange-OpenSource/ouds-ios#1034)
- Update `badge` component to version v1.2.0 (Orange-OpenSource/ouds-ios#1043)
- Reduce number of imports by using higher level Swift Package product (Orange-OpenSource/ouds-ios#1117)
- Shorten names of raw, semantic and components tokens and associated modifiers (Orange-OpenSource/ouds-ios#1030)
- Update `radio item` component to v1.3.0 (Orange-OpenSource/ouds-ios#1072)
- Update `switch item` component to v1.4.0 (Orange-OpenSource/ouds-ios#1071)
- Update `checkbox item` component to v2.3.0 (Orange-OpenSource/ouds-ios#1069)
- Provide predefined icons for `OUDSTag` components (Orange-OpenSource/ouds-ios#912)
- Update `tag` component to version 1.4 (Orange-OpenSource/ouds-ios#1037)
- Update `tag` component to version 1.3 (Orange-OpenSource/ouds-ios#945)
- Expose dimensions for pickers components (Orange-OpenSource/ouds-ios#1080)
- Update `link` component version (Orange-OpenSource/ouds-ios#1035)
- `Color` `Wireframe` raw tokens (tokens library v1.8.0) (Orange-OpenSource/ouds-ios#1070)
- `Color` `OUDS` raw tokens (tokens library v1.8.0) (Orange-OpenSource/ouds-ios#1070)
- `Opacity` semantic tokens (tokens library v1.8.0) (Orange-OpenSource/ouds-ios#1070)
- `Border` semantic tokens for `Sosh` and `Wireframe` themes (tokens library v1.8.0) (Orange-OpenSource/ouds-ios#1070)
- `Button` component tokens for `Sosh` theme (tokens library v1.8.0) (Orange-OpenSource/ouds-ios#1070)
- `Switch` component tokens for `Orange`, `Orange Business Tools` and `Sosh` themes (tokens library v1.8.0) (Orange-OpenSource/ouds-ios#1070)
- `Icon` component tokens for `Orange`, `Sosh` and `Wireframe` themes (tokens library v1.8.0) (Orange-OpenSource/ouds-ios#1070)
- `Color` semantic tokens (tokens library v1.8.0) (Orange-OpenSource/ouds-ios#1070)
- `Control item` component tokens (tokens library v1.8.0) (Orange-OpenSource/ouds-ios#1070)
- Update `text input` component to display error message if error, and display suffix/prefix even if placeholder empty (Orange-OpenSource/ouds-ios#1063)

### Removed

- `periphery` workfow on GitHub Actions

### Fixed

- Apply rounded corners for hover and pressed states of radio button and checkbox components (Orange-OpenSource/ouds-ios#1078)

## [0.20.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.19.0...0.20.0) - 2025-10-15

### Added

- `icon` component tokens
- `expand link` component tokens
- `text input` component (Orange-OpenSource/ouds-ios#406)
- `body moderate` and `label moderate` typography and tokens (Orange-OpenSource/ouds-ios#1003)
- Management of `Helvetica Neue Arabic` font family (Orange-OpenSource/ouds-ios#1006)
- UIKit experimental backports for `button`, `tag`, `badge`, `horizontal divider`, `vertical divider`, `link`, `suggestion chip`, `filter chip`, `checkbox`, `checkbox indeterminate`, `checkbox item`, `radio`, `radio item`, `switch` and `switch item` components
- Apply `Helvetica Neue` font family for themes `Orange`, `Orange Inverse` and `Orange Business Tools` (Orange-OpenSource/ouds-ios#965)
- Predefined theme tuning for Orange Business and Orange France

### Changed

- `SwiftLintPlugins` Swift package from v0.61.0 to v0.62.1
- `Ruby` version from v3.3 to v3.4.7 for `build-and-test` and `periphery` workflows
- `ruby/setup-ruby` action from v1.263.0 to v1.265.0 for `build-and-test` and `periphery` workflows 
- `ossf/scorecard-action` action from v2.4.2 to v2.4.3 for `scorecard` workflow
- `actions/dependency-review-action` action from v4.7.3 to v4.8.1 for `dependency-review` workflow
- `github/codeql-action/upload-sarif` action from v3 to v4 for `scorecard` workflow
- `SwiftFormat` Swift package from v0.58.0 to v0.58.3
- `Wireframe color raw` tokens (tokens library v1.7.0) (Orange-OpenSource/ouds-ios#1031)
- `Sosh color raw` tokens (tokens library v1.7.0) (Orange-OpenSource/ouds-ios#1031)
- `Font` semantic tokens for `Sosh` theme (tokens library v1.7.0) (Orange-OpenSource/ouds-ios#1031)
- `Elevation` semantic tokens (tokens library v1.7.0) (Orange-OpenSource/ouds-ios#1031)
- `Color semantic` tokens (tokens library v1.7.0) (Orange-OpenSource/ouds-ios#1031)
- `Color raw` tokens (tokens library v1.7.0) (Orange-OpenSource/ouds-ios#1031)
- Orange brand color raw tokens (tokens library v1.7.0) (Orange-OpenSource/ouds-ios#1031)
- `Control item` component tokens (tokens library v1.7.0) (Orange-OpenSource/ouds-ios#1031)
- `Chip` component tokens (tokens library v1.7.0) (Orange-OpenSource/ouds-ios#1031)
- `Button mono` component tokens (tokens library v1.7.0) (Orange-OpenSource/ouds-ios#1031)
- Apply `Shantell Sans` font family for `Wireframe` theme instead of `Chalkboard SE` (Orange-OpenSource/ouds-ios#990)
- Icon for components catalog documentation (Orange-OpenSource/ouds-ios#1019)
- `Color` raw tokens (tokens library v1.6.0) (Orange-OpenSource/ouds-ios#991)
- `Font` semantic tokens (tokens library v1.6.0) (Orange-OpenSource/ouds-ios#991)
- `Checkbox` component tokens for `Sosh` theme (tokens library v1.6.0) (Orange-OpenSource/ouds-ios#991)
- `Dimension`, `size` and `space` semantic tokens names (tokens library v1.6.0) (Orange-OpenSource/ouds-ios#991)
- `Color` semantic tokens for `Orange`, `Orange Inverse`, `Sosh` and `Wireframe` themes (tokens library v1.6.0) (Orange-OpenSource/ouds-ios#991)
- `Color mode` semantic tokens for `Orange`, `Orange Business Tools`, `Sosh` and `Wireframe` themes (tokens library v1.6.0) (Orange-OpenSource/ouds-ios#991)
- `Switch` component tokens for `Orange`, `Orange Business Tools`, `Orange Inverse` and `Sosh themes (tokens library v1.6.0) (Orange-OpenSource/ouds-ios#991)
- `Tag input` component tokens renamed to `input tag` component tokens (tokens library v1.6.0) (Orange-OpenSource/ouds-ios#991)
- `Button` component tokens (tokens library v1.6.0) (Orange-OpenSource/ouds-ios#991)
- Migration to Xcode 26.0 (Orange-OpenSource/ouds-ios#972)
- Improve README for onboarding and newcomers (Orange-OpenSource/ouds-ios#1005)
- Improve web documentation for onboarding and newcomers (Orange-OpenSource/ouds-ios#982)
- Button component `hierarchy` property renamed to `appearance` (Orange-OpenSource/ouds-ios#969)

### Removed

- `Orange Inverse` theme (Orange-OpenSource/ouds-ios#1038)
- All color decorative tokens  (tokens library v1.7.0) (Orange-OpenSource/ouds-ios#1031)

### Fixed

- Button should be disabled if loading state (Orange-OpenSource/ouds-ios#988)

## [0.19.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.18.0...0.19.0) - 2025-09-24

### Added

- Predefined theme tunings for Orange Business and Orange France

### Changed

- Update `SwiftFormat` Swift Package from v0.57.2 to v0.58.0
- Update `ruby/setup-ruby` GitHub Actions action from v1.257.0 to v1.263.0
- Swift package `SwiftLintPlugins` from v0.60.0 to v0.60.1
- Update various GitHub Actions workflows dependencies
- Tuning of themes (like rounded corners) (Orange-OpenSource/ouds-ios#951)

### Fixed

- Button in minimal hierarchy does not handle the hover state (Orange-OpenSource/ouds-ios#942)
- Vocalisation of badge with icons (Orange-OpenSource/ouds-ios#956)
- Badge component does not have bigger sizes if text sizes is increased (Orange-OpenSource#844)

## [0.18.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.17.0...0.18.0) - 2025-09-05

### Added

- Illustrations in documentation (Orange-OpenSource/ouds-ios#666)
- Tag component (Orange-OpenSource/ouds-ios#408)

### Changed

- GitHub Actions `checkout` from v4 to v5
- Swift package `SwiftLintPlugins` from v0.59.1 to v0.60.0
- Migration to Xcode 16.4
- Color semantic tokens (Orange-OpenSource/ouds-ios#915)
- Update API to use a specific size for count and icon badge types (Orange-OpenSource/ouds-ios#855)
- Use specific size types for count and icon badges (Orange-OpenSource/ouds-ios#855)
- Structure of components and files in repository (Orange-OpenSource/ouds-ios#908)
- Update typography of the title in the chip picker component (Orange-OpenSource/ouds-ios#841)
- Chip version 1.3.0 (tokens library v1.5.0) (Orange-OpenSource/ouds-ios#906)
- Text input component tokens (tokens library v1.5.0) (Orange-OpenSource/ouds-ios#898)
- Link component tokens (tokens library v1.5.0) (Orange-OpenSource/ouds-ios#898)
- Button mono component tokens (tokens library v1.5.0) (Orange-OpenSource/ouds-ios#898)
- Button component tokens (tokens library v1.5.0) (Orange-OpenSource/ouds-ios#898)
- Button version 3.0.0 (add brand hierarchy and rounded property, update minimal variant) (Orange-OpenSource/ouds-ios#887)

### Fixed

- Voice Over vocalization for checkbox picker root item if error (Orange-OpenSource/ouds-ios#754)
- Voice Over vocalization for disabled checkbox, radio button and switch (Orange-OpenSource/ouds-ios#715)
- Icon of badge component does not resize if big texts used (Orange-OpenSource/ouds-ios#844)

## [0.17.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.16.0...0.17.0) - 2025-07-24

### Added

- Wireframe theme (Orange-OpenSource/ouds-ios#669)
- Text input component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Text area component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Select input component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Quantity input component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Tag input component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Pin code input component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Color charts for Orange Business Tools theme
- Orange Inverse theme (Orange-OpenSource/ouds-ios#828)
- Orange Business Tools theme (Orange-OpenSource/ouds-ios#821)
- Chip components (Orange-OpenSource/ouds-ios#407)
- Sosh theme (Orange-OpenSource/ouds-ios#665)
- Badge components (Orange-OpenSource/ouds-ios#514)

### Changed

- Color semantic tokens (tokens library v1.4.0) (Orange-OpenSource/ouds-ios#883)
- Border semantic tokens (tokens library v1.4.0) (Orange-OpenSource/ouds-ios#883)
- Text input component tokens (tokens library v1.4.0) (Orange-OpenSource/ouds-ios#883)
- Button component tokens (tokens library v1.4.0) (Orange-OpenSource/ouds-ios#883)
- Control item component (Orange-OpenSource/ouds-ios#875)
- Opacity semantic tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Color repository semantic tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Color mode semantic tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Space semantic tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Tag component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Link component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Chip component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Button component (Orange-OpenSource/ouds-ios#875)
- Button component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Bullet list component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Split color charts semantic tokens to dedicated provider (Orange-OpenSource/ouds-ios#856)
- Swift package `swift-docc-plugin` from v1.4.3 to v1.4.5
- Gem `fastlane` gem from v2.227.2 to v2.228.0
- Swift package `SwifFormat` from v0.56.4 to v0.57.2
- Color mode semantic tokens (tokens library v1.1.0)
- Color multiple semantic tokens (tokens library v1.1.0)

### Removed

- List item component tokens
- Input text component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Select component tokens (tokens library v1.3.0) (Orange-OpenSource/ouds-ios#875)
- Orange theme font family raw tokens

### Fixed

- Update `controlItem` component to use `controlItemBorderRadius*` tokens (Orange-OpenSource/ouds-ios#777)
- Update `switch` component to use `switchBorderRadius*` tokens (Orange-OpenSource/ouds-ios#780)

## [0.16.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.15.0...0.16.0) - 2025-07-07

### Added

- Sosh theme (Orange-OpenSource/ouds-ios#665)
- Versions of components in package
- New content-on color semantic tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- New repository color semantic tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Size semantic tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Dimension semantic tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)

### Changed

- Button component tokens (tokens library v1.2.0)
- Link component tokens (tokens library v1.2.0)
- Checkbox component tokens (tokens library v1.2.0)
- Radio button component tokens (tokens library v1.2.0)
- Button component tokens (tokens library v1.2.0)
- Tag component tokens (tokens library v1.2.0)
- Update `SwiftFormat` Swift Package from v0.56.2 to v0.56.4
- Optional accessibility identifiers for items of radio picker and checkbox picker components
- Switch component tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Checkbox component tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Control item component tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Link component tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Tag component tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Chip component tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Badge component tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Color semantic tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Space semantic tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Border semantic tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Size semantic tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Elevation semantic tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Color raw tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Dimension raw tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)
- Update the names and the order of the divider colors (Orange-OpenSource/ouds-ios#712)  
- In low power mode, stop animations of loading button (Orange-OpenSource/ouds-ios#661)
- Improve documentation of components by adding component versions

### Removed

- Elevation multiple semantic tokens (tokens library v1.1.0) (Orange-OpenSource/ouds-ios#664)

### Fixed

- Divider in component should not increase the size of this component (Orange-OpenSource/ouds-ios#525)
- Background color in pressed and hover states for Radio button and Checkbox components (Orange-OpenSource/ouds-ios#720)  
- Change color of indicator and borders in high contrast mode (light scheme) for radio and checkbox components (Orange-OpenSource/ouds-ios#645)
- Change color of button loader in high contrast light mode (Orange-OpenSource/ouds-ios#437)

## [0.15.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.14.0...0.15.0) - 2025-05-28

### Added

- API and tools to check contrast ratio of colors (#656)

### Changed

- [Tool] Update `SwiftFormat` SwiftPackage pod from v0.56.1 to v0.56.2
- Debug warnings for link and button components for WCAG 2.1 3:1 and 4.5:1 ratios on colored surface (Orange-OpenSource/ouds-ios#656)
- Debug warnings for link and button components for WCAG 2.1 3:1 and 4.5:1 ratios on colored surface (#656)

### Fixed

- Set border as inner stroke (#680)
- Bad wording key for accessibility label of switch item (#642)
- Missing accessibility hint for switch (#642)
- Missing token `colorBorderMuted` (#643)

## [0.14.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.13.0...0.14.0) - 2024-04-29

### Added

- [Library] Checkbox picker component ([#587](https://github.com/Orange-OpenSource/ouds-ios/issues/587))
- [Library] Switch component ([#405](https://github.com/Orange-OpenSource/ouds-ios/issues/405))
- [Tool] New system to generate, build ad upload documentation ([#628](https://github.com/Orange-OpenSource/ouds-ios/issues/628))
- [Library] Add divider component ([#511](https://github.com/Orange-OpenSource/ouds-ios/issues/511))
- [Library] Radio picker component ([#586](https://github.com/Orange-OpenSource/ouds-ios/issues/586))
- [Library] Let control-item-based component flip the icons programatically or not ([#556](https://github.com/Orange-OpenSource/ouds-ios/issues/556))

### Changed

- [Tool] Update `SwiftLint` pod from v0.59.0 to v0.59.1 ([#616](https://github.com/Orange-OpenSource/ouds-ios/pull/616))
- [Tool] Update `json` RubyGem from v2.10.2 to v2.11.3 ([#630](https://github.com/Orange-OpenSource/ouds-ios/pull/630))
- [DemoApp] Update components configuration section ([#637](https://github.com/Orange-OpenSource/ouds-ios/issues/637))
- [DemoApp] Update wording keys ([#623](https://github.com/Orange-OpenSource/ouds-ios/issues/623))
- [DesignToolbox] Udpate component illustrations ([#618](https://github.com/Orange-OpenSource/ouds-ios/issues/618))
- [DesignToolbox] Update configuration section to group content edition in a same group ([#637](https://github.com/Orange-OpenSource/ouds-ios/issues/637))
- [DesignToolbox] Udpate language translations ([#622](https://github.com/Orange-OpenSource/ouds-ios/issues/622))
- [Tool] Fix Gitleaks configuration file and update documentation about version in use
- [Library] Renaming of API ([#608](https://github.com/Orange-OpenSource/ouds-ios/issues/608))
- [DesignToolbox] Order of OCHAcomponents and tokens in design toolbox component page ([#585](https://github.com/Orange-OpenSource/ouds-ios/issues/585))
- [Library] Default hierarchy and style for button component ([#609](https://github.com/Orange-OpenSource/ouds-ios/issues/609))
- [DesignToolbox] Rename checkbox and radio button entries ([#584](https://github.com/Orange-OpenSource/ouds-ios/issues/584))
- [DesignToolbox] Rename the radio buton component ([#583](https://github.com/Orange-OpenSource/ouds-ios/issues/583))
- [Tool] Update `fastlane` gem from v2.227.0 to v2.227.1
- [Tool] Update `SwiftLint` pod from v0.58.2 to v0.59.0

### Removed

- [Library] Partial implementation of inverse theme

### Fixed

- [DesignToolbox] Fixed code samples for disabled cases of components
- [DesignToolbox] Name of layouts for control item components ([#588](https://github.com/Orange-OpenSource/ouds-ios/issues/588))
- [DesignToolbox] Add illustration for link component in RTL mode checkbox and radio button entries ([#555](https://github.com/Orange-OpenSource/ouds-ios/issues/555))

## [0.13.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.12.0...0.13.0) - 2025-04-11

### Added

- [Library] Raw and semantic tokens for color mode ([#599](https://github.com/Orange-OpenSource/ouds-ios/issues/599))
- [DesignToolbox] Add demo screen of the OUDSColoredSurface component ([#521](https://github.com/Orange-OpenSource/ouds-ios/issues/521))
- [Library] Raw and semantic tokens for color mode ([#599](https://github.com/Orange-OpenSource/ouds-ios/issues/599))
- [DesignToolbox] Add demo screen of the OUDSColoredSurface component ([#521](https://github.com/Orange-OpenSource/ouds-ios/issues/521))
- [Library] `Divider` component tokens (tokens library v0.9.0)
- [Library] `dimension1250` raw token of dimension (tokens library v0.9.0)
- [Library] Support of arabic language ([#552](https://github.com/Orange-OpenSource/ouds-ios/issues/552))
- [DesignToolbox] Support of arabic language ([#552](https://github.com/Orange-OpenSource/ouds-ios/issues/552))

### Changed

- [Tool] Migration to Xcode 16.3 ([#580](https://github.com/Orange-OpenSource/ouds-ios/issues/580))
- [Library] Update the OUDSColoredSurface to fix color available ([#521](https://github.com/Orange-OpenSource/ouds-ios/issues/521))
- [Library] Update the OUDSColoredSurface component to fix color available ([#521](https://github.com/Orange-OpenSource/ouds-ios/issues/521))
- [Tool] Migration to Xcode 16.3 ([#580](https://github.com/Orange-OpenSource/ouds-ios/issues/580))
- [Library] Update the OUDSColoredSurface to fix color available ([#521](https://github.com/Orange-OpenSource/ouds-ios/issues/521))
- [Tool] Remove dead code and add `periphery` in CI/CD pipes
- [Library] Tag component token (tokens library v0.11.0)
- [Library] Chip component token (tokens library v0.11.0)
- [Library] Color semantic tokens (tokens library v0.10.0)
- [Library] Control item component tokens (tokens library v0.10.0)
- [Library] New public API to use less color scheme to apply elevation and colors ([#146](https://github.com/Orange-OpenSource/ouds-ios/issues/146)) 
- [Library] `BulletList` component tokens (tokens library v0.9.0)
- [Library] `Chip` component tokens (tokens library v0.9.0)
- [Library] Remove UI test cases on colored surface for radio button and checkbox ([#523](https://github.com/Orange-OpenSource/ouds-ios/issues/523)) 
- [Library] Rafactor the interal interation state used by radio and checkbox components ([#560](https://github.com/Orange-OpenSource/ouds-ios/issues/560)) 
- [Library] Font family, font weight semantic tokens (tokens library v0.8.0) ([#529](https://github.com/Orange-OpenSource/ouds-ios/issues/529))
- [Library] Switch component tokens (tokens library v0.8.0) ([#529](https://github.com/Orange-OpenSource/ouds-ios/issues/529))
- [Library] Color semantic tokens (tokens library v0.8.0) ([#529](https://github.com/Orange-OpenSource/ouds-ios/issues/529))
- [Library] Control item component tokens (tokens library v0.8.0) ([#529](https://github.com/Orange-OpenSource/ouds-ios/issues/529))
- [Tool] Change name of IPA file to upload to store portal

### Removed

- [Library] Chip component token `chipColorBorderEnabled` (tokens library v0.11.0)
- [Library] Color semantic tokens `colorRepositoryOpacityBlackSoft{Light|Dark}` (tokens library v0.10.0)

### Fixed

- [Library] Font composite semantic token `typeLabelDefaultXLarge` ([#590](https://github.com/Orange-OpenSource/ouds-ios/issues/590))
- [Library] Remove extra padding in `ControlItem` ([#572](https://github.com/Orange-OpenSource/ouds-ios/issues/572))
- [Library] Adjust vertical alignment of text labels according to their height in ContolItem ([#550](https://github.com/Orange-OpenSource/ouds-ios/issues/550))
- [Library] Add accessibility label to vocalize the IconOnly button style ([#460](https://github.com/Orange-OpenSource/ouds-ios/issues/460))
- [Library] Chevron for link component pointing to bad direction in RTL mode ([#557](https://github.com/Orange-OpenSource/ouds-ios/issues/557))
- [Library] Remove divider if outline effect is active in RadioItem component ([#564](https://github.com/Orange-OpenSource/ouds-ios/issues/564))
- [DesignToolbox] In RTL mode code sample text not aligned on the left ([#554](https://github.com/Orange-OpenSource/ouds-ios/issues/554))
- [DesignToolbox] Chevron for navigation link pointing to bad direction in RTL mode ([#553](https://github.com/Orange-OpenSource/ouds-ios/issues/553))
- [DesignToolbox] Broken wording in radio button page
- [DesignToolbox] Update Checkbox and Radio button assets on the screen of component list ([#519](https://github.com/Orange-OpenSource/ouds-ios/issues/519))

## [0.12.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.11.0...0.12.0) - 2025-03-20

### Added

- [Library] Radio button component ([#266](https://github.com/Orange-OpenSource/ouds-ios/issues/266))
- [Library] `RadioButton` component tokens (tokens library v0.7.0)
- [Library] Checkbox component ([#264](https://github.com/Orange-OpenSource/ouds-ios/issues/264))
- [Library] `colorDecorativeNeutral*` color semantic tokens (tokens library v0.6.1)

### Changed

- [Tool] Migration to Xcode 16.2 ([#258](https://github.com/Orange-OpenSource/ouds-ios/issues/258))
- [Tool] Update `SwiftLint` pod from v0.58.1 to v0.58.2
- [Tool] Update `fastlane` gem from v2.226.0 to v2.227.0
- [Library] Split checkbox component API for two-values and three-values states ([#497](https://github.com/Orange-OpenSource/ouds-ios/issues/497))
- [Library] Rename *selector* to *indicator* for control item absed components ([#496](https://github.com/Orange-OpenSource/ouds-ios/issues/496))
- [Library] Checkbox component v2 ([#486](https://github.com/Orange-OpenSource/ouds-ios/issues/486))
- [Library] Group components by category in documentation ([#484](https://github.com/Orange-OpenSource/ouds-ios/issues/484))
- [Tool] Update `json` RubyGem from 2.9.0 to 2.10.1
- [Tool] Update `SwiftFormat/CLI` pod from v0.55.3 to v0.55.5
- [Tool] Update `SwiftLint` pod from v0.57.1 to v0.58.1
- [Library] `Color` semantic tokens (tokens library v0.6.1)
- [Library] `Badge`, `Chip` component tokens (tokens library v0.6.1)
- [Library] Initialization of component tokens providers
- [Library] Initialization of themes

### Removed

- [Library] Breadcrumb component tokens

### Fixed

- [DesignToolbox] Checkbox item displaying devider by default and should not ([#502](https://github.com/Orange-OpenSource/ouds-ios/issues/502))
- [Library] Add `spaceRowGap` token between texts in `ControlItem` ([#499](https://github.com/Orange-OpenSource/ouds-ios/issues/499))
- [Library] A11Y improvements for checkbox ([#488](https://github.com/Orange-OpenSource/ouds-ios/issues/488))
- [DesignToolbox] Miscellaneous improvements ([#479](https://github.com/Orange-OpenSource/ouds-ios/issues/479))
- [Library] Fixes for checkbox component ([#477](https://github.com/Orange-OpenSource/ouds-ios/issues/477))
- [Library] Fix radius on button ([#472](https://github.com/Orange-OpenSource/ouds-ios/issues/472))

### Security

- [Tool] Update `json` RubyGem from 2.10.1 to 2.10.2 (CVE-2025-27788) ([#500](https://github.com/Orange-OpenSource/ouds-ios/pull/500))
- [Tool] Update `uri` RubyGem to 1.0.3 (CVE-2025-27221) ([#6](https://github.com/Orange-OpenSource/ouds-ios/security/dependabot/6))

## [0.11.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.10.0...0.11.0) - 2025-02-20

### Added

- [DesignToolbox] French support
- [Library] `ControlItem` component tokens (tokens library v0.6.0)
- [Tool] Upload the IPA of DesignToolbox to the publication store ([#451](https://github.com/Orange-OpenSource/ouds-ios/issues/451))
- [Tool] Add with a script the token library version in documentation and Design Toolbox ([#425](https://github.com/Orange-OpenSource/ouds-ios/issues/425))
- [DesignToolbox] Add text field in component configuration to customize text ([#436](https://github.com/Orange-OpenSource/ouds-ios/issues/436))
- [Library] Link component ([#400](https://github.com/Orange-OpenSource/ouds-ios/issues/400))

### Changed

- [Tool] Move from XCTest to Swift Testing framework ([#340](https://github.com/Orange-OpenSource/ouds-ios/issues/340))
- [Tool] Add SwiftPolyglot in CI/CD to check missing localizables ([#454](https://github.com/Orange-OpenSource/ouds-ios/issues/454))
- [Tool] Move legacy Localizable.strings file to new Apple strings catalogs ([#454](https://github.com/Orange-OpenSource/ouds-ios/issues/454))
- [Tool] Change precision and perception of UI tests to make them pass on Apple Silicon SoC ([#305](https://github.com/Orange-OpenSource/ouds-ios/issues/305))
- [DesignToolbox] Reorganise snapshots files for tests of tokens ([#432](https://github.com/Orange-OpenSource/ouds-ios/issues/432))
- [Library] Apply new naming conventions ([#453](https://github.com/Orange-OpenSource/ouds-ios/issues/453))
- [Library] `Badge`, `Breadcrumb`, `BulletList`, `Button`, `Checkbox`, `InputText`, `Link`, `Skeleton`, `Switch` component tokens (tokens library v0.6.0)

## [0.10.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.9.0...0.10.0) - 2025-01-30

### Added

- [Library] Checkbox and radio button component tokens ([#421](https://github.com/Orange-OpenSource/ouds-ios/issues/421))
- [Library] Badge component tokens (partial implementation) ([#420](https://github.com/Orange-OpenSource/ouds-ios/issues/420))
- [Library] Input text component tokens ([#418](https://github.com/Orange-OpenSource/ouds-ios/issues/418))
- [Library] Bullet list component tokens ([#417](https://github.com/Orange-OpenSource/ouds-ios/issues/417))
- [Library] Breadcrumb component tokens ([#416](https://github.com/Orange-OpenSource/ouds-ios/issues/416))
- [Library] Chip component tokens ([#415](https://github.com/Orange-OpenSource/ouds-ios/issues/415))
- [Library] List item component tokens ([#414](https://github.com/Orange-OpenSource/ouds-ios/issues/414))
- [Library] Switch component tokens ([#412](https://github.com/Orange-OpenSource/ouds-ios/issues/412))
- [Library] Color semantic tokens `colorRepositoryOpacityBlack{High,Soft}*`, `colorRepositoryOpacityWhiteMedium*`, `colorRepositoryPositiveHighDark*` (token library v0.3.0)
- [Library] Button component ([#159](https://github.com/Orange-OpenSource/ouds-ios/issues/159))
- [Library] Apply letter spacing in typography ([#347](https://github.com/Orange-OpenSource/ouds-ios/issues/347))
- [Library] Apply line height in typography ([#348](https://github.com/Orange-OpenSource/ouds-ios/issues/348))
- [Library] Tag component tokens ([#390](https://github.com/Orange-OpenSource/ouds-ios/issues/390))
- [Library] Skeleton component tokens ([#388](https://github.com/Orange-OpenSource/ouds-ios/issues/388))
- [Library] Select component tokens ([#386](https://github.com/Orange-OpenSource/ouds-ios/issues/386))
- [Library] Link component tokens ([#384](https://github.com/Orange-OpenSource/ouds-ios/issues/384))

### Changed

- [Library] Value for color raw token `colorFunctionalScarlet600` (token library v0.4.0)
- [Library] Value for `colorRepositoryOpacityBlackMedium*` (token library v0.3.0)
- [Library] Rename button component token `buttonSizeMaxHeight` to `buttonSizeMaxHeightIconOnly` (token library v0.3.0)
- [Library] Rename color semantic tokens `colorChartFunctionalInformation*` to `colorChartFunctionalInfo*` (token library v0.3.0)
- [DesignToolbox] Rename demo app "Showcase" to "DesignToolbox" ([#85](https://github.com/Orange-OpenSource/ouds-ios/issues/85))
- [DesignToolbox] Update size screen ([#284](https://github.com/Orange-OpenSource/ouds-ios/issues/284))
- [Library] Change stroke style for `BorderModifier`
- [DesignToolbox] Update colors and some refactoring ([#354](https://github.com/Orange-OpenSource/ouds-ios/issues/354))
- [Library] Theme initialization flow ([#393](https://github.com/Orange-OpenSource/ouds-ios/issues/393))

### Fixed

- [DesignToolbox] Add missing illustrations for Button screen ([#403](https://github.com/Orange-OpenSource/ouds-ios/issues/403))

## [0.9.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.8.0...0.9.0) - 2025-01-09

### Added

- [Library] Button component tokens (tokenator *20250109124012*)
- [Library] Size semantic tokens `sizeIconWithLabelMediumSizeXs` and `sizeIconWithLabelSmallSizeXs`
- [Library] Color semantic tokens `colorOpacityLowest*`, `colorOpacityLower*`, `colorChartBorder*` and `colorChartBorderContrast*`

### Changed

- [Library] Rename color semantic tokens `colorContentOnStatusEmphasizedNeutral*` to `colorContentOnStatusEmphasizedAlt*`
- [Library] Rename color semantic tokens `colorOpacityInvisibleBlack*` to `colorOpacityTransparent*`
- [Library] Update color tokens and size tokens (tokenator *20250108083200*, tokens *v24.12.17*, tokens *v24.12.18*)
- [Library] Add details about API versions in documentation ([#374](https://github.com/Orange-OpenSource/ouds-ios/issues/374)) 
- [DesignToolbox] Update show code text ([#361](https://github.com/Orange-OpenSource/ouds-ios/issues/361))

### Removed

- [Library] `colorOpacityInvisibleWhite*`, `colorContentOnActionNegative*` color semantic tokens

## [0.8.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.7.0...0.8.0) - 2024-12-18

### Added

- [Library] New architecture with tokens provider ([#79](https://github.com/Orange-OpenSource/ouds-ios/issues/79))
- [DesignToolbox] Prepare new architecture to add components illustration ([#328](https://github.com/Orange-OpenSource/ouds-ios/issues/328))

### Changed

- [Tool] Update `net-http` gem from 0.5.0 to 0.6.0
- [Tool] Update `SwiftLint` pod from v0.57.0 to v0.57.1
- [Tool] Update `SwiftFormat/CLI` pod from v0.54.6 to v0.55.3
- [Tool] Update `fastlane` gem from v2.225.0 to v2.226.0
- [Library] Update `FontSemanticTokens` (tokenator *20241213075501*)
- [Library] Update `FontSemanticTokens` (tokenator *20241211115813*)
- [Library] Update `FontRawTokens` (tokenator *20241211101443*)
- [Tool] Migrate from `xcode_install` to `xcodes` in Fastfile, freeze Xcode version (16.0)
- [Library] Rename `Typography*` tokens and elements to `Font*` ([#322](https://github.com/Orange-OpenSource/ouds-ios/issues/322))
- [Library] Update `ColorSemanticTokens` (tokenator *20241204111709*)
- [Library] Update `SpaceSemanticTokens` (tokenator *20241204110127*)
- [Library] Rename `opacityTransparent` opacity semantic token to `opacityInvisible`
- [Library] Update `OpacitySemanticTokens` and `OpacityRawTokens` tokens (tokenator *20241204110957*)
- [Library] Update `OrangeBrandColorRawTokens` tokens (tokenator *20241204111119*)
- [Library] Update `SizeSemanticTokens` tokens (tokenator *20241204110236*)
- [Library] Rename any `sizeIcon**` size semantic tokens applying "T-shirt sizes" template
- [Library] Update `ElevationSemanticTokens` and `ColorRawTokens` tokens (tokenator *20241204111249*)
- [Library] Rename any `colorTransparent*` color semantic tokens to `colorOpacity*`
- [DesignToolbox] Reactor UI test to use theme in environment ([#299](https://github.com/Orange-OpenSource/ouds-ios/issues/299))

### Removed

- [Library] Font raw tokens `fontFamilyBrandDefault`, `fontFamilyBrandTV`, `fontFamilySystemArial`, `fontFamilySystemHelvetica`, `fontFamilySystemNotoSans`, `fontFamilySystemSFPro`, `fontFamilySystemRoboto`, `fontFamilyMonospaceMonaco`, `fontFamilyMonospaceCourierNew`, `fontFamilySystemArial`
- [Library] Space semantic tokens `*WithIcon*`, `*WithArrow*` 
- [Library] Elevation semantic tokens `elevationBlurOverlayDefault`, `elevationBlurOverlayEmphasized`, `elevationXOverlayDefault`, `elevationXOverlayEmphasized`, `elevationYOverlayDefault`, `elevationYOverlayEmphasized`, `elevationColorOverlayDefaultLight`, `elevationColorOverlayEmphasizedLight`, `elevationColorOverlayDefaultDark`, `elevationColorOverlayEmphasizedDark`

## [0.7.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.6.0...0.7.0) - 2024-11-29

### Added

- [DesignToolbox] Add code sample for tokens usages in token pages ([#283](https://github.com/Orange-OpenSource/ouds-ios/issues/283))
- [Library] Color some new semantic tokens `colorContentStatus*`,  `colorContentOnBrand*`, `colorContentOnStatus*`, `colorGradient*`, `colorBorder*`, `colorContentOnAction*`
- [Tool] Add UI tests in CI/CD pipelines ([#298](https://github.com/Orange-OpenSource/ouds-ios/issues/298))
- [DesignToolbox] Add more UI tests on demo app ([#154](https://github.com/Orange-OpenSource/ouds-ios/issues/154))

### Changed

- [DesignToolbox] Update space tokens screen ([#275](https://github.com/Orange-OpenSource/ouds-ios/issues/275))
- [Library] Update `BorderRawTokens` and `BorderSemanticTokens` tokens (tokenator *20241204110708*)
- [Library] Update `GridSemanticTokens` tokens (tokenator *20241129080807*)
- [Library] Types `GridExtraCompactSemanticToken`, `GridCompactSemanticToken` and `GridRegularSemanticToken` replaced by `GridSemanticToken` to make tokenator updates integration easier 
- [Library] Update `GridRawTokens` tokens (tokenator *20241128161629*)
- [DesignToolbox] Update color tokens screen 
- [Library] Update `ColorSemanticTokens` tokens (tokenator *20241127112301*)
- [Library] Update `SpaceSemanticTokens` tokens (tokenator *20241127074206*)
- [Library] Update `SizeSemanticTokens` with rename of tokens (tokenator *20241126134156*)
- [Library] Update `ElevationSemanticTokens` (tokenator *20241126120657*)
- [Library] Improve Multiple-based objects for tokenator values integration ([#279](https://github.com/Orange-OpenSource/ouds-ios/issues/279))
- [Tool] Use `macos-15` runner for GitHub Actions builds ([#296](https://github.com/Orange-OpenSource/ouds-ios/issues/296))

### Removed

- [Library] Grid semantic tokens `gridExtraCompactColumnCount`, `gridCompactColumnCount` and `gridRegularColumnCount`
- [Library] Grid raw tokens `gridMargin900`
- [Library] Color semantic tokens `colorContentOnBg*`, `colorBorderOnBg*`, `colorBorderStatus*`, some `colorAction*OnBg*`, `colorDecorative{Primary,Secondary,Tertiary}`, `colorAlwaysOnBg*`, `colorBgBrand{Secondary,Tertiary}`, `colorContentBrand{Secondary,Tertiary}`, `colorBorderBrand{Secondary,Tertiary}`, `colorContentStatusAccent`, ...
- [Library] Some space semantic tokens type aliases to help tokenator job (`SpacePaddingInlineSemanticToken`, `SpacePaddingBlockSemanticToken`, `SpaceGapInlineSemanticToken`, `SpaceGapStackSemanticToken`)
- [Library] All dimension semantic tokens ([#308](https://github.com/Orange-OpenSource/ouds-ios/issues/308))

### Fixed

- [DesignToolbox] Fix VoiceOver issue with element grouping in presentation tokens and update accessibility statement ([#212](https://github.com/Orange-OpenSource/ouds-ios/issues/285))
- [Library] Warning issues for DocC catalogs ([#293](https://github.com/Orange-OpenSource/ouds-ios/issues/293))

## [0.6.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.5.0...0.6.0) - 2024-11-15

### Added

- [DesignToolbox] Update color screen to add a border on color illustration square ([#280](https://github.com/Orange-OpenSource/ouds-ios/issues/280))
- [DesignToolbox] Add grid tokens screen in demo app ([#151](https://github.com/Orange-OpenSource/ouds-ios/issues/151))
- [Tool] GitHub Action to run SwiftLint for *main* and *develop* branches

### Changed

- [Tool] Update `net-http` gem from 0.4.1 to 0.5.0 ([#286](https://github.com/Orange-OpenSource/ouds-ios/issues/286))
- [Tool] Update `cocoapods` gem from 1.15.2 to 1.16.2 ([#286](https://github.com/Orange-OpenSource/ouds-ios/issues/286))
- [Tool] Update `json` gem from 2.7.2 to 2.8.2 ([#286](https://github.com/Orange-OpenSource/ouds-ios/issues/286))
- [Tool] Update `swiftformat/cli` from 0.54.3 to 0.54.6 ([#286](https://github.com/Orange-OpenSource/ouds-ios/issues/286))
- [Tool] Update `Fastlane` from 2.223.1 to 2.225.0 ([#286](https://github.com/Orange-OpenSource/ouds-ios/issues/286))
- [DesignToolbox] Update accessibility statement usage and instructions ([#278](https://github.com/Orange-OpenSource/ouds-ios/issues/278))

### Fixed

- [DesignToolbox] Add missing accessibility label for images ([#212](https://github.com/Orange-OpenSource/ouds-ios/issues/212))
- [DesignToolbox] Fix text sizes when dynamic type is used (a11y) ([#247](https://github.com/Orange-OpenSource/ouds-ios/issues/247))

## [0.5.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.4.1...0.5.0) - 2024-10-31

### Added

- [DesignToolbox] App icons for debug, alpha, beta and production releases ([#140](https://github.com/Orange-OpenSource/ouds-ios/issues/140))
- [Tool] GitHub Actions workflow for CI/CD ([#256](https://github.com/Orange-OpenSource/ouds-ios/issues/256))
- [DesignToolbox] Add new tokens in size tokens page ([#245](https://github.com/Orange-OpenSource/ouds-ios/issues/245))
- [Library] Semantic token `borderWidthFocusInset` (value of `borderWidth100`) ([#207](https://github.com/Orange-OpenSource/ouds-ios/issues/207), [#241](https://github.com/Orange-OpenSource/ouds-ios/issues/241))
- [Library] Semantic token `fontWeightCode` ([#242](https://github.com/Orange-OpenSource/ouds-ios/issues/242))
- [DesignToolbox] Update space tokens screen with all categories ([#178](https://github.com/Orange-OpenSource/ouds-ios/issues/178))

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

- [DesignToolbox] Update typography screen to use right color on token name ([#213](https://github.com/Orange-OpenSource/ouds-ios/issues/213))
- [DesignToolbox] Remove duplicated section in color page for content on background values ([#236](https://github.com/Orange-OpenSource/ouds-ios/issues/236))
- [DesignToolbox] Hide from Voice Over decorative image in theme selector (a11y)

### Security

- [Tool] Move to Ruby 3.3.5 to fix Dependabot alert about *REXML ReDoS vulnerability* (CVE-2024-49761) ([#5](https://github.com/Orange-OpenSource/ouds-ios/security/dependabot/5))

## [0.4.1](https://github.com/Orange-OpenSource/ouds-ios/compare/0.4.0...0.4.1) - 2024-10-21

### Fixed

- [DesignToolbox] App crash on color token page opening ([#215](https://github.com/Orange-OpenSource/ouds-ios/issues/215))

## [0.4.0](https://github.com/Orange-OpenSource/ouds-ios/compare/0.3.0...0.4.0) - 2024-10-18

### Added

- [DesignToolbox] Update opacity screen with new design ([#200](https://github.com/Orange-OpenSource/ouds-ios/issues/200))
- [DesignToolbox] Add color tokens screen in demo app ([#152](https://github.com/Orange-OpenSource/ouds-ios/issues/152))
- [Library] Add semantic tokens `spacePaddingInlineTallest`, `spacePaddingBlockTallest`, `spaceColumnGapTaller`, `spaceColumnGapWithArrowShortest`, `spaceRowGapShortest` (Figjam final synchronization of October 16th)
- [Library] Add semantic color tokens ([#124](https://github.com/Orange-OpenSource/ouds-ios/issues/124))
- [DesignToolbox] Fix some design issues and mutualize some UI elements ([#189](https://github.com/Orange-OpenSource/ouds-ios/issues/189))
- [DesignToolbox] Add sizing tokens screen in demo app ([#150](https://github.com/Orange-OpenSource/ouds-ios/issues/150))
- [DesignToolbox] Add spacing tokens screen in demo app ([#149](https://github.com/Orange-OpenSource/ouds-ios/issues/149))
- [Library] Add color semantic tokens `colorContentTransparentDefault`, `colorBorderTransparentDefault` and `colorBackgroundTransparentDefault` (October 8th) ([#177](https://github.com/Orange-OpenSource/ouds-ios/issues/177))
- [DesignToolbox] On opacity screen, add a border around the view showing the opacity ([#157](https://github.com/Orange-OpenSource/ouds-ios/issues/157))

### Changed

- [Library] Update of semantic typography tokens (Figjam final synchronization of October 16th)
- [Library] Update of semantic grid tokens `gridExtraCompactColumnCount`, `gridCompactColumnGap`, `gridRegularColumnGap` (Figjam final synchronization of October 16th)
- [Library] Update of semantic elevation token `elevationStickyNavigationScrolled` (Figjam final synchronization of October 16th)
- [Library] Update of semantic color tokens, semantic sizing tokens (Figjam final synchronization of October 16th)
- [Library/DesignToolbox] Updates SwiftLint rules, fix linter warnings ([#143](https://github.com/Orange-OpenSource/ouds-ios/issues/143))
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
- [DesignToolbox] Create token section (Border, Typography, Elevation, Opacity) ([#120](https://github.com/Orange-OpenSource/ouds-ios/issues/120))
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
- [DesignToolbox] Display fake components for elevation rendering tests
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
- [DesignToolbox] Improve Fastlane alpha build notifications
- [Library] Do not store blur value in elevation semantic tokens
- [Library] Change type aliases for X and Y offsets of elevations tokens
- [Library] Update border semantic tokens values ([#106](https://github.com/Orange-OpenSource/ouds-ios/issues/106))
- [DesignToolbox] Add fake components for demo and tokens tests
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
- [DesignToolbox] Publication of comment on issues about new alpha build upload on TestFlight ([#56](https://github.com/Orange-OpenSource/ouds-ios/issues/56))
- [DesignToolbox] Distribute demo app development version ([#12](https://github.com/Orange-OpenSource/ouds-ios/issues/12)) 
- [DesignToolbox] Distribute demo app for feature validation ([#13](https://github.com/Orange-OpenSource/ouds-ios/issues/13))
- [DesignToolbox] Create the basic architecture of the demo application ([#6](https://github.com/Orange-OpenSource/ouds-ios/issues/6))
