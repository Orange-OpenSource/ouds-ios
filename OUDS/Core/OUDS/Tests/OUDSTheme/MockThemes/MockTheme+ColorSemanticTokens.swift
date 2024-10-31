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

    static let mockThemeMultipleColorTokens: ColorSemanticToken = MultipleColorTokens("#68489D")

    // MARK: Semantic token - Colors - Background

    override open var colorBgPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgBrandPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgBrandSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgBrandTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusNeutral: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusNeutralOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusPositiveMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusPositiveMutedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusPositiveEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusInfoMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusInfoMutedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusInfoEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusWarningMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusWarningMutedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusWarningEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusNegativeMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusNegativeMutedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusNegativeEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusAccentMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusAccentMutedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusAccentEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Content - Status

    override open var colorContentDefault: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentContentDefaultOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentContentMutedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentDisabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentContentDisabledOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentBrandPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentBrandSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentBrandTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentStatusPositive: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentStatusInfo: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentStatusWarning: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentStatusNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentStatusAccent: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Content - On Background

    override open var colorContentOnBgPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusPositiveMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusPositiveMutedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusPositiveEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusInfoMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusInfoMutedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusInfoEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusWarningMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusWarningMutedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusWarningEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusNegativeMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusNegativeMutedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusNegativeEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusAccentMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusAccentMutedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusAccentedEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Border

    override open var colorBorderDefault: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderDefaultOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderEmphasizedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderBrandPrimaryOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderBrandPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderBrandSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderBrandTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderStatusPositive: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderStatusInfo: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderStatusWarning: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderStatusNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderStatusAccent: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderOnBgBrandPrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderOnBgBrandSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorBorderOnBgBrandTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Action

    override open var colorActionSelected: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionSelectedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionDisabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionDisabledOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionVisited: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionVistedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryEnabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryEnabledOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryHover: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryHoverOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryPressed: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryPressedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryLoading: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryLoadingOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryFocusOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryEnabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryEnabledOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryHover: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryHoverOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryPressed: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryPressedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryLoading: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryLoadingOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryFocusOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionNegativeEnabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionNegativeHover: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionNegativePressed: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionNegativeLoading: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionNegativeFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionDisabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionDisabledOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryEnabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryEnabledOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryHover: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryHoverOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryPressed: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryPressedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryLoading: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryLoadingOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryFocusOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryEnabled: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryEnabledOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryHover: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryHoverOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryPressed: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryPressedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryLoading: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryLoadingOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryFocus: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryFocusOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Always

    override open var colorAlwaysBlack: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysWhite: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysWarning: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysPositive: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysInfo: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysAccent: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgBlack: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgWhite: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgWarning: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgPositive: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgInfo: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgAccent: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Transparent

    override open var colorTransparentDefault: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Elevation

    override open var colorElevationRaised: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationRaisedOnBgSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationRaisedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationDrag: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationDragOnBgSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationDragOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayDefault: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayDefaultOnBgSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayDefaultOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayEmphasizedOnBgSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayEmphasizedOnBgEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorElevationModal: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Decorative

    override open var colorDecorativePrimary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSecondary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeTertiary: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeNeutralMuted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeNeutralDefault: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeNeutralEmphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent1Muted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent1Default: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent1Emphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent2Muted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent2Default: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent2Emphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent3Muted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent3Default: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent3Emphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent4Muted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent4Default: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent4Emphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent5Muted: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent5Default: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent5Emphasized: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Chart

    override open var colorChartCategoricalNeutral: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalBrand: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalPositive: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalNegative: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier1: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier2: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier3: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier4: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier5: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier6: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier7: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier8: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier9: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier10: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint100: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint200: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint300: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint400: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint500: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint600: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint700: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint800: ColorSemanticToken { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint900: ColorSemanticToken { Self.mockThemeMultipleColorTokens }
}
