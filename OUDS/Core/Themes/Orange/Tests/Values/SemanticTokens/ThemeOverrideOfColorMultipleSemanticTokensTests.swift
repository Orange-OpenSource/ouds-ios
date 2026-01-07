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

import OUDSThemesContract
import OUDSThemesOrange
import OUDSTokensSemantic
import Testing

// swiftlint:disable type_body_length
// swiftlint:disable file_length
// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _abstract class_, exposing through its extensions and protocols _colors semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeColorSemanticTokensProvider``.
///
/// **These tests checks if any _colors multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfColorMultipleSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Tests

    // MARK: - Color - Opacity

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLowest() throws {
        #expect(inheritedTheme.colors.opacityLowest != abstractTheme.colors.opacityLowest)
        #expect(inheritedTheme.colors.opacityLowest == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLower() throws {
        #expect(inheritedTheme.colors.opacityLower != abstractTheme.colors.opacityLower)
        #expect(inheritedTheme.colors.opacityLower == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityTransparent() throws {
        #expect(inheritedTheme.colors.opacityTransparent != abstractTheme.colors.opacityTransparent)
        #expect(inheritedTheme.colors.opacityTransparent == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    // MARK: - Color - Action

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        #expect(inheritedTheme.colors.actionDisabled != abstractTheme.colors.actionDisabled)
        #expect(inheritedTheme.colors.actionDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionEnabled() throws {
        #expect(inheritedTheme.colors.actionEnabled != abstractTheme.colors.actionEnabled)
        #expect(inheritedTheme.colors.actionEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionFocus() throws {
        #expect(inheritedTheme.colors.actionFocus != abstractTheme.colors.actionFocus)
        #expect(inheritedTheme.colors.actionFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHighlighted() throws {
        #expect(inheritedTheme.colors.actionHighlighted != abstractTheme.colors.actionHighlighted)
        #expect(inheritedTheme.colors.actionHighlighted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHover() throws {
        #expect(inheritedTheme.colors.actionHover != abstractTheme.colors.actionHover)
        #expect(inheritedTheme.colors.actionHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionLoading() throws {
        #expect(inheritedTheme.colors.actionLoading != abstractTheme.colors.actionLoading)
        #expect(inheritedTheme.colors.actionLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabled() throws {
        #expect(inheritedTheme.colors.actionNegativeEnabled != abstractTheme.colors.actionNegativeEnabled)
        #expect(inheritedTheme.colors.actionNegativeEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeFocus() throws {
        #expect(inheritedTheme.colors.actionNegativeFocus != abstractTheme.colors.actionNegativeFocus)
        #expect(inheritedTheme.colors.actionNegativeFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeHover() throws {
        #expect(inheritedTheme.colors.actionNegativeHover != abstractTheme.colors.actionNegativeHover)
        #expect(inheritedTheme.colors.actionNegativeHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeLoading() throws {
        #expect(inheritedTheme.colors.actionNegativeLoading != abstractTheme.colors.actionNegativeLoading)
        #expect(inheritedTheme.colors.actionNegativeLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativePressed() throws {
        #expect(inheritedTheme.colors.actionNegativePressed != abstractTheme.colors.actionNegativePressed)
        #expect(inheritedTheme.colors.actionNegativePressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionPressed() throws {
        #expect(inheritedTheme.colors.actionPressed != abstractTheme.colors.actionPressed)
        #expect(inheritedTheme.colors.actionPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        #expect(inheritedTheme.colors.actionSelected != abstractTheme.colors.actionSelected)
        #expect(inheritedTheme.colors.actionSelected == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportEnabled() throws {
        #expect(inheritedTheme.colors.actionSupportEnabled != abstractTheme.colors.actionSupportEnabled)
        #expect(inheritedTheme.colors.actionSupportEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportDisabled() throws {
        #expect(inheritedTheme.colors.actionSupportDisabled != abstractTheme.colors.actionSupportDisabled)
        #expect(inheritedTheme.colors.actionSupportDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportFocus() throws {
        #expect(inheritedTheme.colors.actionSupportFocus != abstractTheme.colors.actionSupportFocus)
        #expect(inheritedTheme.colors.actionSupportFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportHover() throws {
        #expect(inheritedTheme.colors.actionSupportHover != abstractTheme.colors.actionSupportHover)
        #expect(inheritedTheme.colors.actionSupportHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportLoading() throws {
        #expect(inheritedTheme.colors.actionSupportLoading != abstractTheme.colors.actionSupportLoading)
        #expect(inheritedTheme.colors.actionSupportLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportPressed() throws {
        #expect(inheritedTheme.colors.actionSupportPressed != abstractTheme.colors.actionSupportPressed)
        #expect(inheritedTheme.colors.actionSupportPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        #expect(inheritedTheme.colors.actionVisited != abstractTheme.colors.actionVisited)
        #expect(inheritedTheme.colors.actionVisited == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    // MARK: - Color - Background

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgPrimary() throws {
        #expect(inheritedTheme.colors.bgPrimary != abstractTheme.colors.bgPrimary)
        #expect(inheritedTheme.colors.bgPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgSecondary() throws {
        #expect(inheritedTheme.colors.bgSecondary != abstractTheme.colors.bgSecondary)
        #expect(inheritedTheme.colors.bgSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgTertiary() throws {
        #expect(inheritedTheme.colors.bgTertiary != abstractTheme.colors.bgTertiary)
        #expect(inheritedTheme.colors.bgTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgInverseLow() throws {
        #expect(inheritedTheme.colors.bgInverseLow != abstractTheme.colors.bgInverseLow)
        #expect(inheritedTheme.colors.bgInverseLow == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgInverseHigh() throws {
        #expect(inheritedTheme.colors.bgInverseHigh != abstractTheme.colors.bgInverseHigh)
        #expect(inheritedTheme.colors.bgInverseHigh == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    // MARK: - Color - Border

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        #expect(inheritedTheme.colors.borderBrandPrimary != abstractTheme.colors.borderBrandPrimary)
        #expect(inheritedTheme.colors.borderBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondary() throws {
        #expect(inheritedTheme.colors.borderBrandSecondary != abstractTheme.colors.borderBrandSecondary)
        #expect(inheritedTheme.colors.borderBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiary() throws {
        #expect(inheritedTheme.colors.borderBrandTertiary != abstractTheme.colors.borderBrandTertiary)
        #expect(inheritedTheme.colors.borderBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        #expect(inheritedTheme.colors.borderDefault != abstractTheme.colors.borderDefault)
        #expect(inheritedTheme.colors.borderDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        #expect(inheritedTheme.colors.borderEmphasized != abstractTheme.colors.borderEmphasized)
        #expect(inheritedTheme.colors.borderEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        #expect(inheritedTheme.colors.borderFocus != abstractTheme.colors.borderFocus)
        #expect(inheritedTheme.colors.borderFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusInset() throws {
        #expect(inheritedTheme.colors.borderFocusInset != abstractTheme.colors.borderFocusInset)
        #expect(inheritedTheme.colors.borderFocusInset == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimary() throws {
        #expect(inheritedTheme.colors.borderOnBrandPrimary != abstractTheme.colors.borderOnBrandPrimary)
        #expect(inheritedTheme.colors.borderOnBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandSecondary() throws {
        #expect(inheritedTheme.colors.borderOnBrandSecondary != abstractTheme.colors.borderOnBrandSecondary)
        #expect(inheritedTheme.colors.borderOnBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandTertiary() throws {
        #expect(inheritedTheme.colors.borderOnBrandTertiary != abstractTheme.colors.borderOnBrandTertiary)
        #expect(inheritedTheme.colors.borderOnBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusPositive() throws {
        #expect(inheritedTheme.colors.borderStatusPositive != abstractTheme.colors.borderStatusPositive)
        #expect(inheritedTheme.colors.borderStatusPositive == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusInfo() throws {
        #expect(inheritedTheme.colors.borderStatusInfo != abstractTheme.colors.borderStatusInfo)
        #expect(inheritedTheme.colors.borderStatusInfo == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusWarning() throws {
        #expect(inheritedTheme.colors.borderStatusWarning != abstractTheme.colors.borderStatusWarning)
        #expect(inheritedTheme.colors.borderStatusWarning == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusNegative() throws {
        #expect(inheritedTheme.colors.borderStatusNegative != abstractTheme.colors.borderStatusNegative)
        #expect(inheritedTheme.colors.borderStatusNegative == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusAccent() throws {
        #expect(inheritedTheme.colors.borderStatusAccent != abstractTheme.colors.borderStatusAccent)
        #expect(inheritedTheme.colors.borderStatusAccent == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    // MARK: - Color - Content

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        #expect(inheritedTheme.colors.contentBrandPrimary != abstractTheme.colors.contentBrandPrimary)
        #expect(inheritedTheme.colors.contentBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandSecondary() throws {
        #expect(inheritedTheme.colors.contentBrandSecondary != abstractTheme.colors.contentBrandSecondary)
        #expect(inheritedTheme.colors.contentBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandTertiary() throws {
        #expect(inheritedTheme.colors.contentBrandTertiary != abstractTheme.colors.contentBrandTertiary)
        #expect(inheritedTheme.colors.contentBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDefault() throws {
        #expect(inheritedTheme.colors.contentDefault != abstractTheme.colors.contentDefault)
        #expect(inheritedTheme.colors.contentDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        #expect(inheritedTheme.colors.contentDisabled != abstractTheme.colors.contentDisabled)
        #expect(inheritedTheme.colors.contentDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        #expect(inheritedTheme.colors.contentMuted != abstractTheme.colors.contentMuted)
        #expect(inheritedTheme.colors.contentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionSelected() throws {
        #expect(inheritedTheme.colors.contentOnActionSelected != abstractTheme.colors.contentOnActionSelected)
        #expect(inheritedTheme.colors.contentOnActionSelected == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabled() throws {
        #expect(inheritedTheme.colors.contentOnActionDisabled != abstractTheme.colors.contentOnActionDisabled)
        #expect(inheritedTheme.colors.contentOnActionDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabled() throws {
        #expect(inheritedTheme.colors.contentOnActionEnabled != abstractTheme.colors.contentOnActionEnabled)
        #expect(inheritedTheme.colors.contentOnActionEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionFocus() throws {
        #expect(inheritedTheme.colors.contentOnActionFocus != abstractTheme.colors.contentOnActionFocus)
        #expect(inheritedTheme.colors.contentOnActionFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlighted() throws {
        #expect(inheritedTheme.colors.contentOnActionHighlighted != abstractTheme.colors.contentOnActionHighlighted)
        #expect(inheritedTheme.colors.contentOnActionHighlighted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHover() throws {
        #expect(inheritedTheme.colors.contentOnActionHover != abstractTheme.colors.contentOnActionHover)
        #expect(inheritedTheme.colors.contentOnActionHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionLoading() throws {
        #expect(inheritedTheme.colors.contentOnActionLoading != abstractTheme.colors.contentOnActionLoading)
        #expect(inheritedTheme.colors.contentOnActionLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionPressed() throws {
        #expect(inheritedTheme.colors.contentOnActionPressed != abstractTheme.colors.contentOnActionPressed)
        #expect(inheritedTheme.colors.contentOnActionPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimary() throws {
        #expect(inheritedTheme.colors.contentOnBrandPrimary != abstractTheme.colors.contentOnBrandPrimary)
        #expect(inheritedTheme.colors.contentOnBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandSecondary() throws {
        #expect(inheritedTheme.colors.contentOnBrandSecondary != abstractTheme.colors.contentOnBrandSecondary)
        #expect(inheritedTheme.colors.contentOnBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandTertiary() throws {
        #expect(inheritedTheme.colors.contentOnBrandTertiary != abstractTheme.colors.contentOnBrandTertiary)
        #expect(inheritedTheme.colors.contentOnBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentInverse() throws {
        #expect(inheritedTheme.colors.contentInverse != abstractTheme.colors.contentInverse)
        #expect(inheritedTheme.colors.contentInverse == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusNegativeMuted != abstractTheme.colors.contentOnStatusNegativeMuted)
        #expect(inheritedTheme.colors.contentOnStatusNegativeMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusNegativeEmphasized != abstractTheme.colors.contentOnStatusNegativeEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusNegativeEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusPositiveMuted != abstractTheme.colors.contentOnStatusPositiveMuted)
        #expect(inheritedTheme.colors.contentOnStatusPositiveMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusPositiveEmphasized != abstractTheme.colors.contentOnStatusPositiveEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusPositiveEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusInfoMuted != abstractTheme.colors.contentOnStatusInfoMuted)
        #expect(inheritedTheme.colors.contentOnStatusInfoMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusInfoEmphasized != abstractTheme.colors.contentOnStatusInfoEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusInfoEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusWarningMuted != abstractTheme.colors.contentOnStatusWarningMuted)
        #expect(inheritedTheme.colors.contentOnStatusWarningMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusWarningEmphasized != abstractTheme.colors.contentOnStatusWarningEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusWarningEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusAccentMuted != abstractTheme.colors.contentOnStatusAccentMuted)
        #expect(inheritedTheme.colors.contentOnStatusAccentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusAccentEmphasized != abstractTheme.colors.contentOnStatusAccentEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusAccentEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInfo() throws {
        #expect(inheritedTheme.colors.contentStatusInfo != abstractTheme.colors.contentStatusInfo)
        #expect(inheritedTheme.colors.contentStatusInfo == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusNegative() throws {
        #expect(inheritedTheme.colors.contentStatusNegative != abstractTheme.colors.contentStatusNegative)
        #expect(inheritedTheme.colors.contentStatusNegative == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusPositive() throws {
        #expect(inheritedTheme.colors.contentStatusPositive != abstractTheme.colors.contentStatusPositive)
        #expect(inheritedTheme.colors.contentStatusPositive == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusWarning() throws {
        #expect(inheritedTheme.colors.contentStatusWarning != abstractTheme.colors.contentStatusWarning)
        #expect(inheritedTheme.colors.contentStatusWarning == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    // MARK: - Color - Overlay

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDropDown() throws {
        #expect(inheritedTheme.colors.overlayDropdown != abstractTheme.colors.overlayDropdown)
        #expect(inheritedTheme.colors.overlayDropdown == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayTooltip() throws {
        #expect(inheritedTheme.colors.overlayTooltip != abstractTheme.colors.overlayTooltip)
        #expect(inheritedTheme.colors.overlayTooltip == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDrag() throws {
        #expect(inheritedTheme.colors.overlayDrag != abstractTheme.colors.overlayDrag)
        #expect(inheritedTheme.colors.overlayDrag == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayModal() throws {
        #expect(inheritedTheme.colors.overlayModal != abstractTheme.colors.overlayModal)
        #expect(inheritedTheme.colors.overlayModal == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    // MARK: - Color - Surface

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimary() throws {
        #expect(inheritedTheme.colors.surfaceBrandPrimary != abstractTheme.colors.surfaceBrandPrimary)
        #expect(inheritedTheme.colors.surfaceBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandSecondary() throws {
        #expect(inheritedTheme.colors.surfaceBrandSecondary != abstractTheme.colors.surfaceBrandSecondary)
        #expect(inheritedTheme.colors.surfaceBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandTertiary() throws {
        #expect(inheritedTheme.colors.surfaceBrandTertiary != abstractTheme.colors.surfaceBrandTertiary)
        #expect(inheritedTheme.colors.surfaceBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusAccentEmphasized != abstractTheme.colors.surfaceStatusAccentEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusAccentEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusAccentMuted != abstractTheme.colors.surfaceStatusAccentMuted)
        #expect(inheritedTheme.colors.surfaceStatusAccentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusInfoEmphasized != abstractTheme.colors.surfaceStatusInfoEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusInfoEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusInfoMuted != abstractTheme.colors.surfaceStatusInfoMuted)
        #expect(inheritedTheme.colors.surfaceStatusInfoMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusNegativeEmphasized != abstractTheme.colors.surfaceStatusNegativeEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusNegativeEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusNegativeMuted != abstractTheme.colors.surfaceStatusNegativeMuted)
        #expect(inheritedTheme.colors.surfaceStatusNegativeMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceInverseHigh() throws {
        #expect(inheritedTheme.colors.surfaceInverseHigh != abstractTheme.colors.surfaceInverseHigh)
        #expect(inheritedTheme.colors.surfaceInverseHigh == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceInverseLow() throws {
        #expect(inheritedTheme.colors.surfaceInverseLow != abstractTheme.colors.surfaceInverseLow)
        #expect(inheritedTheme.colors.surfaceInverseLow == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfacePrimary() throws {
        #expect(inheritedTheme.colors.surfacePrimary != abstractTheme.colors.surfacePrimary)
        #expect(inheritedTheme.colors.surfacePrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceSecondary() throws {
        #expect(inheritedTheme.colors.surfaceSecondary != abstractTheme.colors.surfaceSecondary)
        #expect(inheritedTheme.colors.surfaceSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceTertiary() throws {
        #expect(inheritedTheme.colors.surfaceTertiary != abstractTheme.colors.surfaceTertiary)
        #expect(inheritedTheme.colors.surfaceTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusPositiveEmphasized != abstractTheme.colors.surfaceStatusPositiveEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusPositiveEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusPositiveMuted != abstractTheme.colors.surfaceStatusPositiveMuted)
        #expect(inheritedTheme.colors.surfaceStatusPositiveMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusWarningEmphasized != abstractTheme.colors.surfaceStatusWarningEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusWarningEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusWarningMuted != abstractTheme.colors.surfaceStatusWarningMuted)
        #expect(inheritedTheme.colors.surfaceStatusWarningMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticToken)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable type_name
