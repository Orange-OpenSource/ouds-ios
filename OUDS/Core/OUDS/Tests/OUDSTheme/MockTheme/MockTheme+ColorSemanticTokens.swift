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

import Foundation
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable file_length

extension MockTheme {

    static let mockThemeColorRawToken: ColorRawToken = "#68489D"
    static let mockThemeMultipleColorTokens: ColorSemanticToken = MultipleColorTokens(mockThemeColorRawToken)

    // MARK: Semantic token - Colors - Background

    override var colorBackgroundPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundBrandPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundBrandSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundBrandTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusNeutral: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusNeutralOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusPositiveEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusInfoMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusInfoMutedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusInfoEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusWarningEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusNegativeEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusAccentMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusAccentMutedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBackgroundStatusAccentEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Content - Status

    override var colorContentDefault: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentContentDefaultOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentContentMutedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentDisabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentContentDisabledOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentBrandPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentBrandSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentBrandTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentStatusPositive: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentStatusInfo: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentStatusWarning: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentStatusNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentStatusAccent: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Content - On Background

    override var colorContentOnBackgroundPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusPositiveMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusPositiveMutedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusPositiveEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusInfoMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusInfoMutedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusInfoEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusWarningMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusWarningMutedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusWarningEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusNegativeMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusNegativeMutedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusNegativeEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusAccentMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusAccentMutedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorContentOnBackgroundStatusAccentedEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Border

    override var colorBorderDefault: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderDefaultOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderEmphasizedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandPrimaryOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderBrandTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderStatusPositive: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderStatusInfo: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderStatusWarning: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderStatusNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderStatusAccent: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderOnBackgroundBrandPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderOnBackgroundBrandSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorBorderOnBackgroundBrandTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Action

    override var colorActionSelected: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionSelectedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionDisabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionDisabledOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionVisited: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionVistedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionPrimaryEnabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionPrimaryEnabledOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionPrimaryHover: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionPrimaryHoverOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionPrimaryPressed: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionPrimaryPressedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionPrimaryLoading: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionPrimaryLoadingOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionPrimaryFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionPrimaryFocusOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionSecondaryEnabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionSecondaryEnabledOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionSecondaryHover: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionSecondaryHoverOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionSecondaryPressed: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionSecondaryPressedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionSecondaryLoading: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionSecondaryLoadingOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionSecondaryFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionSecondaryFocusOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionNegativeEnabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionNegativeHover: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionNegativePressed: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionNegativeLoading: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionNegativeFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionDisabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionDisabledOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryEnabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryEnabledOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryHover: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryHoverOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryPressed: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryPressedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryLoading: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryLoadingOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionPrimaryFocusOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryEnabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryEnabledOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryHover: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryHoverOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryPressed: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryPressedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryLoading: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryLoadingOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorActionOnBackgroundActionSecondaryFocusOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Always

    override var colorAlwaysBlack: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysWhite: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysWarning: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysPositive: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysInfo: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysAccent: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundBlack: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundWhite: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundWarning: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundPositive: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundInfo: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorAlwaysOnBackgroundAccent: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Transparent

    override var colorTransparentDefault: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Elevation

    override var colorElevationRaised: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationRaisedOnBackgroundSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationRaisedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationDrag: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationDragOnBackgroundSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationDragOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationOverlayDefault: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationOverlayDefaultOnBackgroundSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationOverlayDefaultOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationOverlayEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationOverlayEmphasizedOnBackgroundSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationOverlayEmphasizedOnBackgroundEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorElevationModal: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Decorative

    override var colorDecorativeBrandPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeBrandPrimaryMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeBrandPrimaryEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSecondaryMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSecondaryEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeBrandTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeBrandTertiaryMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeBrandTertiaryEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeNeutralMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeNeutralDefault: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeNeutralEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent1Muted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent1Default: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent1Emphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent2Muted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent2Default: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent2Emphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent3Muted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent3Default: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent3Emphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent4Muted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent4Default: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent4Emphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent5Muted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent5Default: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeAccent5Emphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSkintTint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSkintTint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSkintTint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSkintTint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSkintTint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSkintTint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSkintTint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSkintTint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorDecorativeSkintTint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Chart

    override var colorChartCategoricalNeutral: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalBrand: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalPositive: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalTier1: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalTier2: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalTier3: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalTier4: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalTier5: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalTier6: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalTier7: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalTier8: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalTier9: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartCategoricalTier10: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent1Tint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent2Tint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent3Tint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent4Tint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override var colorChartSequentialAccent5Tint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }
}
