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
        #expect(inheritedTheme.colors.opacityLowest == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLower() throws {
        #expect(inheritedTheme.colors.opacityLower != abstractTheme.colors.opacityLower)
        #expect(inheritedTheme.colors.opacityLower == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityTransparent() throws {
        #expect(inheritedTheme.colors.opacityTransparent != abstractTheme.colors.opacityTransparent)
        #expect(inheritedTheme.colors.opacityTransparent == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Action

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        #expect(inheritedTheme.colors.actionDisabled != abstractTheme.colors.actionDisabled)
        #expect(inheritedTheme.colors.actionDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionEnabled() throws {
        #expect(inheritedTheme.colors.actionEnabled != abstractTheme.colors.actionEnabled)
        #expect(inheritedTheme.colors.actionEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionFocus() throws {
        #expect(inheritedTheme.colors.actionFocus != abstractTheme.colors.actionFocus)
        #expect(inheritedTheme.colors.actionFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHighlighted() throws {
        #expect(inheritedTheme.colors.actionHighlighted != abstractTheme.colors.actionHighlighted)
        #expect(inheritedTheme.colors.actionHighlighted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHover() throws {
        #expect(inheritedTheme.colors.actionHover != abstractTheme.colors.actionHover)
        #expect(inheritedTheme.colors.actionHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionLoading() throws {
        #expect(inheritedTheme.colors.actionLoading != abstractTheme.colors.actionLoading)
        #expect(inheritedTheme.colors.actionLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabled() throws {
        #expect(inheritedTheme.colors.actionNegativeEnabled != abstractTheme.colors.actionNegativeEnabled)
        #expect(inheritedTheme.colors.actionNegativeEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeFocus() throws {
        #expect(inheritedTheme.colors.actionNegativeFocus != abstractTheme.colors.actionNegativeFocus)
        #expect(inheritedTheme.colors.actionNegativeFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeHover() throws {
        #expect(inheritedTheme.colors.actionNegativeHover != abstractTheme.colors.actionNegativeHover)
        #expect(inheritedTheme.colors.actionNegativeHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeLoading() throws {
        #expect(inheritedTheme.colors.actionNegativeLoading != abstractTheme.colors.actionNegativeLoading)
        #expect(inheritedTheme.colors.actionNegativeLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativePressed() throws {
        #expect(inheritedTheme.colors.actionNegativePressed != abstractTheme.colors.actionNegativePressed)
        #expect(inheritedTheme.colors.actionNegativePressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionPressed() throws {
        #expect(inheritedTheme.colors.actionPressed != abstractTheme.colors.actionPressed)
        #expect(inheritedTheme.colors.actionPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        #expect(inheritedTheme.colors.actionSelected != abstractTheme.colors.actionSelected)
        #expect(inheritedTheme.colors.actionSelected == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportEnabled() throws {
        #expect(inheritedTheme.colors.actionSupportEnabled != abstractTheme.colors.actionSupportEnabled)
        #expect(inheritedTheme.colors.actionSupportEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportDisabled() throws {
        #expect(inheritedTheme.colors.actionSupportDisabled != abstractTheme.colors.actionSupportDisabled)
        #expect(inheritedTheme.colors.actionSupportDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportFocus() throws {
        #expect(inheritedTheme.colors.actionSupportFocus != abstractTheme.colors.actionSupportFocus)
        #expect(inheritedTheme.colors.actionSupportFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportHover() throws {
        #expect(inheritedTheme.colors.actionSupportHover != abstractTheme.colors.actionSupportHover)
        #expect(inheritedTheme.colors.actionSupportHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportLoading() throws {
        #expect(inheritedTheme.colors.actionSupportLoading != abstractTheme.colors.actionSupportLoading)
        #expect(inheritedTheme.colors.actionSupportLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportPressed() throws {
        #expect(inheritedTheme.colors.actionSupportPressed != abstractTheme.colors.actionSupportPressed)
        #expect(inheritedTheme.colors.actionSupportPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        #expect(inheritedTheme.colors.actionVisited != abstractTheme.colors.actionVisited)
        #expect(inheritedTheme.colors.actionVisited == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Background

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgPrimary() throws {
        #expect(inheritedTheme.colors.bgPrimary != abstractTheme.colors.bgPrimary)
        #expect(inheritedTheme.colors.bgPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgSecondary() throws {
        #expect(inheritedTheme.colors.bgSecondary != abstractTheme.colors.bgSecondary)
        #expect(inheritedTheme.colors.bgSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgTertiary() throws {
        #expect(inheritedTheme.colors.bgTertiary != abstractTheme.colors.bgTertiary)
        #expect(inheritedTheme.colors.bgTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgInverseLow() throws {
        #expect(inheritedTheme.colors.bgInverseLow != abstractTheme.colors.bgInverseLow)
        #expect(inheritedTheme.colors.bgInverseLow == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgInverseHigh() throws {
        #expect(inheritedTheme.colors.bgInverseHigh != abstractTheme.colors.bgInverseHigh)
        #expect(inheritedTheme.colors.bgInverseHigh == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Border

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        #expect(inheritedTheme.colors.borderBrandPrimary != abstractTheme.colors.borderBrandPrimary)
        #expect(inheritedTheme.colors.borderBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondary() throws {
        #expect(inheritedTheme.colors.borderBrandSecondary != abstractTheme.colors.borderBrandSecondary)
        #expect(inheritedTheme.colors.borderBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiary() throws {
        #expect(inheritedTheme.colors.borderBrandTertiary != abstractTheme.colors.borderBrandTertiary)
        #expect(inheritedTheme.colors.borderBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        #expect(inheritedTheme.colors.borderDefault != abstractTheme.colors.borderDefault)
        #expect(inheritedTheme.colors.borderDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        #expect(inheritedTheme.colors.borderEmphasized != abstractTheme.colors.borderEmphasized)
        #expect(inheritedTheme.colors.borderEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        #expect(inheritedTheme.colors.borderFocus != abstractTheme.colors.borderFocus)
        #expect(inheritedTheme.colors.borderFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusInset() throws {
        #expect(inheritedTheme.colors.borderFocusInset != abstractTheme.colors.borderFocusInset)
        #expect(inheritedTheme.colors.borderFocusInset == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimary() throws {
        #expect(inheritedTheme.colors.borderOnBrandPrimary != abstractTheme.colors.borderOnBrandPrimary)
        #expect(inheritedTheme.colors.borderOnBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandSecondary() throws {
        #expect(inheritedTheme.colors.borderOnBrandSecondary != abstractTheme.colors.borderOnBrandSecondary)
        #expect(inheritedTheme.colors.borderOnBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandTertiary() throws {
        #expect(inheritedTheme.colors.borderOnBrandTertiary != abstractTheme.colors.borderOnBrandTertiary)
        #expect(inheritedTheme.colors.borderOnBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusPositive() throws {
        #expect(inheritedTheme.colors.borderStatusPositive != abstractTheme.colors.borderStatusPositive)
        #expect(inheritedTheme.colors.borderStatusPositive == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusInfo() throws {
        #expect(inheritedTheme.colors.borderStatusInfo != abstractTheme.colors.borderStatusInfo)
        #expect(inheritedTheme.colors.borderStatusInfo == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusWarning() throws {
        #expect(inheritedTheme.colors.borderStatusWarning != abstractTheme.colors.borderStatusWarning)
        #expect(inheritedTheme.colors.borderStatusWarning == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusNegative() throws {
        #expect(inheritedTheme.colors.borderStatusNegative != abstractTheme.colors.borderStatusNegative)
        #expect(inheritedTheme.colors.borderStatusNegative == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderStatusAccent() throws {
        #expect(inheritedTheme.colors.borderStatusAccent != abstractTheme.colors.borderStatusAccent)
        #expect(inheritedTheme.colors.borderStatusAccent == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Content

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        #expect(inheritedTheme.colors.contentBrandPrimary != abstractTheme.colors.contentBrandPrimary)
        #expect(inheritedTheme.colors.contentBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandSecondary() throws {
        #expect(inheritedTheme.colors.contentBrandSecondary != abstractTheme.colors.contentBrandSecondary)
        #expect(inheritedTheme.colors.contentBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandTertiary() throws {
        #expect(inheritedTheme.colors.contentBrandTertiary != abstractTheme.colors.contentBrandTertiary)
        #expect(inheritedTheme.colors.contentBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDefault() throws {
        #expect(inheritedTheme.colors.contentDefault != abstractTheme.colors.contentDefault)
        #expect(inheritedTheme.colors.contentDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        #expect(inheritedTheme.colors.contentDisabled != abstractTheme.colors.contentDisabled)
        #expect(inheritedTheme.colors.contentDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        #expect(inheritedTheme.colors.contentMuted != abstractTheme.colors.contentMuted)
        #expect(inheritedTheme.colors.contentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionSelected() throws {
        #expect(inheritedTheme.colors.contentOnActionSelected != abstractTheme.colors.contentOnActionSelected)
        #expect(inheritedTheme.colors.contentOnActionSelected == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabled() throws {
        #expect(inheritedTheme.colors.contentOnActionDisabled != abstractTheme.colors.contentOnActionDisabled)
        #expect(inheritedTheme.colors.contentOnActionDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabled() throws {
        #expect(inheritedTheme.colors.contentOnActionEnabled != abstractTheme.colors.contentOnActionEnabled)
        #expect(inheritedTheme.colors.contentOnActionEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionFocus() throws {
        #expect(inheritedTheme.colors.contentOnActionFocus != abstractTheme.colors.contentOnActionFocus)
        #expect(inheritedTheme.colors.contentOnActionFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlighted() throws {
        #expect(inheritedTheme.colors.contentOnActionHighlighted != abstractTheme.colors.contentOnActionHighlighted)
        #expect(inheritedTheme.colors.contentOnActionHighlighted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHover() throws {
        #expect(inheritedTheme.colors.contentOnActionHover != abstractTheme.colors.contentOnActionHover)
        #expect(inheritedTheme.colors.contentOnActionHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionLoading() throws {
        #expect(inheritedTheme.colors.contentOnActionLoading != abstractTheme.colors.contentOnActionLoading)
        #expect(inheritedTheme.colors.contentOnActionLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionPressed() throws {
        #expect(inheritedTheme.colors.contentOnActionPressed != abstractTheme.colors.contentOnActionPressed)
        #expect(inheritedTheme.colors.contentOnActionPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimary() throws {
        #expect(inheritedTheme.colors.contentOnBrandPrimary != abstractTheme.colors.contentOnBrandPrimary)
        #expect(inheritedTheme.colors.contentOnBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandSecondary() throws {
        #expect(inheritedTheme.colors.contentOnBrandSecondary != abstractTheme.colors.contentOnBrandSecondary)
        #expect(inheritedTheme.colors.contentOnBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandTertiary() throws {
        #expect(inheritedTheme.colors.contentOnBrandTertiary != abstractTheme.colors.contentOnBrandTertiary)
        #expect(inheritedTheme.colors.contentOnBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentInverse() throws {
        #expect(inheritedTheme.colors.contentInverse != abstractTheme.colors.contentInverse)
        #expect(inheritedTheme.colors.contentInverse == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusNegativeMuted != abstractTheme.colors.contentOnStatusNegativeMuted)
        #expect(inheritedTheme.colors.contentOnStatusNegativeMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusNegativeEmphasized != abstractTheme.colors.contentOnStatusNegativeEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusNegativeEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusPositiveMuted != abstractTheme.colors.contentOnStatusPositiveMuted)
        #expect(inheritedTheme.colors.contentOnStatusPositiveMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusPositiveEmphasized != abstractTheme.colors.contentOnStatusPositiveEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusPositiveEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusInfoMuted != abstractTheme.colors.contentOnStatusInfoMuted)
        #expect(inheritedTheme.colors.contentOnStatusInfoMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusInfoEmphasized != abstractTheme.colors.contentOnStatusInfoEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusInfoEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusWarningMuted != abstractTheme.colors.contentOnStatusWarningMuted)
        #expect(inheritedTheme.colors.contentOnStatusWarningMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusWarningEmphasized != abstractTheme.colors.contentOnStatusWarningEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusWarningEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentMuted() throws {
        #expect(inheritedTheme.colors.contentOnStatusAccentMuted != abstractTheme.colors.contentOnStatusAccentMuted)
        #expect(inheritedTheme.colors.contentOnStatusAccentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentEmphasized() throws {
        #expect(inheritedTheme.colors.contentOnStatusAccentEmphasized != abstractTheme.colors.contentOnStatusAccentEmphasized)
        #expect(inheritedTheme.colors.contentOnStatusAccentEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInfo() throws {
        #expect(inheritedTheme.colors.contentStatusInfo != abstractTheme.colors.contentStatusInfo)
        #expect(inheritedTheme.colors.contentStatusInfo == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusNegative() throws {
        #expect(inheritedTheme.colors.contentStatusNegative != abstractTheme.colors.contentStatusNegative)
        #expect(inheritedTheme.colors.contentStatusNegative == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusPositive() throws {
        #expect(inheritedTheme.colors.contentStatusPositive != abstractTheme.colors.contentStatusPositive)
        #expect(inheritedTheme.colors.contentStatusPositive == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusWarning() throws {
        #expect(inheritedTheme.colors.contentStatusWarning != abstractTheme.colors.contentStatusWarning)
        #expect(inheritedTheme.colors.contentStatusWarning == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Overlay

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDropDown() throws {
        #expect(inheritedTheme.colors.overlayDropdown != abstractTheme.colors.overlayDropdown)
        #expect(inheritedTheme.colors.overlayDropdown == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayTooltip() throws {
        #expect(inheritedTheme.colors.overlayTooltip != abstractTheme.colors.overlayTooltip)
        #expect(inheritedTheme.colors.overlayTooltip == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDrag() throws {
        #expect(inheritedTheme.colors.overlayDrag != abstractTheme.colors.overlayDrag)
        #expect(inheritedTheme.colors.overlayDrag == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayModal() throws {
        #expect(inheritedTheme.colors.overlayModal != abstractTheme.colors.overlayModal)
        #expect(inheritedTheme.colors.overlayModal == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Surface

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimary() throws {
        #expect(inheritedTheme.colors.surfaceBrandPrimary != abstractTheme.colors.surfaceBrandPrimary)
        #expect(inheritedTheme.colors.surfaceBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandSecondary() throws {
        #expect(inheritedTheme.colors.surfaceBrandSecondary != abstractTheme.colors.surfaceBrandSecondary)
        #expect(inheritedTheme.colors.surfaceBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandTertiary() throws {
        #expect(inheritedTheme.colors.surfaceBrandTertiary != abstractTheme.colors.surfaceBrandTertiary)
        #expect(inheritedTheme.colors.surfaceBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusAccentEmphasized != abstractTheme.colors.surfaceStatusAccentEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusAccentEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusAccentMuted != abstractTheme.colors.surfaceStatusAccentMuted)
        #expect(inheritedTheme.colors.surfaceStatusAccentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusInfoEmphasized != abstractTheme.colors.surfaceStatusInfoEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusInfoEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusInfoMuted != abstractTheme.colors.surfaceStatusInfoMuted)
        #expect(inheritedTheme.colors.surfaceStatusInfoMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusNegativeEmphasized != abstractTheme.colors.surfaceStatusNegativeEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusNegativeEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusNegativeMuted != abstractTheme.colors.surfaceStatusNegativeMuted)
        #expect(inheritedTheme.colors.surfaceStatusNegativeMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceInverseHigh() throws {
        #expect(inheritedTheme.colors.surfaceInverseHigh != abstractTheme.colors.surfaceInverseHigh)
        #expect(inheritedTheme.colors.surfaceInverseHigh == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceInverseLow() throws {
        #expect(inheritedTheme.colors.surfaceInverseLow != abstractTheme.colors.surfaceInverseLow)
        #expect(inheritedTheme.colors.surfaceInverseLow == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfacePrimary() throws {
        #expect(inheritedTheme.colors.surfacePrimary != abstractTheme.colors.surfacePrimary)
        #expect(inheritedTheme.colors.surfacePrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceSecondary() throws {
        #expect(inheritedTheme.colors.surfaceSecondary != abstractTheme.colors.surfaceSecondary)
        #expect(inheritedTheme.colors.surfaceSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceTertiary() throws {
        #expect(inheritedTheme.colors.surfaceTertiary != abstractTheme.colors.surfaceTertiary)
        #expect(inheritedTheme.colors.surfaceTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusPositiveEmphasized != abstractTheme.colors.surfaceStatusPositiveEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusPositiveEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusPositiveMuted != abstractTheme.colors.surfaceStatusPositiveMuted)
        #expect(inheritedTheme.colors.surfaceStatusPositiveMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasized() throws {
        #expect(inheritedTheme.colors.surfaceStatusWarningEmphasized != abstractTheme.colors.surfaceStatusWarningEmphasized)
        #expect(inheritedTheme.colors.surfaceStatusWarningEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMuted() throws {
        #expect(inheritedTheme.colors.surfaceStatusWarningMuted != abstractTheme.colors.surfaceStatusWarningMuted)
        #expect(inheritedTheme.colors.surfaceStatusWarningMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable type_name
