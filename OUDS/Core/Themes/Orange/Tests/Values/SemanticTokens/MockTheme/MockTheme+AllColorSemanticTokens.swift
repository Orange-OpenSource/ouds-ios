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
import OUDSThemesOrange
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable required_deinit
// swiftlint:disable type_body_length

/// Overrides **all** the color semantic tokens (from its super class, i.e. ``OrangeThemeColorSemanticTokensProvider``) so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
/// This ``MockThemeColorSemanticTokensProvider`` will be asigned in ``MockTheme`` as an ``AllColorSemanticTokens`` implementation.
open class MockThemeColorSemanticTokensProvider: OrangeThemeColorSemanticTokensProvider {

    static let mockThemeMultipleColorSemanticTokens = MultipleColorSemanticTokens("#68489D")
    static let mockThemeSemanticColorToken: ColorSemanticToken = "#68489D"

    // MARK: - Color semantic tokens - Light and dark

    override public var colorOpacityLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOpacityLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOpacityLowerLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOpacityLowerDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOpacityTransparentLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOpacityTransparentDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorActionDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionFocus2Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionHighlightedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionNegativeEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionNegativeFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionNegativeHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionNegativeLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionNegativePressedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorActionNegativeEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionNegativeFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionNegativeHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionNegativeLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionNegativePressedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorActionPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSelectedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorActionSupportEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorActionVisitedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionFocus2Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionHighlightedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSelectedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionVisitedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorAlwaysBlackLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorAlwaysOnBlackLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorAlwaysOnWhiteLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorAlwaysWhiteLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorAlwaysBlackDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorAlwaysOnBlackDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorAlwaysOnWhiteDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorAlwaysWhiteDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorBgEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorBgEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorBorderBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderFocusInsetLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderOnBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorBorderBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderFocusInsetDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderOnBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorContentBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentDefault2Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorContentBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentDefault2Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorContentOnActionDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionHighlightedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorContentOnActionDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionHighlightedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorContentOnBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnOverlayEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnOverlayEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusEmphasizedAltLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusEmphasizedAltDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorContentStatusInfoLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentStatusNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentStatusPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentStatusWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentStatusInfoDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentStatusNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentStatusPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentStatusWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorOverlayDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOverlayDragLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOverlayEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOverlayModalLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOverlayDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOverlayDragDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOverlayEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorOverlayModalDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorSurfaceBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusAccentEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusAccentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusAccentEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusAccentMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusInfoEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusInfoMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusInfoEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusInfoMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusNegativeEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusNegativeMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusNegativeEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusNegativeMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusNeutralEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusNeutralMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusNeutralEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusNeutralMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorDecorativeAccent1DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent1EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent1MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent1DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent1EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent1MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorDecorativeAccent2DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent2EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent2MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent2DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent2EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent2MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorDecorativeAccent3DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent3EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent3MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent3DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent3EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent3MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorDecorativeAccent4DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent4EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent4MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent4DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent4EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent4MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorDecorativeAccent5DefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent5EmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent5MutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent5DefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent5EmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent5MutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorDecorativeBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorDecorativeSkinTint100Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint200Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint300Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint400Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint500Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint600Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint700Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint800Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint900Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorDecorativeSkinTint100Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint200Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint300Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint400Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint500Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint600Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint700Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint800Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint900Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorChartBorderLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartBorderContrastLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier1Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier2Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier3Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier4Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier5Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier6Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier7Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier8Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier9Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier10Light: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorChartBorderDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartBorderContrastDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier1Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier2Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier3Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier4Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier5Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier6Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier7Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier8Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier9Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartCategoricalTier10Dark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorChartFunctionalInfoLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartFunctionalNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartFunctionalPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartFunctionalWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorChartFunctionalInfoDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartFunctionalNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartFunctionalPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartFunctionalWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorChartGridlinesLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartHighlightLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorChartNeutralLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    // MARK: - Color semantic tokens - Multiples

    // MARK: - Color - Opacity

    override public var colorOpacityLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorOpacityLower: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorOpacityTransparent: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Action

    override public var colorActionDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionFocus2: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
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
    override public var colorBorderMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Content

    override public var colorContentBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentDefault2: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionHighlighted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionPressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnOverlayEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnStatusEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnStatusEmphasizedAlt: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
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

    override public var colorChartBorder: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartBorderContrast: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
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
    override public var colorChartFunctionalInfo: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartFunctionalNegative: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartFunctionalPositive: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartFunctionalWarning: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartGridlines: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartHighlight: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorChartNeutral: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length
