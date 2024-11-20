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

    static let mockThemeMultipleColorTokens = MultipleColorTokens("#68489D")
    static let mockThemeSemanticColorTokens: ColorSemanticToken = "#68489D"

    // MARK: - Multiple Semantic Color Tokens

    // MARK: Semantic token - Colors - Background

    override open var colorBgPrimary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgSecondary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgTertiary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgBrandPrimary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgBrandSecondary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgBrandTertiary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusNeutral: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusNeutralOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusPositiveMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusPositiveMutedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusPositiveEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusInfoMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusInfoMutedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusInfoEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusWarningMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusWarningMutedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusWarningEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusNegativeMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusNegativeMutedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusNegativeEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusAccentMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusAccentMutedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBgStatusAccentEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Content - Status

    override open var colorContentDefault: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentContentDefaultOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentContentMutedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentDisabled: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentContentDisabledOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentBrandPrimary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentBrandSecondary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentBrandTertiary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentStatusPositive: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentStatusInfo: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentStatusWarning: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentStatusNegative: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentStatusAccent: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Content - On Background

    override open var colorContentOnBgPrimary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgSecondary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgTertiary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusPositiveMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusPositiveMutedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusPositiveEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusInfoMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusInfoMutedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusInfoEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusWarningMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusWarningMutedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusWarningEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusNegativeMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusNegativeMutedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusNegativeEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusAccentMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusAccentMutedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorContentOnBgStatusAccentedEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Border

    override open var colorBorderDefault: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderDefaultOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderEmphasizedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderFocus: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderBrandPrimaryOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderBrandPrimary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderBrandSecondary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderBrandTertiary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderStatusPositive: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderStatusInfo: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderStatusWarning: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderStatusNegative: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderStatusAccent: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderOnBgBrandPrimary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderOnBgBrandSecondary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorBorderOnBgBrandTertiary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Action

    override open var colorActionSelected: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionSelectedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionDisabled: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionDisabledOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionVisited: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionVistedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryEnabled: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryEnabledOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryHover: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryHoverOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryPressed: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryPressedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryLoading: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryLoadingOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryFocus: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionPrimaryFocusOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryEnabled: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryEnabledOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryHover: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryHoverOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryPressed: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryPressedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryLoading: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryLoadingOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryFocus: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionSecondaryFocusOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionNegativeEnabled: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionNegativeHover: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionNegativePressed: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionNegativeLoading: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionNegativeFocus: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionDisabled: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionDisabledOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionNegative: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryEnabled: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryEnabledOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryHover: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryHoverOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryPressed: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryPressedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryLoading: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryLoadingOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryFocus: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionPrimaryFocusOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryEnabled: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryEnabledOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryHover: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryHoverOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryPressed: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryPressedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryLoading: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryLoadingOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryFocus: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorActionOnBgActionSecondaryFocusOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Always

    override open var colorAlwaysBlack: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysWhite: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysWarning: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysNegative: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysPositive: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysInfo: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysAccent: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgBlack: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgWhite: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgWarning: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgNegative: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgPositive: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgInfo: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorAlwaysOnBgAccent: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Transparent

    override open var colorTransparentDefault: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Elevation

    override open var colorElevationRaised: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationRaisedOnBgSecondary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationRaisedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationDrag: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationDragOnBgSecondary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationDragOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayDefault: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayDefaultOnBgSecondary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayDefaultOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayEmphasizedOnBgSecondary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationOverlayEmphasizedOnBgEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorElevationModal: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Decorative

    override open var colorDecorativePrimary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSecondary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeTertiary: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeNeutralMuted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeNeutralDefault: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeNeutralEmphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent1Muted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent1Default: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent1Emphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent2Muted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent2Default: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent2Emphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent3Muted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent3Default: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent3Emphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent4Muted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent4Default: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent4Emphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent5Muted: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent5Default: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeAccent5Emphasized: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint100: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint200: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint300: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint400: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint500: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint600: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint700: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint800: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorDecorativeSkinTint900: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    // MARK: Semantic token - Colors - Chart

    override open var colorChartCategoricalNeutral: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalBrand: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalPositive: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalNegative: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier1: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier2: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier3: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier4: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier5: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier6: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier7: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier8: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier9: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartCategoricalTier10: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint100: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint200: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint300: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint400: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint500: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint600: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint700: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint800: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent1Tint900: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint100: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint200: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint300: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint400: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint500: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint600: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint700: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint800: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent2Tint900: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint100: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint200: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint300: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint400: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint500: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint600: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint700: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint800: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent3Tint900: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint100: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint200: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint300: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint400: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint500: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint600: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint700: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint800: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent4Tint900: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint100: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint200: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint300: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint400: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint500: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint600: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint700: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint800: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    override open var colorChartSequentialAccent5Tint900: MultipleColorTokens { Self.mockThemeMultipleColorTokens }

    // MARK: - Color Tokens overridings

    // MARK: Semantic token - Colors - Background

    override open var colorBgPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusNeutralLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusNeutralDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusNeutralOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusNeutralOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusPositiveMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusPositiveMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusPositiveMutedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusPositiveMutedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusPositiveEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusPositiveEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusInfoMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusInfoMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusInfoMutedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusInfoMutedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusInfoEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusInfoEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusWarningMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusWarningMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusWarningMutedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusWarningMutedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusWarningEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusWarningEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusNegativeMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusNegativeMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusNegativeMutedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusNegativeMutedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusNegativeEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusNegativeEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusAccentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusAccentMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusAccentMutedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusAccentMutedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgStatusAccentEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgStatusAccentEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    // MARK: Semantic token - Colors - Content - Status

    override open var colorContentDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentContentDefaultOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentContentDefaultOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentContentMutedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentContentMutedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentContentDisabledOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentContentDisabledOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentStatusPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentStatusInfoLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusInfoDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentStatusWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentStatusNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentStatusAccentLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusAccentDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    // MARK: Semantic token - Colors - Content - On Background

    override open var colorContentOnBgPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusPositiveMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusPositiveMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusPositiveMutedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusPositiveMutedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusPositiveEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusPositiveEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusInfoMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusInfoMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusInfoMutedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusInfoMutedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusInfoEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusInfoEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusWarningMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusWarningMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusWarningMutedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusWarningMutedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusWarningEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusWarningEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusNegativeMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusNegativeMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusNegativeMutedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusNegativeMutedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusNegativeEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusNegativeEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusAccentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusAccentMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusAccentMutedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusAccentMutedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBgStatusAccentedEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBgStatusAccentedEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    // MARK: Semantic token - Colors - Border

    override open var colorBorderDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderDefaultOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderDefaultOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderEmphasizedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderEmphasizedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderBrandPrimaryOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderBrandPrimaryOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderStatusPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderStatusPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderStatusInfoLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderStatusInfoDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderStatusWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderStatusWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderStatusNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderStatusNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderStatusAccentLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderStatusAccentDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderOnBgBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderOnBgBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderOnBgBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderOnBgBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderOnBgBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderOnBgBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    // MARK: Semantic token - Colors - Action

    override open var colorActionSelectedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSelectedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSelectedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSelectedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionDisabledOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionDisabledOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionVisitedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionVisitedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionVistedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionVistedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionPrimaryEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionPrimaryEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionPrimaryEnabledOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionPrimaryEnabledOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionPrimaryHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionPrimaryHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionPrimaryHoverOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionPrimaryHoverOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionPrimaryPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionPrimaryPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionPrimaryPressedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionPrimaryPressedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionPrimaryLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionPrimaryLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionPrimaryLoadingOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionPrimaryLoadingOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionPrimaryFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionPrimaryFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionPrimaryFocusOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionPrimaryFocusOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSecondaryEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSecondaryEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSecondaryEnabledOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSecondaryEnabledOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSecondaryHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSecondaryHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSecondaryHoverOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSecondaryHoverOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSecondaryPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSecondaryPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSecondaryPressedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSecondaryPressedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSecondaryLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSecondaryLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSecondaryLoadingOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSecondaryLoadingOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSecondaryFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSecondaryFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSecondaryFocusOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSecondaryFocusOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    // MARK: Semantic token - Colors - Always

    override open var colorAlwaysBlackLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysBlackDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorAlwaysWhiteLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysWhiteDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorAlwaysWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorAlwaysNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorAlwaysPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorAlwaysInfoLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysInfoDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorAlwaysAccentLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysAccentDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    // MARK: Semantic token - Colors - Transparent

    override open var colorTransparentDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorTransparentDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    // MARK: Semantic token - Colors - Elevation

    override open var colorElevationRaisedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationRaisedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationRaisedOnBgSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationRaisedOnBgSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationRaisedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationRaisedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationDragLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationDragDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationDragOnBgSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationDragOnBgSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationDragOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationDragOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationOverlayDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationOverlayDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationOverlayDefaultOnBgSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationOverlayDefaultOnBgSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationOverlayDefaultOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationOverlayDefaultOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationOverlayEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationOverlayEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationOverlayEmphasizedOnBgSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationOverlayEmphasizedOnBgSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationOverlayEmphasizedOnBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationOverlayEmphasizedOnBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorElevationModalLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorElevationModalDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    // MARK: Semantic token - Colors - Decorative

    override open var colorDecorativePrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativePrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeNeutralMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeNeutralMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeNeutralDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeNeutralDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeNeutralEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeNeutralEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent1MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent1MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent1DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent1DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent1EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent1EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent2MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent2MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent2DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent2DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent2EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent2EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent3MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent3MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent3DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent3DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent3EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent3EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent4MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent4MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent4DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent4DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent4EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent4EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent5MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent5MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent5DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent5DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent5EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent5EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSkinTint100Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint100Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSkinTint200Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint200Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSkinTint300Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint300Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSkinTint400Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint400Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSkinTint500Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint500Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSkinTint600Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint600Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSkinTint700Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint700Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSkinTint800Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint800Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSkinTint900Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint900Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    // MARK: Semantic token - Colors - Chart

    override open var colorChartCategoricalNeutralLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalNeutralDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalBrandLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalBrandDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier1Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier1Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier2Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier2Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier3Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier3Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier4Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier4Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier5Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier5Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier6Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier6Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier7Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier7Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier8Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier8Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier9Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier9Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier10Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier10Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent1Tint100Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent1Tint100Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent1Tint200Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent1Tint200Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent1Tint300Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent1Tint300Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent1Tint400Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent1Tint400Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent1Tint500Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent1Tint500Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent1Tint600Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent1Tint600Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent1Tint700Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent1Tint700Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent1Tint800Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent1Tint800Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent1Tint900Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent1Tint900Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent2Tint100Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent2Tint100Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent2Tint200Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent2Tint200Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent2Tint300Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent2Tint300Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent2Tint400Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent2Tint400Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent2Tint500Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent2Tint500Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent2Tint600Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent2Tint600Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent2Tint700Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent2Tint700Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent2Tint800Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent2Tint800Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent2Tint900Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent2Tint900Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent3Tint100Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent3Tint100Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent3Tint200Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent3Tint200Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent3Tint300Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent3Tint300Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent3Tint400Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent3Tint400Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent3Tint500Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent3Tint500Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent3Tint600Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent3Tint600Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent3Tint700Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent3Tint700Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent3Tint800Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent3Tint800Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent3Tint900Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent3Tint900Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent4Tint100Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent4Tint100Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent4Tint200Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent4Tint200Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent4Tint300Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent4Tint300Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent4Tint400Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent4Tint400Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent4Tint500Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent4Tint500Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent4Tint600Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent4Tint600Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent4Tint700Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent4Tint700Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent4Tint800Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent4Tint800Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent4Tint900Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent4Tint900Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent5Tint100Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent5Tint100Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent5Tint200Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent5Tint200Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent5Tint300Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent5Tint300Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent5Tint400Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent5Tint400Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent5Tint500Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent5Tint500Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent5Tint600Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent5Tint600Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent5Tint700Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent5Tint700Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent5Tint800Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent5Tint800Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartSequentialAccent5Tint900Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartSequentialAccent5Tint900Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
}
