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

import OUDSTokensSemantic

// swiftlint:disable required_deinit
// swiftlint:disable file_length

/// Some color semantic tokens may be not implemented, making fatalError() be triggered at `OUDSTheme` level and tests crash.
/// Thus we use another mock theme to make comparisons with `MockTheme` and ensure pverriding property of tokens is still working.
/// This case of not implemented token only happns with color tokens.  (╯° °）╯︵ ┻━┻
final class OtherMockTheme: MockTheme, @unchecked Sendable {

    static let otherMockThemeMultipleColorTokens: ColorSemanticToken = MultipleColorTokens("#FF0000")

    // MARK: Semantic token - Colors - Background

    override var colorBackgroundPrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundBrandPrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundBrandSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundBrandTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusNeutral: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusNeutralOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveMutedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusInfoMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusInfoMutedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusInfoEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningMutedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeMutedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusAccentMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusAccentMutedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusAccentEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Content - Status

    override var colorContentDefault: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentContentDefaultOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentContentMutedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentDisabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentContentDisabledOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentBrandPrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentBrandSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentBrandTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentStatusPositive: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentStatusInfo: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentStatusWarning: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentStatusNegative: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentStatusAccent: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Content - On Background

    override var colorContentOnBgPrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusPositiveMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusPositiveMutedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusPositiveEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusInfoMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusInfoMutedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusInfoEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusWarningMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusWarningMutedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusWarningEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusNegativeMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusNegativeMutedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusNegativeEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusAccentMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusAccentMutedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBgStatusAccentedEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Border

    override var colorBorderDefault: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderDefaultOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderEmphasizedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderBrandPrimaryOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderBrandPrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderBrandSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderBrandTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderStatusPositive: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderStatusInfo: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderStatusWarning: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderStatusNegative: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderStatusAccent: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderOnBgBrandPrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderOnBgBrandSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderOnBgBrandTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Action

    override var colorActionSelected: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSelectedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionDisabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionDisabledOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionVisited: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionVistedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryEnabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryEnabledOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryHover: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryHoverOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryPressed: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryPressedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryLoading: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryLoadingOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryFocusOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryEnabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryEnabledOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryHover: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryHoverOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryPressed: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryPressedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryLoading: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryLoadingOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryFocusOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionNegativeEnabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionNegativeHover: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionNegativePressed: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionNegativeLoading: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionNegativeFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionDisabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionDisabledOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionNegative: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionPrimaryEnabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionPrimaryEnabledOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionPrimaryHover: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionPrimaryHoverOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionPrimaryPressed: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionPrimaryPressedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionPrimaryLoading: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionPrimaryLoadingOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionPrimaryFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionPrimaryFocusOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionSecondaryEnabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionSecondaryEnabledOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionSecondaryHover: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionSecondaryHoverOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionSecondaryPressed: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionSecondaryPressedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionSecondaryLoading: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionSecondaryLoadingOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionSecondaryFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBgActionSecondaryFocusOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Always

    override var colorAlwaysBlack: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysWhite: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysWarning: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysNegative: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysPositive: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysInfo: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysAccent: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBgBlack: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBgWhite: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBgWarning: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBgNegative: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBgPositive: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBgInfo: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBgAccent: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Transparent

    override var colorTransparentDefault: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Elevation

    override var colorElevationRaised: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationRaisedOnBgSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationRaisedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationDrag: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationDragOnBgSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationDragOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayDefault: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayDefaultOnBgSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayDefaultOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayEmphasizedOnBgSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayEmphasizedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationModal: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Decorative

    override var colorDecorativePrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeNeutralMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeNeutralDefault: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeNeutralEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent1Muted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent1Default: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent1Emphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent2Muted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent2Default: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent2Emphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent3Muted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent3Default: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent3Emphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent4Muted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent4Default: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent4Emphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent5Muted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent5Default: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeAccent5Emphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeSkinTint100: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeSkinTint200: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeSkinTint300: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeSkinTint400: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeSkinTint500: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeSkinTint600: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeSkinTint700: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeSkinTint800: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeSkinTint900: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Chart

    override var colorChartCategoricalNeutral: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalBrand: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalPositive: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalNegative: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalTier1: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalTier2: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalTier3: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalTier4: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalTier5: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalTier6: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalTier7: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalTier8: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalTier9: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartCategoricalTier10: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint100: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint200: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint300: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint400: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint500: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint600: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint700: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint800: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint900: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint100: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint200: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint300: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint400: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint500: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint600: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint700: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint800: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint900: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint100: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint200: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint300: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint400: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint500: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint600: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint700: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint800: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint900: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint100: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint200: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint300: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint400: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint500: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint600: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint700: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint800: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint900: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint100: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint200: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint300: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint400: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint500: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint600: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint700: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint800: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint900: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }
}

// swiftlint:enable required_deinit
// swiftlint:enable file_length
