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

/// Overrides **all** the color semantic tokens (from its super class, i.e. `OUDSTheme` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
extension MockTheme {

    static let mockThemeMultipleColorSemanticTokens = MultipleColorSemanticTokens("#68489D")
    static let mockThemeSemanticColorTokens: ColorSemanticToken = "#68489D"

    // MARK: - Color semantic tokens - Light and dark

    override open var colorOpacityInvisibleBlackLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorOpacityInvisibleBlackDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorOpacityInvisibleWhiteLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorOpacityInvisibleWhiteDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionHighlightedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionNegativeEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionNegativeFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionNegativeHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionNegativeLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionNegativePressedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionNegativeEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionNegativeFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionNegativeHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionNegativeLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionNegativePressedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSelectedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSupportEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSupportFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSupportHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSupportLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSupportPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionSupportEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSupportFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSupportHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSupportLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSupportPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorActionVisitedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionHighlightedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionSelectedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorActionVisitedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorAlwaysBlackLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysOnBlackLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysOnWhiteLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysWhiteLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorAlwaysBlackDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysOnBlackDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysOnWhiteDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorAlwaysWhiteDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBgTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderFocusInsetLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderOnBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorBorderOnBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorBorderFocusInsetDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionHighlightedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnActionDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionHighlightedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnActionPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentOnBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnOverlayEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnOverlayEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnStatusEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnStatusEmphasizedNeutralLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnStatusMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnStatusEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnStatusEmphasizedNeutralDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentOnStatusMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorContentStatusInfoLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusInfoDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorContentStatusWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorOverlayDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorOverlayDragLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorOverlayEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorOverlayModalLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorOverlayDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorOverlayDragDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorOverlayEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorOverlayModalDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorSurfaceBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusAccentEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusAccentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusAccentEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusAccentMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusInfoEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusInfoMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusInfoEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusInfoMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusNegativeEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusNegativeMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusNegativeEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusNegativeMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusNeutralEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusNeutralMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusNeutralEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusNeutralMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusPositiveEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusPositiveMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusPositiveEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusPositiveMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusWarningEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusWarningMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusWarningEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorSurfaceStatusWarningMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent1DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent1EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent1MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent1DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent1EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent1MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent2DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent2EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent2MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent2DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent2EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent2MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent3DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent3EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent3MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent3DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent3EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent3MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent4DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent4EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent4MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent4DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent4EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent4MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeAccent5DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent5EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent5MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent5DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent5EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeAccent5MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeNeutralDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeNeutralEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeNeutralMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeNeutralDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeNeutralEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeNeutralMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSkinTint100Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint200Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint300Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint400Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint500Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint600Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint700Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint800Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint900Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorDecorativeSkinTint100Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint200Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint300Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint400Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint500Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint600Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint700Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint800Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorDecorativeSkinTint900Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier1Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier2Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier3Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier4Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier5Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier6Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier7Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier8Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier9Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier10Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartCategoricalTier1Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier2Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier3Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier4Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier5Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier6Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier7Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier8Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier9Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartCategoricalTier10Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartFunctionalInformationLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartFunctionalNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartFunctionalPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartFunctionalWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartFunctionalInformationDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartFunctionalNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartFunctionalPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartFunctionalWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorChartGridlinesLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartHighlightLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorChartNeutralLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryAccentDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryAccentHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryAccentLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryAccentLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryAccentDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryAccentHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryAccentLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryAccentLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryInfoDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryInfoHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryInfoLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryInfoLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryInfoDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryInfoHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryInfoLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryInfoLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryNegativeDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNegativeHighLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNegativeHigherLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNegativeHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryNegativeLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNegativeLowerLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNegativeLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryNegativeDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNegativeHighDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNegativeHigherDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNegativeHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryNegativeLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNegativeLowerDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNegativeLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryNeutralEmphasizedBlackLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralEmphasizedHighLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralEmphasizedHigherLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralEmphasizedHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralEmphasizedMediumLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryNeutralEmphasizedBlackDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralEmphasizedHighDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralEmphasizedHigherDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralEmphasizedHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralEmphasizedMediumDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryNeutralMutedLowerLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralMutedLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralMutedWhiteLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryNeutralMutedLowerDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralMutedLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryNeutralMutedWhiteDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryOpacityBlackHigherLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackLowerLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackMediumLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackTransparentLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryOpacityBlackHigherDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackLowerDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackMediumDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityBlackTransparentDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryOpacityInfoLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryOpacityWhiteHighLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteHigherLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteLowerLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteTransparentLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryOpacityWhiteHighDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteHigherDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteLowerDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWhiteTransparentDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryOpacityInfoDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryOpacityWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryPositiveDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryPositiveHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryPositiveLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryPositiveLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryPositiveDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryPositiveHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryPositiveLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryPositiveLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryPrimaryDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryPrimaryLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryPrimaryDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryPrimaryLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryWarningDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryWarningHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryWarningLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryWarningLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override open var colorRepositoryWarningDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryWarningHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryWarningLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override open var colorRepositoryWarningLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    // MARK: - Color semantic tokens - Multiples

    // MARK: - Color - Opacity - Invisible

    override open var colorOpacityInvisibleBlack: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorOpacityInvisibleWhite: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Action

    override open var colorActionDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionHighlighted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionNegativeEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionNegativeFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionNegativeHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionNegativeLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionNegativePressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionPressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionSelected: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionSupportEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionSupportFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionSupportHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionSupportLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionSupportPressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorActionVisited: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Always

    override open var colorAlwaysBlack: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorAlwaysOnBlack: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorAlwaysOnWhite: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorAlwaysWhite: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Background

    override open var colorBgEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorBgPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorBgSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorBgTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Border

    override open var colorBorderBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorBorderDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorBorderEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorBorderFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorBorderFocusInset: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorBorderOnBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Content

    override open var colorContentBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnActionDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnActionEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnActionFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnActionHighlighted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnActionHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnActionLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnActionNegative: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnActionPressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnOverlayEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnStatusEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnStatusEmphasizedNeutral: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentOnStatusMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentStatusInfo: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentStatusNegative: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentStatusPositive: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorContentStatusWarning: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Overlay

    override open var colorOverlayDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorOverlayDrag: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorOverlayEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorOverlayModal: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Surface

    override open var colorSurfaceBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusAccentEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusAccentMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusInfoEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusInfoMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusNegativeEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusNegativeMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusNeutralEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusNeutralMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusPositiveEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusPositiveMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusWarningEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorSurfaceStatusWarningMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Decorative

    override open var colorDecorativeAccent1Default: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent1Emphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent1Muted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent2Default: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent2Emphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent2Muted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent3Default: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent3Emphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent3Muted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent4Default: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent4Emphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent4Muted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent5Default: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent5Emphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeAccent5Muted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeNeutralDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeNeutralEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeNeutralMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeSkinTint100: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeSkinTint200: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeSkinTint300: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeSkinTint400: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeSkinTint500: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeSkinTint600: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeSkinTint700: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeSkinTint800: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorDecorativeSkinTint900: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Chart

    override open var colorChartCategoricalTier1: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartCategoricalTier2: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartCategoricalTier3: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartCategoricalTier4: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartCategoricalTier5: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartCategoricalTier6: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartCategoricalTier7: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartCategoricalTier8: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartCategoricalTier9: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartCategoricalTier10: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartFunctionalInformation: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartFunctionalNegative: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartFunctionalPositive: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartFunctionalWarning: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartGridlines: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartHighlight: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorChartNeutral: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Repository

    override open var colorRepositoryAccentDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryAccentHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryAccentLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryAccentLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryInfoDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryInfoHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryInfoLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryInfoLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNegativeDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNegativeHigh: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNegativeHigher: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNegativeHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNegativeLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNegativeLower: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNegativeLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNeutralEmphasizedBlack: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNeutralEmphasizedHigh: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNeutralEmphasizedHigher: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNeutralEmphasizedHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNeutralEmphasizedMedium: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNeutralMutedLower: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNeutralMutedLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryNeutralMutedWhite: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryOpacityBlackHigher: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryOpacityBlackHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryOpacityBlackLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryOpacityBlackLower: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryOpacityBlackLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryOpacityBlackMedium: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryOpacityBlackTransparent: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryOpacityInfo: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryOpacityNegative: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryOpacityPositive: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryOpacityWarning: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryPositiveDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryPositiveHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryPositiveLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryPositiveLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryPrimaryDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryPrimaryLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryWarningDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryWarningHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryWarningLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override open var colorRepositoryWarningLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
}
