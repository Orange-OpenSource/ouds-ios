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
// swiftlint:disable required_deinit
// swiftlint:disable type_body_length

/// Overrides **all** the color semantic tokens (from its super class, i.e. `OUDSColorSemanticTokensProvider`) so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
/// This ``MockThemeColorSemanticTokensWrapper`` will be asigned in ``MockTheme`` as an ``AllColorSemanticTokens`` implementation.
open class MockThemeColorSemanticTokensWrapper: OUDSColorSemanticTokensProvider {

    static let mockThemeMultipleColorSemanticTokens = MultipleColorSemanticTokens("#68489D")
    static let mockThemeSemanticColorTokens: ColorSemanticToken = "#68489D"

    // MARK: - Color semantic tokens - Light and dark

    override public var colorOpacityInvisibleBlackLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorOpacityInvisibleBlackDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorOpacityInvisibleWhiteLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorOpacityInvisibleWhiteDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorActionDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionHighlightedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionNegativeEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionNegativeFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionNegativeHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionNegativeLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionNegativePressedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorActionNegativeEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionNegativeFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionNegativeHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionNegativeLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionNegativePressedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorActionPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionSelectedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionSupportEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionSupportFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionSupportHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionSupportLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionSupportPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorActionSupportEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionSupportFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionSupportHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionSupportLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionSupportPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorActionVisitedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionHighlightedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionSelectedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorActionVisitedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorAlwaysBlackLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorAlwaysOnBlackLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorAlwaysOnWhiteLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorAlwaysWhiteLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorAlwaysBlackDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorAlwaysOnBlackDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorAlwaysOnWhiteDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorAlwaysWhiteDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBgPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBgSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBgTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBgPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBgSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBgTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorBorderBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBorderDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBorderEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBorderFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBorderFocusInsetLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBorderOnBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorBorderOnBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBorderBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBorderDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBorderEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBorderFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorBorderFocusInsetDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorContentBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionHighlightedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorContentOnActionDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionHighlightedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnActionPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorContentOnBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnOverlayEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnOverlayEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnStatusEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnStatusEmphasizedNeutralLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnStatusMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnStatusEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnStatusEmphasizedNeutralDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentOnStatusMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorContentStatusInfoLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentStatusNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentStatusPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentStatusWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentStatusInfoDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentStatusNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentStatusPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorContentStatusWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorOverlayDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorOverlayDragLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorOverlayEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorOverlayModalLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorOverlayDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorOverlayDragDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorOverlayEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorOverlayModalDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorSurfaceBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusAccentEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusAccentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusAccentEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusAccentMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusInfoEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusInfoMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusInfoEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusInfoMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusNegativeEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusNegativeMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusNegativeEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusNegativeMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusNeutralEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusNeutralMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusNeutralEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusNeutralMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusPositiveEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusPositiveMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusPositiveEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusPositiveMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusWarningEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusWarningMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusWarningEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorSurfaceStatusWarningMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorDecorativeAccent1DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent1EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent1MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent1DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent1EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent1MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorDecorativeAccent2DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent2EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent2MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent2DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent2EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent2MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorDecorativeAccent3DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent3EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent3MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent3DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent3EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent3MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorDecorativeAccent4DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent4EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent4MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent4DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent4EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent4MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorDecorativeAccent5DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent5EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent5MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent5DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent5EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeAccent5MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorDecorativeBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorDecorativeNeutralDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeNeutralEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeNeutralMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeNeutralDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeNeutralEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeNeutralMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorDecorativeSkinTint100Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint200Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint300Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint400Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint500Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint600Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint700Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint800Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint900Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorDecorativeSkinTint100Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint200Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint300Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint400Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint500Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint600Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint700Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint800Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorDecorativeSkinTint900Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorChartCategoricalTier1Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier2Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier3Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier4Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier5Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier6Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier7Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier8Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier9Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier10Light: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorChartCategoricalTier1Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier2Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier3Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier4Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier5Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier6Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier7Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier8Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier9Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartCategoricalTier10Dark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorChartFunctionalInformationLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartFunctionalNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartFunctionalPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartFunctionalWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorChartFunctionalInformationDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartFunctionalNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartFunctionalPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartFunctionalWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorChartGridlinesLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartHighlightLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorChartNeutralLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryAccentDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryAccentHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryAccentLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryAccentLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryAccentDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryAccentHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryAccentLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryAccentLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryInfoDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryInfoHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryInfoLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryInfoLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryInfoDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryInfoHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryInfoLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryInfoLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryNegativeDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNegativeHighLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNegativeHigherLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNegativeHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryNegativeLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNegativeLowerLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNegativeLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryNegativeDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNegativeHighDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNegativeHigherDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNegativeHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryNegativeLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNegativeLowerDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNegativeLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryNeutralEmphasizedBlackLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralEmphasizedHighLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralEmphasizedHigherLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralEmphasizedHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralEmphasizedMediumLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryNeutralEmphasizedBlackDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralEmphasizedHighDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralEmphasizedHigherDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralEmphasizedHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralEmphasizedMediumDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryNeutralMutedLowerLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralMutedLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralMutedWhiteLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryNeutralMutedLowerDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralMutedLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryNeutralMutedWhiteDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryOpacityBlackHigherLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackLowerLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackMediumLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackTransparentLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryOpacityBlackHigherDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackLowerDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackMediumDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityBlackTransparentDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryOpacityInfoLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryOpacityWhiteHighLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteHigherLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteLowerLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteTransparentLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryOpacityWhiteHighDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteHigherDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteLowerDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWhiteTransparentDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryOpacityInfoDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryOpacityWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryPositiveDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryPositiveHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryPositiveLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryPositiveLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryPositiveDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryPositiveHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryPositiveLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryPositiveLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryPrimaryDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryPrimaryLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryPrimaryDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryPrimaryLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryWarningDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryWarningHighestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryWarningLowLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryWarningLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    override public var colorRepositoryWarningDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryWarningHighestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryWarningLowDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }
    override public var colorRepositoryWarningLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorTokens }

    // MARK: - Color semantic tokens - Multiples

    // MARK: - Color - Opacity - Invisible

    override public var colorOpacityInvisibleBlack: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorOpacityInvisibleWhite: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Action

    override public var colorActionDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionHighlighted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionNegativeEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionNegativeFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionNegativeHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionNegativeLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionNegativePressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionPressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionSelected: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportPressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionVisited: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Always

    override public var colorAlwaysBlack: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorAlwaysOnBlack: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorAlwaysOnWhite: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorAlwaysWhite: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Background

    override public var colorBgEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBgPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBgSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBgTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Border

    override public var colorBorderBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderFocusInset: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderOnBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Content

    override public var colorContentBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionHighlighted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionNegative: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionPressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnOverlayEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnStatusEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnStatusEmphasizedNeutral: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnStatusMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentStatusInfo: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentStatusNegative: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentStatusPositive: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentStatusWarning: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Overlay

    override public var colorOverlayDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorOverlayDrag: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorOverlayEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorOverlayModal: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Surface

    override public var colorSurfaceBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusAccentEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusAccentMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusInfoEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusInfoMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusNegativeEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusNegativeMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusNeutralEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusNeutralMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusPositiveEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusPositiveMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusWarningEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusWarningMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Decorative

    override public var colorDecorativeAccent1Default: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent1Emphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent1Muted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent2Default: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent2Emphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent2Muted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent3Default: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent3Emphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent3Muted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent4Default: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent4Emphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent4Muted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent5Default: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent5Emphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent5Muted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeNeutralDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeNeutralEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeNeutralMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint100: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint200: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint300: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint400: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint500: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint600: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint700: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint800: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint900: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Chart

    override public var colorChartCategoricalTier1: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier2: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier3: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier4: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier5: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier6: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier7: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier8: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier9: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier10: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartFunctionalInformation: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartFunctionalNegative: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartFunctionalPositive: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartFunctionalWarning: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartGridlines: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartHighlight: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartNeutral: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Repository

    override public var colorRepositoryAccentDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryAccentHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryAccentLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryAccentLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryInfoDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryInfoHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryInfoLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryInfoLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeHigh: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeHigher: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeLower: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralEmphasizedBlack: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralEmphasizedHigh: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralEmphasizedHigher: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralEmphasizedHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralEmphasizedMedium: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralMutedLower: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralMutedLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralMutedWhite: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackHigher: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackLower: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackMedium: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackTransparent: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityInfo: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityNegative: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityPositive: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWarning: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteHigh: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteHigher: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteLower: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteTransparent: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPositiveDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPositiveHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPositiveLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPositiveLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPrimaryDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPrimaryLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryWarningDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryWarningHighest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryWarningLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryWarningLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length
