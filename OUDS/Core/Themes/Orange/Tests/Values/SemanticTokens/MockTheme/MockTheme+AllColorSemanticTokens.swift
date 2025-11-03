//
// Software Name: OUDSThemesContract iOS
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

    override public var opacityLowestLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var opacityLowestDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var opacityLowerLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var opacityLowerDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var opacityTransparentLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var opacityTransparentDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var actionDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionHighlightedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionNegativeEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionNegativeFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionNegativeHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionNegativeLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionNegativePressedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var actionNegativeEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionNegativeFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionNegativeHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionNegativeLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionNegativePressedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var actionPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSelectedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSupportEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSupportDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSupportFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSupportHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSupportLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSupportPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var actionSupportEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSupportDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSupportFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSupportHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSupportLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSupportPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var actionVisitedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionHighlightedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionSelectedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var actionVisitedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var bgInverseLowLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var bgInverseHighLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var bgPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var bgSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var bgTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var bgInverseLowDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var bgInverseHighDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var bgPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var bgSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var bgTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var borderBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderFocusInsetLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderOnBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderOnBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderOnBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var borderOnBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderOnBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderOnBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderDefaultDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var borderFocusInsetDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var contentBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentDefaultLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var contentOnActionSelectedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionDisabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionEnabledLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionFocusLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionHighlightedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionHoverLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionLoadingLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionPressedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var contentOnActionSelectedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionDisabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionEnabledDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionFocusDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionHighlightedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionHoverDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionLoadingDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnActionPressedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var contentOnBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusPositiveMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusPositiveMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusPositiveEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusPositiveEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentInverseLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentInverseDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusNegativeMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusNegativeMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusNegativeEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusNegativeEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusWarningMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusWarningMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusWarningEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusWarningEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusAccentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusAccentMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusAccentEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusAccentEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusInfoMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusInfoMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusInfoEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentOnStatusInfoEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentStatusInfoLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentStatusNegativeLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentStatusPositiveLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentStatusWarningLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentStatusInfoDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentStatusNegativeDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var contentStatusPositiveDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var contentStatusWarningDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var overlayDropdownLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var overlayDragLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var overlayModalLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var overlayDropdownDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var overlayDragDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var overlayModalDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    override public var surfaceBrandPrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceBrandPrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceBrandSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceBrandSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceBrandTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceBrandTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusAccentEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusAccentMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusAccentEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusAccentMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusInfoEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusInfoMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusInfoEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusInfoMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusNegativeEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusNegativeMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusNegativeEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusNegativeMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceInverseHighLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceInverseLowLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfacePrimaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceSecondaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceTertiaryLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceInverseHighDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceInverseLowDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfacePrimaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceSecondaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceTertiaryDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusPositiveEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusPositiveMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusPositiveEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusPositiveMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusWarningEmphasizedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusWarningMutedLight: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusWarningEmphasizedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var surfaceStatusWarningMutedDark: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    // MARK: - Color semantic tokens - Multiples

    // MARK: - Color - Opacity

    override public var opacityLowest: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var opacityLower: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var opacityTransparent: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Action

    override public var actionDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionHighlighted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionNegativeEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionNegativeFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionNegativeHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionNegativeLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionNegativePressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionPressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionSelected: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionSupportEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionSupportDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionSupportFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionSupportHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionSupportLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionSupportPressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var actionVisited: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Always

    override public var alwaysBlack: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var alwaysOnBlack: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var alwaysOnWhite: ColorSemanticToken { Self.mockThemeSemanticColorToken }
    override public var alwaysWhite: ColorSemanticToken { Self.mockThemeSemanticColorToken }

    // MARK: - Color - Background

    override public var bgPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var bgSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var bgTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var bgInverseLow: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var bgInverseHigh: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Border

    override public var borderBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var borderBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var borderBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var borderDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var borderEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var borderFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var borderFocusInset: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var borderOnBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var borderOnBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var borderOnBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Content

    override public var contentBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentDefault: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentOnActionDisabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentOnActionEnabled: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentOnActionFocus: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentOnActionHighlighted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentOnActionHover: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentOnActionLoading: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentOnActionPressed: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentOnBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentOnBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentOnBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentInverse: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentOnStatusNegativeEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentStatusInfo: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentStatusNegative: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentStatusPositive: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var contentStatusWarning: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Overlay

    override public var overlayDropdown: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var overlayDrag: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var overlayModal: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }

    // MARK: - Color - Surface

    override public var surfaceBrandPrimary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceBrandSecondary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceBrandTertiary: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceStatusAccentEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceStatusAccentMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceStatusInfoEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceStatusInfoMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceStatusNegativeEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceStatusNegativeMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceStatusPositiveEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceStatusPositiveMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceStatusWarningEmphasized: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
    override public var surfaceStatusWarningMuted: MultipleColorSemanticTokens { Self.mockThemeMultipleColorSemanticTokens }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_body_length
