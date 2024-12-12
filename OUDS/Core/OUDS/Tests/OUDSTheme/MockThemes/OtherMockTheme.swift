//
// Software Name: OUDS iOS
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
// 
// This software is distributed under the MIT license,
// the text of which is available at https://publicsource.org/license/MIT/
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

    // MARK: - Color semantic tokens - Light and dark

    override public var colorOpacityInvisibleBlackLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorOpacityInvisibleBlackDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorOpacityInvisibleWhiteLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorOpacityInvisibleWhiteDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorActionDisabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionEnabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionFocusLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionHighlightedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionHoverLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionLoadingLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionNegativeEnabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionNegativeFocusLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionNegativeHoverLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionNegativeLoadingLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionNegativePressedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorActionNegativeEnabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionNegativeFocusDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionNegativeHoverDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionNegativeLoadingDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionNegativePressedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorActionPressedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionSelectedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionSupportEnabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionSupportFocusLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionSupportHoverLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionSupportLoadingLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionSupportPressedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorActionSupportEnabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionSupportFocusDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionSupportHoverDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionSupportLoadingDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionSupportPressedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorActionVisitedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionDisabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionEnabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionFocusDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionHighlightedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionHoverDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionLoadingDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionPressedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionSelectedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorActionVisitedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorAlwaysBlackLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorAlwaysOnBlackLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorAlwaysOnWhiteLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorAlwaysWhiteLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorAlwaysBlackDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorAlwaysOnBlackDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorAlwaysOnWhiteDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorAlwaysWhiteDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorBgEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBgPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBgSecondaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBgTertiaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorBgEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBgPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBgSecondaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBgTertiaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorBorderBrandPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBorderDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBorderEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBorderFocusLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBorderFocusInsetLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBorderOnBrandPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorBorderOnBrandPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBorderBrandPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBorderDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBorderEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBorderFocusDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorBorderFocusInsetDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorContentBrandPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentDisabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionDisabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionEnabledLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionFocusLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionHighlightedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionHoverLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionLoadingLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionNegativeLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionPressedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorContentOnActionDisabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionEnabledDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionFocusDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionHighlightedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionHoverDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionLoadingDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionNegativeDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnActionPressedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorContentOnBrandPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnBrandPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnOverlayEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnOverlayEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnStatusEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnStatusEmphasizedNeutralLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnStatusMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnStatusEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnStatusEmphasizedNeutralDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentOnStatusMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorContentStatusInfoLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentStatusNegativeLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentStatusPositiveLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentStatusWarningLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentStatusInfoDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentStatusNegativeDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentStatusPositiveDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorContentStatusWarningDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorOverlayDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorOverlayDragLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorOverlayEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorOverlayModalLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorOverlayDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorOverlayDragDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorOverlayEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorOverlayModalDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorSurfaceBrandPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceBrandPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusAccentEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusAccentMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusAccentEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusAccentMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusInfoEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusInfoMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusInfoEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusInfoMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusNegativeEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusNegativeMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusNegativeEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusNegativeMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusNeutralEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusNeutralMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusNeutralEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusNeutralMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorDecorativeAccent1DefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent1EmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent1MutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent1DefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent1EmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent1MutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorDecorativeAccent2DefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent2EmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent2MutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent2DefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent2EmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent2MutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorDecorativeAccent3DefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent3EmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent3MutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent3DefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent3EmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent3MutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorDecorativeAccent4DefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent4EmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent4MutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent4DefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent4EmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent4MutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorDecorativeAccent5DefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent5EmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent5MutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent5DefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent5EmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeAccent5MutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorDecorativeBrandPrimaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeBrandSecondaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeBrandTertiaryLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeBrandPrimaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeBrandSecondaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeBrandTertiaryDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorDecorativeNeutralDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeNeutralEmphasizedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeNeutralMutedLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeNeutralDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeNeutralEmphasizedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeNeutralMutedDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorDecorativeSkinTint100Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint200Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint300Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint400Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint500Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint600Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint700Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint800Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint900Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorDecorativeSkinTint100Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint200Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint300Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint400Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint500Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint600Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint700Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint800Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint900Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorChartCategoricalTier1Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier2Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier3Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier4Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier5Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier6Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier7Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier8Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier9Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier10Light: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorChartCategoricalTier1Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier2Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier3Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier4Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier5Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier6Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier7Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier8Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier9Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartCategoricalTier10Dark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorChartFunctionalInformationLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartFunctionalNegativeLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartFunctionalPositiveLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartFunctionalWarningLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorChartFunctionalInformationDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartFunctionalNegativeDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartFunctionalPositiveDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartFunctionalWarningDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorChartGridlinesLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartHighlightLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorChartNeutralLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryAccentDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryAccentHighestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryAccentLowLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryAccentLowestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryAccentDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryAccentHighestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryAccentLowDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryAccentLowestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryInfoDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryInfoHighestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryInfoLowLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryInfoLowestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryInfoDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryInfoHighestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryInfoLowDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryInfoLowestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryNegativeDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNegativeHighLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNegativeHigherLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNegativeHighestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryNegativeLowLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNegativeLowerLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNegativeLowestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryNegativeDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNegativeHighDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNegativeHigherDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNegativeHighestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryNegativeLowDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNegativeLowerDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNegativeLowestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryNeutralEmphasizedBlackLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralEmphasizedHighLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralEmphasizedHigherLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralEmphasizedHighestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralEmphasizedMediumLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryNeutralEmphasizedBlackDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralEmphasizedHighDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralEmphasizedHigherDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralEmphasizedHighestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralEmphasizedMediumDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryNeutralMutedLowerLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralMutedLowestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralMutedWhiteLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryNeutralMutedLowerDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralMutedLowestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryNeutralMutedWhiteDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryOpacityBlackHigherLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackHighestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackLowLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackLowerLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackLowestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackMediumLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackTransparentLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryOpacityBlackHigherDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackHighestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackLowDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackLowerDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackLowestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackMediumDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityBlackTransparentDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryOpacityInfoLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityNegativeLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityPositiveLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWarningLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryOpacityWhiteHighLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteHigherLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteHighestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteLowLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteLowerLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteLowestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteTransparentLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryOpacityWhiteHighDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteHigherDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteHighestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteLowDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteLowerDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteLowestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWhiteTransparentDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryOpacityInfoDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityNegativeDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityPositiveDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryOpacityWarningDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryPositiveDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryPositiveHighestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryPositiveLowLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryPositiveLowestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryPositiveDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryPositiveHighestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryPositiveLowDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryPositiveLowestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryPrimaryDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryPrimaryLowLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryPrimaryDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryPrimaryLowDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryWarningDefaultLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryWarningHighestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryWarningLowLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryWarningLowestLight: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    override public var colorRepositoryWarningDefaultDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryWarningHighestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryWarningLowDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }
    override public var colorRepositoryWarningLowestDark: ColorSemanticToken { Self.otherMockThemeSemanticColorToken }

    // MARK: - Color semantic tokens - Multiples

    // MARK: - Color - Opacity - Invisible

    override public var colorOpacityInvisibleBlack: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorOpacityInvisibleWhite: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Action

    override public var colorActionDisabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionEnabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionFocus: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionHighlighted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionHover: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionLoading: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionNegativeEnabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionNegativeFocus: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionNegativeHover: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionNegativeLoading: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionNegativePressed: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionPressed: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionSelected: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportEnabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportFocus: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportHover: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportLoading: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportPressed: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorActionVisited: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Always

    override public var colorAlwaysBlack: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorAlwaysOnBlack: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorAlwaysOnWhite: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorAlwaysWhite: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Background

    override public var colorBgEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorBgPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorBgSecondary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorBgTertiary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Border

    override public var colorBorderBrandPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorBorderDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorBorderEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorBorderFocus: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorBorderFocusInset: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorBorderOnBrandPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Content

    override public var colorContentBrandPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentDisabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionDisabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionEnabled: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionFocus: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionHighlighted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionHover: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionLoading: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionNegative: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnActionPressed: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnBrandPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnOverlayEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnStatusEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnStatusEmphasizedNeutral: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentOnStatusMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentStatusInfo: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentStatusNegative: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentStatusPositive: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorContentStatusWarning: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Overlay

    override public var colorOverlayDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorOverlayDrag: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorOverlayEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorOverlayModal: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Surface

    override public var colorSurfaceBrandPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusAccentEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusAccentMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusInfoEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusInfoMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusNegativeEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusNegativeMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusNeutralEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusNeutralMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusPositiveEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusPositiveMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusWarningEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusWarningMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Decorative

    override public var colorDecorativeAccent1Default: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent1Emphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent1Muted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent2Default: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent2Emphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent2Muted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent3Default: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent3Emphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent3Muted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent4Default: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent4Emphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent4Muted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent5Default: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent5Emphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeAccent5Muted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeBrandPrimary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeBrandSecondary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeBrandTertiary: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeNeutralDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeNeutralEmphasized: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeNeutralMuted: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint100: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint200: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint300: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint400: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint500: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint600: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint700: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint800: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorDecorativeSkinTint900: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Chart

    override public var colorChartCategoricalTier1: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier2: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier3: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier4: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier5: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier6: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier7: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier8: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier9: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartCategoricalTier10: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartFunctionalInformation: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartFunctionalNegative: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartFunctionalPositive: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartFunctionalWarning: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartGridlines: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartHighlight: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorChartNeutral: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Repository

    override public var colorRepositoryAccentDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryAccentHighest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryAccentLow: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryAccentLowest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryInfoDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryInfoHighest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryInfoLow: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryInfoLowest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeHigh: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeHigher: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeHighest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeLow: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeLower: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNegativeLowest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralEmphasizedBlack: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralEmphasizedHigh: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralEmphasizedHigher: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralEmphasizedHighest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralEmphasizedMedium: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralMutedLower: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralMutedLowest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryNeutralMutedWhite: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackHigher: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackHighest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackLow: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackLower: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackLowest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackMedium: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityBlackTransparent: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityInfo: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityNegative: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityPositive: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWarning: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteHigh: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteHigher: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteHighest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteLow: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteLower: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteLowest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryOpacityWhiteTransparent: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPositiveDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPositiveHighest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPositiveLow: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPositiveLowest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPrimaryDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryPrimaryLow: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryWarningDefault: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryWarningHighest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryWarningLow: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
    override public var colorRepositoryWarningLowest: MultipleColorSemanticTokens { Self.otherMockThemeMultipleColorSemanticTokens }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length
// swiftlint:enable identifier_name
