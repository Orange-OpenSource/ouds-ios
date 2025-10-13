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
    override public var colorActionSupportDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorActionSupportEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSupportPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorActionVisitedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionHighlightedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionSelectedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorActionVisitedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorBgInverseLowLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgInverseHighLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorBgInverseLowDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgInverseHighDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBgTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorBorderBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderFocusInsetLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderOnBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderOnBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderOnBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorBorderOnBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderOnBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderOnBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorBorderFocusInsetDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorContentBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorContentOnActionSelectedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionHighlightedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorContentOnActionSelectedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionHighlightedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnActionPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var colorContentOnBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnOverlayEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnOverlayEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusPositiveMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusPositiveMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusPositiveEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusPositiveEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentInverseLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentInverseDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusNegativeMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusNegativeMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusNegativeEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusNegativeEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusWarningMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusWarningMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusWarningEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusWarningEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusAccentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusAccentMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusAccentEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusAccentEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusInfoMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusInfoMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusInfoEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorContentOnStatusInfoEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
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
    override public var colorSurfaceBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
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
    override public var colorSurfaceInverseHighLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceInverseLowLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceInverseHighDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceInverseLowDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusPositiveMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorSurfaceStatusWarningMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    // MARK: - Color semantic tokens - Multiples

    // MARK: - Color - Opacity

    override public var colorOpacityLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorOpacityLower: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorOpacityTransparent: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

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
    override public var colorActionSupportDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionSupportPressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorActionVisited: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Always

    override public var colorAlwaysBlack: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorAlwaysOnBlack: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorAlwaysOnWhite: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorAlwaysWhite: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    // MARK: - Color - Background

    override public var colorBgInverse: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBgPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBgSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBgTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Border

    override public var colorBorderBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderFocusInset: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderOnBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderOnBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorBorderOnBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Content

    override public var colorContentBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
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
    override public var colorContentOnBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnOverlayEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentInverse: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorContentOnStatusNegativeEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
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
    override public var colorSurfaceBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusAccentEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusAccentMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusInfoEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusInfoMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusNegativeEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusNegativeMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceInverse: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusNeutralMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusPositiveEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusPositiveMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusWarningEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var colorSurfaceStatusWarningMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Decorative

    override public var colorDecorativeAccent1Default: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent1Emphasized: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent1Muted: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent2Default: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent2Emphasized: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent2Muted: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent3Default: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent3Emphasized: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent3Muted: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent4Default: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent4Emphasized: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent4Muted: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent5Default: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent5Emphasized: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeAccent5Muted: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeBrandPrimary: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeBrandSecondary: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeBrandTertiary: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint100: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint200: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint300: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint400: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint500: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint600: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint700: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint800: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeSkinTint900: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeNeutralEmphasizedHigher: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeNeutralEmphasizedLow: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeNeutralEmphasizedLower: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeNeutralEmphasizedLowest: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeNeutralMutedHigh: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeNeutralMutedHigher: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeNeutralMutedHighest: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeNeutralMutedLow: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeNeutralMutedLower: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeNeutralMutedLowest: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var colorDecorativeNeutralMutedMedium: ColorSemanticToken { Self.mockThemeSemanticColorToken }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length
