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
// swiftlint:disable type_body_length
// swiftlint:disable identifier_name

/// Some color semantic tokens may be not implemented, making fatalError() be triggered at `OUDSTheme` level and tests crash.
/// Thus we use another mock theme to make comparisons with `MockTheme` and ensure overriding property of tokens is still working.
/// This case of not implemented token only happens with color tokens.  (╯° °）╯︵ ┻━┻
final class OtherMockTheme: MockTheme, @unchecked Sendable {

    static let otherMockThemeMultipleColorSemanticTokens = MultipleColorSemanticTokens("#FF0000")
    static let otherMockThemeSemanticColorToken: ColorSemanticToken = "#00FF00"

    // MARK: - Multiple Color Tokens overridings

    // MARK: Semantic token - Colors - Background

    override var colorBgPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgSecondary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgTertiary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgBrandPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusNeutral: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusNeutralOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusPositiveMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusPositiveMutedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusPositiveEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusInfoMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusInfoMutedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusInfoEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusWarningMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusWarningMutedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusWarningEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusNegativeMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusNegativeMutedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusNegativeEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusAccentMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusAccentMutedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBgStatusAccentEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: Semantic token - Colors - Content - Status

    override var colorContentDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentDefaultOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentMutedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentDisabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentDisabledOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentBrandPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentStatusPositive: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentStatusInfo: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentStatusWarning: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentStatusNegative: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentBrandPrimaryOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: Semantic token - Colors - Content - On Action

    override var colorContentOnActionDisabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionDisabledOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionNegative: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionPrimaryEnabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionPrimaryEnabledOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionPrimaryFocus: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionPrimaryFocusOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionPrimaryHover: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionPrimaryHoverOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionPrimaryLoading: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionPrimaryLoadingOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionPrimaryPressed: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnActionPrimaryPressedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnBrandPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusAccentEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusAccentMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusAccentMutedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusInfoEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusInfoMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusInfoMutedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusNegativeEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusNegativeMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusNegativeMutedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusPositiveEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusPositiveMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusPositiveMutedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusWarningEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusWarningMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorContentOnStatusWarningMutedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: Semantic token - Colors - Border

    override var colorBorderDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBorderDefaultOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBorderEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBorderEmphasizedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBorderFocus: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBorderFocusInset: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBorderFocusInsetOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBorderFocusOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBorderBrandPrimaryOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBorderBrandPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorBorderOnBrandPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: Semantic token - Colors - Action

    override var colorActionSelected: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionSelectedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionDisabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionDisabledOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionVisited: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionPrimaryEnabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionPrimaryEnabledOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionPrimaryHover: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionPrimaryHoverOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionPrimaryPressed: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionPrimaryPressedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionPrimaryLoading: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionPrimaryLoadingOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionPrimaryFocus: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionPrimaryFocusOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionSecondaryEnabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionSecondaryEnabledOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionSecondaryHover: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionSecondaryHoverOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionSecondaryPressed: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionSecondaryPressedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionSecondaryLoading: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionSecondaryLoadingOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionSecondaryFocus: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionSecondaryFocusOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionNegativeEnabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionNegativeHover: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionNegativePressed: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionNegativeLoading: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorActionNegativeFocus: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: Semantic token - Colors - Always

    override var colorAlwaysBlack: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysWhite: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysWarning: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysNegative: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysPositive: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysInfo: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysAccent: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysOnAccent: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysOnBlack: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysOnInfo: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysOnNegative: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysOnPositive: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysOnWarning: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorAlwaysOnWhite: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: Semantic token - Colors - Transparent

    override var colorOpacityDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: Semantic token - Colors - Elevation

    override var colorElevationRaised: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationRaisedOnBgSecondary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationRaisedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationDrag: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationDragOnBgSecondary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationDragOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationOverlayDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationOverlayDefaultOnBgSecondary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationOverlayDefaultOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationOverlayEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationOverlayEmphasizedOnBgSecondary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationOverlayEmphasizedOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorElevationModal: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: Semantic token - Colors - Decorative

    override var colorDecorativeNeutralMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeNeutralDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeNeutralEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent1Muted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent1Default: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent1Emphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent2Muted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent2Default: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent2Emphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent3Muted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent3Default: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent3Emphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent4Muted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent4Default: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent4Emphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent5Muted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent5Default: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeAccent5Emphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeSkinTint100: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeSkinTint200: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeSkinTint300: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeSkinTint400: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeSkinTint500: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeSkinTint600: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeSkinTint700: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeSkinTint800: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorDecorativeSkinTint900: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: Semantic token - Colors - Chart

    override var colorChartCategoricalNeutral: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalBrand: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalPositive: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalNegative: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalTier1: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalTier2: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalTier3: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalTier4: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalTier5: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalTier6: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalTier7: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalTier8: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalTier9: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartCategoricalTier10: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent1Tint100: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent1Tint200: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent1Tint300: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent1Tint400: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent1Tint500: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent1Tint600: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent1Tint700: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent1Tint800: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent1Tint900: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent2Tint100: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent2Tint200: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent2Tint300: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent2Tint400: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent2Tint500: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent2Tint600: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent2Tint700: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent2Tint800: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent2Tint900: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent3Tint100: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent3Tint200: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent3Tint300: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent3Tint400: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent3Tint500: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent3Tint600: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent3Tint700: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent3Tint800: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent3Tint900: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent4Tint100: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent4Tint200: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent4Tint300: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent4Tint400: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent4Tint500: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent4Tint600: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent4Tint700: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent4Tint800: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent4Tint900: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent5Tint100: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent5Tint200: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent5Tint300: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent5Tint400: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent5Tint500: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent5Tint600: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent5Tint700: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent5Tint800: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorChartSequentialAccent5Tint900: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Semantic token - Colors - Gradient

    override var colorGradientSkeletonMiddle: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorGradientSkeletonMiddleOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorGradientSkeletonStartEnd: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    override var colorGradientSkeletonStartEndOnBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Color Tokens overridings

    // MARK: Semantic token - Colors - Background

    override var colorBgPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgSecondaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgSecondaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgTertiaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgTertiaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgBrandPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgBrandPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusNeutralLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusNeutralDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusNeutralOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusNeutralOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusPositiveMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusPositiveMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusPositiveMutedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusPositiveMutedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusPositiveEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusPositiveEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusInfoMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusInfoMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusInfoMutedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusInfoMutedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusInfoEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusInfoEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusWarningMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusWarningMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusWarningMutedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusWarningMutedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusWarningEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusWarningEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusNegativeMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusNegativeMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusNegativeMutedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusNegativeMutedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusNegativeEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusNegativeEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusAccentMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusAccentMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusAccentMutedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusAccentMutedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBgStatusAccentEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBgStatusAccentEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    // MARK: Semantic token - Colors - Content - Status

    override var colorContentDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentDefaultOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentDefaultOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentMutedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentMutedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentDisabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentDisabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentDisabledOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentDisabledOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentBrandPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentBrandPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentBrandPrimaryOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentBrandPrimaryOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentStatusPositiveLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentStatusPositiveDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentStatusInfoLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentStatusInfoDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentStatusWarningLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentStatusWarningDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentStatusNegativeLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentStatusNegativeDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    // MARK: Semantic token - Colors - Border

    override var colorBorderDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBorderDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBorderDefaultOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBorderDefaultOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBorderEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBorderEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBorderEmphasizedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBorderEmphasizedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBorderFocusLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBorderFocusDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBorderFocusInsetLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBorderFocusInsetDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBorderFocusInsetOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBorderFocusInsetOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBorderFocusOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBorderFocusOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBorderBrandPrimaryOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBorderBrandPrimaryOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBorderBrandPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBorderBrandPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorBorderOnBrandPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorBorderOnBrandPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    // MARK: Semantic token - Colors - Action

    override var colorActionSelectedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSelectedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionSelectedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSelectedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionDisabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionDisabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionDisabledOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionDisabledOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionVisitedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionVisitedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionPrimaryEnabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionPrimaryEnabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionPrimaryEnabledOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionPrimaryEnabledOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionPrimaryHoverLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionPrimaryHoverDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionPrimaryHoverOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionPrimaryHoverOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionPrimaryPressedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionPrimaryPressedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionPrimaryPressedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionPrimaryPressedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionPrimaryLoadingLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionPrimaryLoadingDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionPrimaryLoadingOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionPrimaryLoadingOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionPrimaryFocusLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionPrimaryFocusDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionPrimaryFocusOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionPrimaryFocusOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionSecondaryEnabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSecondaryEnabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionSecondaryEnabledOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSecondaryEnabledOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionSecondaryHoverLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSecondaryHoverDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionSecondaryHoverOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSecondaryHoverOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionSecondaryPressedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSecondaryPressedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionSecondaryPressedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSecondaryPressedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionSecondaryLoadingLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSecondaryLoadingDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionSecondaryLoadingOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSecondaryLoadingOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionSecondaryFocusLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSecondaryFocusDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorActionSecondaryFocusOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorActionSecondaryFocusOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    // MARK: Semantic token - Colors - Always

    override var colorAlwaysBlackLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysBlackDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysWhiteLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysWhiteDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysWarningLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysWarningDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysNegativeLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysNegativeDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysPositiveLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysPositiveDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysInfoLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysInfoDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysAccentLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysAccentDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysOnAccentLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysOnAccentDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysOnBlackLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysOnBlackDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysOnInfoLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysOnInfoDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysOnNegativeLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysOnNegativeDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysOnPositiveLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysOnPositiveDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysOnWarningLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysOnWarningDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorAlwaysOnWhiteLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorAlwaysOnWhiteDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    // MARK: Semantic token - Colors - Transparent

    override var colorOpacityDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorOpacityDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    // MARK: Semantic token - Colors - Elevation

    override var colorElevationRaisedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationRaisedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationRaisedOnBgSecondaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationRaisedOnBgSecondaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationRaisedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationRaisedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationDragLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationDragDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationDragOnBgSecondaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationDragOnBgSecondaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationDragOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationDragOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationOverlayDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationOverlayDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationOverlayDefaultOnBgSecondaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationOverlayDefaultOnBgSecondaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationOverlayDefaultOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationOverlayDefaultOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationOverlayEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationOverlayEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationOverlayEmphasizedOnBgSecondaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationOverlayEmphasizedOnBgSecondaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationOverlayEmphasizedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationOverlayEmphasizedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorElevationModalLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorElevationModalDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    // MARK: Semantic token - Colors - Decorative

    override var colorDecorativeNeutralMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeNeutralMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeNeutralDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeNeutralDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeNeutralEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeNeutralEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent1MutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent1MutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent1DefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent1DefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent1EmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent1EmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent2MutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent2MutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent2DefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent2DefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent2EmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent2EmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent3MutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent3MutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent3DefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent3DefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent3EmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent3EmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent4MutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent4MutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent4DefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent4DefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent4EmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent4EmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent5MutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent5MutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent5DefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent5DefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeAccent5EmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeAccent5EmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeSkinTint100Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeSkinTint100Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeSkinTint200Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeSkinTint200Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeSkinTint300Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeSkinTint300Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeSkinTint400Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeSkinTint400Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeSkinTint500Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeSkinTint500Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeSkinTint600Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeSkinTint600Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeSkinTint700Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeSkinTint700Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeSkinTint800Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeSkinTint800Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorDecorativeSkinTint900Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorDecorativeSkinTint900Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    // MARK: Semantic token - Colors - Chart

    override var colorChartCategoricalNeutralLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalNeutralDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalBrandLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalBrandDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalPositiveLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalPositiveDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalNegativeLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalNegativeDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalTier1Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalTier1Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalTier2Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalTier2Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalTier3Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalTier3Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalTier4Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalTier4Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalTier5Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalTier5Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalTier6Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalTier6Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalTier7Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalTier7Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalTier8Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalTier8Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalTier9Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalTier9Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartCategoricalTier10Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartCategoricalTier10Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent1Tint100Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent1Tint100Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent1Tint200Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent1Tint200Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent1Tint300Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent1Tint300Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent1Tint400Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent1Tint400Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent1Tint500Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent1Tint500Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent1Tint600Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent1Tint600Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent1Tint700Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent1Tint700Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent1Tint800Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent1Tint800Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent1Tint900Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent1Tint900Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent2Tint100Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent2Tint100Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent2Tint200Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent2Tint200Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent2Tint300Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent2Tint300Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent2Tint400Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent2Tint400Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent2Tint500Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent2Tint500Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent2Tint600Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent2Tint600Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent2Tint700Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent2Tint700Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent2Tint800Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent2Tint800Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent2Tint900Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent2Tint900Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent3Tint100Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent3Tint100Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent3Tint200Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent3Tint200Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent3Tint300Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent3Tint300Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent3Tint400Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent3Tint400Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent3Tint500Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent3Tint500Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent3Tint600Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent3Tint600Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent3Tint700Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent3Tint700Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent3Tint800Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent3Tint800Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent3Tint900Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent3Tint900Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent4Tint100Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent4Tint100Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent4Tint200Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent4Tint200Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent4Tint300Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent4Tint300Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent4Tint400Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent4Tint400Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent4Tint500Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent4Tint500Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent4Tint600Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent4Tint600Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent4Tint700Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent4Tint700Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent4Tint800Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent4Tint800Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent4Tint900Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent4Tint900Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent5Tint100Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent5Tint100Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent5Tint200Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent5Tint200Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent5Tint300Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent5Tint300Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent5Tint400Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent5Tint400Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent5Tint500Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent5Tint500Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent5Tint600Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent5Tint600Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent5Tint700Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent5Tint700Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent5Tint800Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent5Tint800Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorChartSequentialAccent5Tint900Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorChartSequentialAccent5Tint900Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    // MARK: - Semantic token - Colors - Gradient

    override var colorGradientSkeletonMiddleLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorGradientSkeletonMiddleDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorGradientSkeletonMiddleOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorGradientSkeletonMiddleOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorGradientSkeletonStartEndLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorGradientSkeletonStartEndDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorGradientSkeletonStartEndOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorGradientSkeletonStartEndOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    // MARK: Semantic token - Colors - Content - On Action

    override var colorContentOnActionDisabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionDisabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionDisabledOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionDisabledOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionNegativeLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionNegativeDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionPrimaryEnabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionPrimaryEnabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionPrimaryEnabledOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionPrimaryEnabledOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionPrimaryFocusLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionPrimaryFocusDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionPrimaryFocusOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionPrimaryFocusOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionPrimaryHoverLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionPrimaryHoverDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionPrimaryHoverOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionPrimaryHoverOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionPrimaryLoadingLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionPrimaryLoadingDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionPrimaryLoadingOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionPrimaryLoadingOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionPrimaryPressedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionPrimaryPressedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnActionPrimaryPressedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnActionPrimaryPressedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnBrandPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnBrandPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusAccentEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusAccentEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusAccentMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusAccentMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusAccentMutedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusAccentMutedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusInfoEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusInfoEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusInfoMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusInfoMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusInfoMutedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusInfoMutedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusNegativeEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusNegativeEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusNegativeMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusNegativeMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusNegativeMutedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusNegativeMutedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusPositiveEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusPositiveEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusPositiveMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusPositiveMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusPositiveMutedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusPositiveMutedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusWarningEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusWarningEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusWarningMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusWarningMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override var colorContentOnStatusWarningMutedOnBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override var colorContentOnStatusWarningMutedOnBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length
// swiftlint:enable identifier_name
