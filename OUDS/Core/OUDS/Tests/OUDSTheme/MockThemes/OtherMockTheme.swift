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
// swiftlint:disable type_body_length
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

    override var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusInfoMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusInfoMutedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusInfoEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusAccentMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusAccentMutedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBackgroundStatusAccentEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Content - Status

    override var colorContentDefault: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentContentDefaultOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentContentMutedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentDisabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentContentDisabledOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentBrandPrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentBrandSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentBrandTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentStatusPositive: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentStatusInfo: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentStatusWarning: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentStatusNegative: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentStatusAccent: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Content - On Background

    override var colorContentOnBackgroundPrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusPositiveMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusPositiveEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusInfoMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusInfoEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusWarningMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusWarningEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusNegativeMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusNegativeEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusAccentMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusAccentedEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Border

    override var colorBorderDefault: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderBrandPrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderBrandSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderBrandTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderStatusPositive: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderStatusInfo: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderStatusWarning: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderStatusNegative: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderStatusAccent: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderOnBackgroundBrandPrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderOnBackgroundBrandSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorBorderOnBackgroundBrandTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Action

    override var colorActionSelected: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSelectedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionDisabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionDisabledOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionVisited: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionVistedOnBgEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryEnabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryEnabledOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryHover: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryHoverOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryPressed: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryPressedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryLoading: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryLoadingOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionPrimaryFocusOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryEnabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryEnabledOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryHover: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryHoverOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryPressed: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryPressedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryLoading: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryLoadingOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionSecondaryFocusOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionNegativeEnabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionNegativeHover: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionNegativePressed: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionNegativeLoading: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionNegativeFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionDisabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionDisabledOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionNegative: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryEnabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryHover: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryPressed: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryLoading: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryEnabled: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryHover: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryPressed: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryLoading: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryFocus: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Always

    override var colorAlwaysBlack: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysWhite: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysWarning: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysNegative: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysPositive: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysInfo: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysAccent: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundBlack: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundWhite: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundWarning: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundNegative: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundPositive: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundInfo: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundAccent: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Transparent

    override var colorTransparentDefault: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Elevation

    override var colorElevationRaised: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationRaisedOnBackgroundSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationRaisedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationDrag: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationDragOnBackgroundSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationDragOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayDefault: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayDefaultOnBackgroundSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayDefaultOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayEmphasizedOnBackgroundSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationOverlayEmphasizedOnBackgroundEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorElevationModal: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Decorative

    override var colorDecorativePrimary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeSecondary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeTertiary: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeBrandTertiaryMuted: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

    override var colorDecorativeBrandTertiaryEmphasized: ColorSemanticToken { Self.otherMockThemeMultipleColorTokens }

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
// swiftlint:enable type_body_length
// swiftlint:enable file_length
