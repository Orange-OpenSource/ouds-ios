//
// Software Name: OUDS iOS
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
// 
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
// 
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Unified Design System 
//

// [File not generated with the tokenator]
// WARNING: Not synchronized with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

// swiftlint:disable missing_docs
// swiftlint:disable identifier_name
// swiftlint:disable file_length
// swiftlint:disable line_length

/// This is a group of semantic tokens for **colors** but using `MultipleColorTokens`.
///
/// In fact the `MultipleColorTokens` class will help users (i.e. developers) to handle one semantic token for color containing values for light and dark modes.
/// Because *Figma* is not able to manage pair of values for one token, and its produced JSON does not reflect this mecanism, the *tokenator* cannot provide such `MultipleColorTokens`. Thus the "real" color semantic tokens are declared in `ColorSemanticTokens` protocol and defined inside `OUDSTheme`(to be overridable then by subthemes). These tokens are updated by the *tokenator*. Then they are gathered and wrapped so as to be used easily thanks to this `ColorMultipleSemanticTokens` which must be updated manually.
///
/// In few words:
///
///         // Some color raw tokens, defined by the tokenator (in ColorRawTokens+Values.swift)
///         public static let colorDecorativeAmber100: ColorRawToken = "#FFF0CC"
///         public static let colorDecorativeAmber200: ColorRawToken = "#FFE199"
///
///         // The color semantic tokens using them
///         // declared (in ColorSemanticTokens.swift) and defined (in OUDSTheme+ColorSemanticTokens.swift) by the tokenator
///         var colorBgPrimaryLight: ColorSemanticTokens { ColorRawTokens.colorDecorativeAmber100 }
///         var colorBgPrimaryDark: ColorSemanticTokens { ColorRawTokens.colorDecorativeAmber200 }
///
///         // The 'higher level' color semantic tokens wrapping them and exposed to users
///         / declared (in this ColorMultipleSemanticTokens.swift) and defined manualy (in OUDSTheme+ColorMultipleSemanticTokens.swift)
///         var colorBgPrimary: MultipleColorTokens { MultipleColorTokens(light: colorBgPrimaryLight, dark: colorBgPrimaryDark) }
///
///         // Thus users can in their components use colorBgPrimary as defined in their design system
///         // (even if they are still able to use 'lower level' semantic tokens but it is more error-prone)
///
public protocol ColorMultipleSemanticTokens {

    // MARK: Semantic token - Colors - Background

    var colorBgPrimary: MultipleColorTokens { get }

    var colorBgSecondary: MultipleColorTokens { get }

    var colorBgTertiary: MultipleColorTokens { get }

    var colorBgEmphasized: MultipleColorTokens { get }

    var colorBgBrandPrimary: MultipleColorTokens { get }

    var colorBgBrandSecondary: MultipleColorTokens { get }

    var colorBgBrandTertiary: MultipleColorTokens { get }

    var colorBgStatusNeutral: MultipleColorTokens { get }

    var colorBgStatusNeutralOnBgEmphasized: MultipleColorTokens { get }

    var colorBgStatusPositiveMuted: MultipleColorTokens { get }

    var colorBgStatusPositiveMutedOnBgEmphasized: MultipleColorTokens { get }

    var colorBgStatusPositiveEmphasized: MultipleColorTokens { get }

    var colorBgStatusInfoMuted: MultipleColorTokens { get }

    var colorBgStatusInfoMutedOnBgEmphasized: MultipleColorTokens { get }

    var colorBgStatusInfoEmphasized: MultipleColorTokens { get }

    var colorBgStatusWarningMuted: MultipleColorTokens { get }

    var colorBgStatusWarningMutedOnBgEmphasized: MultipleColorTokens { get }

    var colorBgStatusWarningEmphasized: MultipleColorTokens { get }

    var colorBgStatusNegativeMuted: MultipleColorTokens { get }

    var colorBgStatusNegativeMutedOnBgEmphasized: MultipleColorTokens { get }

    var colorBgStatusNegativeEmphasized: MultipleColorTokens { get }

    var colorBgStatusAccentMuted: MultipleColorTokens { get }

    var colorBgStatusAccentMutedOnBgEmphasized: MultipleColorTokens { get }

    var colorBgStatusAccentEmphasized: MultipleColorTokens { get }

    // MARK: Semantic token - Colors - Content - Status

    var colorContentDefault: MultipleColorTokens { get }

    var colorContentContentDefaultOnBgEmphasized: MultipleColorTokens { get }

    var colorContentMuted: MultipleColorTokens { get }

    var colorContentContentMutedOnBgEmphasized: MultipleColorTokens { get }

    var colorContentDisabled: MultipleColorTokens { get }

    var colorContentContentDisabledOnBgEmphasized: MultipleColorTokens { get }

    var colorContentBrandPrimary: MultipleColorTokens { get }

    var colorContentBrandSecondary: MultipleColorTokens { get }

    var colorContentBrandTertiary: MultipleColorTokens { get }

    var colorContentStatusPositive: MultipleColorTokens { get }

    var colorContentStatusInfo: MultipleColorTokens { get }

    var colorContentStatusWarning: MultipleColorTokens { get }

    var colorContentStatusNegative: MultipleColorTokens { get }

    var colorContentStatusAccent: MultipleColorTokens { get }

    // MARK: Semantic token - Colors - Content - On Background

    var colorContentOnBgPrimary: MultipleColorTokens { get }

    var colorContentOnBgSecondary: MultipleColorTokens { get }

    var colorContentOnBgTertiary: MultipleColorTokens { get }

    var colorContentOnBgStatusPositiveMuted: MultipleColorTokens { get }

    var colorContentOnBgStatusPositiveMutedOnBgEmphasized: MultipleColorTokens { get }

    var colorContentOnBgStatusPositiveEmphasized: MultipleColorTokens { get }

    var colorContentOnBgStatusInfoMuted: MultipleColorTokens { get }

    var colorContentOnBgStatusInfoMutedOnBgEmphasized: MultipleColorTokens { get }

    var colorContentOnBgStatusInfoEmphasized: MultipleColorTokens { get }

    var colorContentOnBgStatusWarningMuted: MultipleColorTokens { get }

    var colorContentOnBgStatusWarningMutedOnBgEmphasized: MultipleColorTokens { get }

    var colorContentOnBgStatusWarningEmphasized: MultipleColorTokens { get }

    var colorContentOnBgStatusNegativeMuted: MultipleColorTokens { get }

    var colorContentOnBgStatusNegativeMutedOnBgEmphasized: MultipleColorTokens { get }

    var colorContentOnBgStatusNegativeEmphasized: MultipleColorTokens { get }

    var colorContentOnBgStatusAccentMuted: MultipleColorTokens { get }

    var colorContentOnBgStatusAccentMutedOnBgEmphasized: MultipleColorTokens { get }

    var colorContentOnBgStatusAccentedEmphasized: MultipleColorTokens { get }

    // MARK: Semantic token - Colors - Border

    var colorBorderDefault: MultipleColorTokens { get }

    var colorBorderDefaultOnBgEmphasized: MultipleColorTokens { get }

    var colorBorderEmphasized: MultipleColorTokens { get }

    var colorBorderEmphasizedOnBgEmphasized: MultipleColorTokens { get }

    var colorBorderFocus: MultipleColorTokens { get }

    var colorBorderBrandPrimaryOnBgEmphasized: MultipleColorTokens { get }

    var colorBorderBrandPrimary: MultipleColorTokens { get }

    var colorBorderBrandSecondary: MultipleColorTokens { get }

    var colorBorderBrandTertiary: MultipleColorTokens { get }

    var colorBorderStatusPositive: MultipleColorTokens { get }

    var colorBorderStatusInfo: MultipleColorTokens { get }

    var colorBorderStatusWarning: MultipleColorTokens { get }

    var colorBorderStatusNegative: MultipleColorTokens { get }

    var colorBorderStatusAccent: MultipleColorTokens { get }

    var colorBorderOnBgBrandPrimary: MultipleColorTokens { get }

    var colorBorderOnBgBrandSecondary: MultipleColorTokens { get }

    var colorBorderOnBgBrandTertiary: MultipleColorTokens { get }

    // MARK: Semantic token - Colors - Action

    var colorActionSelected: MultipleColorTokens { get }

    var colorActionSelectedOnBgEmphasized: MultipleColorTokens { get }

    var colorActionDisabled: MultipleColorTokens { get }

    var colorActionDisabledOnBgEmphasized: MultipleColorTokens { get }

    var colorActionVisited: MultipleColorTokens { get }

    var colorActionVistedOnBgEmphasized: MultipleColorTokens { get }

    var colorActionPrimaryEnabled: MultipleColorTokens { get }

    var colorActionPrimaryEnabledOnBgEmphasized: MultipleColorTokens { get }

    var colorActionPrimaryHover: MultipleColorTokens { get }

    var colorActionPrimaryHoverOnBgEmphasized: MultipleColorTokens { get }

    var colorActionPrimaryPressed: MultipleColorTokens { get }

    var colorActionPrimaryPressedOnBgEmphasized: MultipleColorTokens { get }

    var colorActionPrimaryLoading: MultipleColorTokens { get }

    var colorActionPrimaryLoadingOnBgEmphasized: MultipleColorTokens { get }

    var colorActionPrimaryFocus: MultipleColorTokens { get }

    var colorActionPrimaryFocusOnBgEmphasized: MultipleColorTokens { get }

    var colorActionSecondaryEnabled: MultipleColorTokens { get }

    var colorActionSecondaryEnabledOnBgEmphasized: MultipleColorTokens { get }

    var colorActionSecondaryHover: MultipleColorTokens { get }

    var colorActionSecondaryHoverOnBgEmphasized: MultipleColorTokens { get }

    var colorActionSecondaryPressed: MultipleColorTokens { get }

    var colorActionSecondaryPressedOnBgEmphasized: MultipleColorTokens { get }

    var colorActionSecondaryLoading: MultipleColorTokens { get }

    var colorActionSecondaryLoadingOnBgEmphasized: MultipleColorTokens { get }

    var colorActionSecondaryFocus: MultipleColorTokens { get }

    var colorActionSecondaryFocusOnBgEmphasized: MultipleColorTokens { get }

    var colorActionNegativeEnabled: MultipleColorTokens { get }

    var colorActionNegativeHover: MultipleColorTokens { get }

    var colorActionNegativePressed: MultipleColorTokens { get }

    var colorActionNegativeLoading: MultipleColorTokens { get }

    var colorActionNegativeFocus: MultipleColorTokens { get }

    var colorActionOnBgActionDisabled: MultipleColorTokens { get }

    var colorActionOnBgActionDisabledOnBgEmphasized: MultipleColorTokens { get }

    var colorActionOnBgActionNegative: MultipleColorTokens { get }

    var colorActionOnBgActionPrimaryEnabled: MultipleColorTokens { get }

    var colorActionOnBgActionPrimaryEnabledOnBgEmphasized: MultipleColorTokens { get }

    var colorActionOnBgActionPrimaryHover: MultipleColorTokens { get }

    var colorActionOnBgActionPrimaryHoverOnBgEmphasized: MultipleColorTokens { get }

    var colorActionOnBgActionPrimaryPressed: MultipleColorTokens { get }

    var colorActionOnBgActionPrimaryPressedOnBgEmphasized: MultipleColorTokens { get }

    var colorActionOnBgActionPrimaryLoading: MultipleColorTokens { get }

    var colorActionOnBgActionPrimaryLoadingOnBgEmphasized: MultipleColorTokens { get }

    var colorActionOnBgActionPrimaryFocus: MultipleColorTokens { get }

    var colorActionOnBgActionPrimaryFocusOnBgEmphasized: MultipleColorTokens { get }

    var colorActionOnBgActionSecondaryEnabled: MultipleColorTokens { get }

    var colorActionOnBgActionSecondaryEnabledOnBgEmphasized: MultipleColorTokens { get }

    var colorActionOnBgActionSecondaryHover: MultipleColorTokens { get }

    var colorActionOnBgActionSecondaryHoverOnBgEmphasized: MultipleColorTokens { get }

    var colorActionOnBgActionSecondaryPressed: MultipleColorTokens { get }

    var colorActionOnBgActionSecondaryPressedOnBgEmphasized: MultipleColorTokens { get }

    var colorActionOnBgActionSecondaryLoading: MultipleColorTokens { get }

    var colorActionOnBgActionSecondaryLoadingOnBgEmphasized: MultipleColorTokens { get }

    var colorActionOnBgActionSecondaryFocus: MultipleColorTokens { get }

    var colorActionOnBgActionSecondaryFocusOnBgEmphasized: MultipleColorTokens { get }

    // MARK: Semantic token - Colors - Always

    var colorAlwaysBlack: MultipleColorTokens { get }

    var colorAlwaysWhite: MultipleColorTokens { get }

    var colorAlwaysWarning: MultipleColorTokens { get }

    var colorAlwaysNegative: MultipleColorTokens { get }

    var colorAlwaysPositive: MultipleColorTokens { get }

    var colorAlwaysInfo: MultipleColorTokens { get }

    var colorAlwaysAccent: MultipleColorTokens { get }

    var colorAlwaysOnBgBlack: MultipleColorTokens { get }

    var colorAlwaysOnBgWhite: MultipleColorTokens { get }

    var colorAlwaysOnBgWarning: MultipleColorTokens { get }

    var colorAlwaysOnBgNegative: MultipleColorTokens { get }

    var colorAlwaysOnBgPositive: MultipleColorTokens { get }

    var colorAlwaysOnBgInfo: MultipleColorTokens { get }

    var colorAlwaysOnBgAccent: MultipleColorTokens { get }

    // MARK: Semantic token - Colors - Transparent

    var colorTransparentDefault: MultipleColorTokens { get }

    // MARK: Semantic token - Colors - Elevation

    var colorElevationRaised: MultipleColorTokens { get }

    var colorElevationRaisedOnBgSecondary: MultipleColorTokens { get }

    var colorElevationRaisedOnBgEmphasized: MultipleColorTokens { get }

    var colorElevationDrag: MultipleColorTokens { get }

    var colorElevationDragOnBgSecondary: MultipleColorTokens { get }

    var colorElevationDragOnBgEmphasized: MultipleColorTokens { get }

    var colorElevationOverlayDefault: MultipleColorTokens { get }

    var colorElevationOverlayDefaultOnBgSecondary: MultipleColorTokens { get }

    var colorElevationOverlayDefaultOnBgEmphasized: MultipleColorTokens { get }

    var colorElevationOverlayEmphasized: MultipleColorTokens { get }

    var colorElevationOverlayEmphasizedOnBgSecondary: MultipleColorTokens { get }

    var colorElevationOverlayEmphasizedOnBgEmphasized: MultipleColorTokens { get }

    var colorElevationModal: MultipleColorTokens { get }

    // MARK: Semantic token - Colors - Decorative

    var colorDecorativePrimary: MultipleColorTokens { get }

    var colorDecorativeSecondary: MultipleColorTokens { get }

    var colorDecorativeTertiary: MultipleColorTokens { get }

    var colorDecorativeNeutralMuted: MultipleColorTokens { get }

    var colorDecorativeNeutralDefault: MultipleColorTokens { get }

    var colorDecorativeNeutralEmphasized: MultipleColorTokens { get }

    var colorDecorativeAccent1Muted: MultipleColorTokens { get }

    var colorDecorativeAccent1Default: MultipleColorTokens { get }

    var colorDecorativeAccent1Emphasized: MultipleColorTokens { get }

    var colorDecorativeAccent2Muted: MultipleColorTokens { get }

    var colorDecorativeAccent2Default: MultipleColorTokens { get }

    var colorDecorativeAccent2Emphasized: MultipleColorTokens { get }

    var colorDecorativeAccent3Muted: MultipleColorTokens { get }

    var colorDecorativeAccent3Default: MultipleColorTokens { get }

    var colorDecorativeAccent3Emphasized: MultipleColorTokens { get }

    var colorDecorativeAccent4Muted: MultipleColorTokens { get }

    var colorDecorativeAccent4Default: MultipleColorTokens { get }

    var colorDecorativeAccent4Emphasized: MultipleColorTokens { get }

    var colorDecorativeAccent5Muted: MultipleColorTokens { get }

    var colorDecorativeAccent5Default: MultipleColorTokens { get }

    var colorDecorativeAccent5Emphasized: MultipleColorTokens { get }

    var colorDecorativeSkinTint100: MultipleColorTokens { get }

    var colorDecorativeSkinTint200: MultipleColorTokens { get }

    var colorDecorativeSkinTint300: MultipleColorTokens { get }

    var colorDecorativeSkinTint400: MultipleColorTokens { get }

    var colorDecorativeSkinTint500: MultipleColorTokens { get }

    var colorDecorativeSkinTint600: MultipleColorTokens { get }

    var colorDecorativeSkinTint700: MultipleColorTokens { get }

    var colorDecorativeSkinTint800: MultipleColorTokens { get }

    var colorDecorativeSkinTint900: MultipleColorTokens { get }

    // MARK: Semantic token - Colors - Chart

    var colorChartCategoricalNeutral: MultipleColorTokens { get }

    var colorChartCategoricalBrand: MultipleColorTokens { get }

    var colorChartCategoricalPositive: MultipleColorTokens { get }

    var colorChartCategoricalNegative: MultipleColorTokens { get }

    var colorChartCategoricalTier1: MultipleColorTokens { get }

    var colorChartCategoricalTier2: MultipleColorTokens { get }

    var colorChartCategoricalTier3: MultipleColorTokens { get }

    var colorChartCategoricalTier4: MultipleColorTokens { get }

    var colorChartCategoricalTier5: MultipleColorTokens { get }

    var colorChartCategoricalTier6: MultipleColorTokens { get }

    var colorChartCategoricalTier7: MultipleColorTokens { get }

    var colorChartCategoricalTier8: MultipleColorTokens { get }

    var colorChartCategoricalTier9: MultipleColorTokens { get }

    var colorChartCategoricalTier10: MultipleColorTokens { get }

    var colorChartSequentialAccent1Tint100: MultipleColorTokens { get }

    var colorChartSequentialAccent1Tint200: MultipleColorTokens { get }

    var colorChartSequentialAccent1Tint300: MultipleColorTokens { get }

    var colorChartSequentialAccent1Tint400: MultipleColorTokens { get }

    var colorChartSequentialAccent1Tint500: MultipleColorTokens { get }

    var colorChartSequentialAccent1Tint600: MultipleColorTokens { get }

    var colorChartSequentialAccent1Tint700: MultipleColorTokens { get }

    var colorChartSequentialAccent1Tint800: MultipleColorTokens { get }

    var colorChartSequentialAccent1Tint900: MultipleColorTokens { get }

    var colorChartSequentialAccent2Tint100: MultipleColorTokens { get }

    var colorChartSequentialAccent2Tint200: MultipleColorTokens { get }

    var colorChartSequentialAccent2Tint300: MultipleColorTokens { get }

    var colorChartSequentialAccent2Tint400: MultipleColorTokens { get }

    var colorChartSequentialAccent2Tint500: MultipleColorTokens { get }

    var colorChartSequentialAccent2Tint600: MultipleColorTokens { get }

    var colorChartSequentialAccent2Tint700: MultipleColorTokens { get }

    var colorChartSequentialAccent2Tint800: MultipleColorTokens { get }

    var colorChartSequentialAccent2Tint900: MultipleColorTokens { get }

    var colorChartSequentialAccent3Tint100: MultipleColorTokens { get }

    var colorChartSequentialAccent3Tint200: MultipleColorTokens { get }

    var colorChartSequentialAccent3Tint300: MultipleColorTokens { get }

    var colorChartSequentialAccent3Tint400: MultipleColorTokens { get }

    var colorChartSequentialAccent3Tint500: MultipleColorTokens { get }

    var colorChartSequentialAccent3Tint600: MultipleColorTokens { get }

    var colorChartSequentialAccent3Tint700: MultipleColorTokens { get }

    var colorChartSequentialAccent3Tint800: MultipleColorTokens { get }

    var colorChartSequentialAccent3Tint900: MultipleColorTokens { get }

    var colorChartSequentialAccent4Tint100: MultipleColorTokens { get }

    var colorChartSequentialAccent4Tint200: MultipleColorTokens { get }

    var colorChartSequentialAccent4Tint300: MultipleColorTokens { get }

    var colorChartSequentialAccent4Tint400: MultipleColorTokens { get }

    var colorChartSequentialAccent4Tint500: MultipleColorTokens { get }

    var colorChartSequentialAccent4Tint600: MultipleColorTokens { get }

    var colorChartSequentialAccent4Tint700: MultipleColorTokens { get }

    var colorChartSequentialAccent4Tint800: MultipleColorTokens { get }

    var colorChartSequentialAccent4Tint900: MultipleColorTokens { get }

    var colorChartSequentialAccent5Tint100: MultipleColorTokens { get }

    var colorChartSequentialAccent5Tint200: MultipleColorTokens { get }

    var colorChartSequentialAccent5Tint300: MultipleColorTokens { get }

    var colorChartSequentialAccent5Tint400: MultipleColorTokens { get }

    var colorChartSequentialAccent5Tint500: MultipleColorTokens { get }

    var colorChartSequentialAccent5Tint600: MultipleColorTokens { get }

    var colorChartSequentialAccent5Tint700: MultipleColorTokens { get }

    var colorChartSequentialAccent5Tint800: MultipleColorTokens { get }

    var colorChartSequentialAccent5Tint900: MultipleColorTokens { get }
}

// swiftlint:enable missing_docs
// swiftlint:enable identifier_name
// swiftlint:enable line_length
