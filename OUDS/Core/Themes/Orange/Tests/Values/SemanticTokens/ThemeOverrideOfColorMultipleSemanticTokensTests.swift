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

import OUDS
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
        #expect(inheritedTheme.colors.colorOpacityLowest != abstractTheme.colors.colorOpacityLowest)
        #expect(inheritedTheme.colors.colorOpacityLowest == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityLower() throws {
        #expect(inheritedTheme.colors.colorOpacityLower != abstractTheme.colors.colorOpacityLower)
        #expect(inheritedTheme.colors.colorOpacityLower == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOpacityTransparent() throws {
        #expect(inheritedTheme.colors.colorOpacityTransparent != abstractTheme.colors.colorOpacityTransparent)
        #expect(inheritedTheme.colors.colorOpacityTransparent == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Action

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        #expect(inheritedTheme.colors.colorActionDisabled != abstractTheme.colors.colorActionDisabled)
        #expect(inheritedTheme.colors.colorActionDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionEnabled() throws {
        #expect(inheritedTheme.colors.colorActionEnabled != abstractTheme.colors.colorActionEnabled)
        #expect(inheritedTheme.colors.colorActionEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionFocus() throws {
        #expect(inheritedTheme.colors.colorActionFocus != abstractTheme.colors.colorActionFocus)
        #expect(inheritedTheme.colors.colorActionFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHighlighted() throws {
        #expect(inheritedTheme.colors.colorActionHighlighted != abstractTheme.colors.colorActionHighlighted)
        #expect(inheritedTheme.colors.colorActionHighlighted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionHover() throws {
        #expect(inheritedTheme.colors.colorActionHover != abstractTheme.colors.colorActionHover)
        #expect(inheritedTheme.colors.colorActionHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionLoading() throws {
        #expect(inheritedTheme.colors.colorActionLoading != abstractTheme.colors.colorActionLoading)
        #expect(inheritedTheme.colors.colorActionLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabled() throws {
        #expect(inheritedTheme.colors.colorActionNegativeEnabled != abstractTheme.colors.colorActionNegativeEnabled)
        #expect(inheritedTheme.colors.colorActionNegativeEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeFocus() throws {
        #expect(inheritedTheme.colors.colorActionNegativeFocus != abstractTheme.colors.colorActionNegativeFocus)
        #expect(inheritedTheme.colors.colorActionNegativeFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeHover() throws {
        #expect(inheritedTheme.colors.colorActionNegativeHover != abstractTheme.colors.colorActionNegativeHover)
        #expect(inheritedTheme.colors.colorActionNegativeHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativeLoading() throws {
        #expect(inheritedTheme.colors.colorActionNegativeLoading != abstractTheme.colors.colorActionNegativeLoading)
        #expect(inheritedTheme.colors.colorActionNegativeLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionNegativePressed() throws {
        #expect(inheritedTheme.colors.colorActionNegativePressed != abstractTheme.colors.colorActionNegativePressed)
        #expect(inheritedTheme.colors.colorActionNegativePressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionPressed() throws {
        #expect(inheritedTheme.colors.colorActionPressed != abstractTheme.colors.colorActionPressed)
        #expect(inheritedTheme.colors.colorActionPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        #expect(inheritedTheme.colors.colorActionSelected != abstractTheme.colors.colorActionSelected)
        #expect(inheritedTheme.colors.colorActionSelected == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportEnabled() throws {
        #expect(inheritedTheme.colors.colorActionSupportEnabled != abstractTheme.colors.colorActionSupportEnabled)
        #expect(inheritedTheme.colors.colorActionSupportEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportDisabled() throws {
        #expect(inheritedTheme.colors.colorActionSupportDisabled != abstractTheme.colors.colorActionSupportDisabled)
        #expect(inheritedTheme.colors.colorActionSupportDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportFocus() throws {
        #expect(inheritedTheme.colors.colorActionSupportFocus != abstractTheme.colors.colorActionSupportFocus)
        #expect(inheritedTheme.colors.colorActionSupportFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportHover() throws {
        #expect(inheritedTheme.colors.colorActionSupportHover != abstractTheme.colors.colorActionSupportHover)
        #expect(inheritedTheme.colors.colorActionSupportHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportLoading() throws {
        #expect(inheritedTheme.colors.colorActionSupportLoading != abstractTheme.colors.colorActionSupportLoading)
        #expect(inheritedTheme.colors.colorActionSupportLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionSupportPressed() throws {
        #expect(inheritedTheme.colors.colorActionSupportPressed != abstractTheme.colors.colorActionSupportPressed)
        #expect(inheritedTheme.colors.colorActionSupportPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        #expect(inheritedTheme.colors.colorActionVisited != abstractTheme.colors.colorActionVisited)
        #expect(inheritedTheme.colors.colorActionVisited == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Background

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgEmphasized() throws {
        #expect(inheritedTheme.colors.colorBgInverse != abstractTheme.colors.colorBgInverse)
        #expect(inheritedTheme.colors.colorBgInverse == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgPrimary() throws {
        #expect(inheritedTheme.colors.colorBgPrimary != abstractTheme.colors.colorBgPrimary)
        #expect(inheritedTheme.colors.colorBgPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgSecondary() throws {
        #expect(inheritedTheme.colors.colorBgSecondary != abstractTheme.colors.colorBgSecondary)
        #expect(inheritedTheme.colors.colorBgSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgTertiary() throws {
        #expect(inheritedTheme.colors.colorBgTertiary != abstractTheme.colors.colorBgTertiary)
        #expect(inheritedTheme.colors.colorBgTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Border

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        #expect(inheritedTheme.colors.colorBorderBrandPrimary != abstractTheme.colors.colorBorderBrandPrimary)
        #expect(inheritedTheme.colors.colorBorderBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandSecondary() throws {
        #expect(inheritedTheme.colors.colorBorderBrandSecondary != abstractTheme.colors.colorBorderBrandSecondary)
        #expect(inheritedTheme.colors.colorBorderBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderBrandTertiary() throws {
        #expect(inheritedTheme.colors.colorBorderBrandTertiary != abstractTheme.colors.colorBorderBrandTertiary)
        #expect(inheritedTheme.colors.colorBorderBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        #expect(inheritedTheme.colors.colorBorderDefault != abstractTheme.colors.colorBorderDefault)
        #expect(inheritedTheme.colors.colorBorderDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        #expect(inheritedTheme.colors.colorBorderEmphasized != abstractTheme.colors.colorBorderEmphasized)
        #expect(inheritedTheme.colors.colorBorderEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        #expect(inheritedTheme.colors.colorBorderFocus != abstractTheme.colors.colorBorderFocus)
        #expect(inheritedTheme.colors.colorBorderFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderFocusInset() throws {
        #expect(inheritedTheme.colors.colorBorderFocusInset != abstractTheme.colors.colorBorderFocusInset)
        #expect(inheritedTheme.colors.colorBorderFocusInset == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimary() throws {
        #expect(inheritedTheme.colors.colorBorderOnBrandPrimary != abstractTheme.colors.colorBorderOnBrandPrimary)
        #expect(inheritedTheme.colors.colorBorderOnBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandSecondary() throws {
        #expect(inheritedTheme.colors.colorBorderOnBrandSecondary != abstractTheme.colors.colorBorderOnBrandSecondary)
        #expect(inheritedTheme.colors.colorBorderOnBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorBorderOnBrandTertiary() throws {
        #expect(inheritedTheme.colors.colorBorderOnBrandTertiary != abstractTheme.colors.colorBorderOnBrandTertiary)
        #expect(inheritedTheme.colors.colorBorderOnBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Content

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        #expect(inheritedTheme.colors.colorContentBrandPrimary != abstractTheme.colors.colorContentBrandPrimary)
        #expect(inheritedTheme.colors.colorContentBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandSecondary() throws {
        #expect(inheritedTheme.colors.colorContentBrandSecondary != abstractTheme.colors.colorContentBrandSecondary)
        #expect(inheritedTheme.colors.colorContentBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandTertiary() throws {
        #expect(inheritedTheme.colors.colorContentBrandTertiary != abstractTheme.colors.colorContentBrandTertiary)
        #expect(inheritedTheme.colors.colorContentBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDefault() throws {
        #expect(inheritedTheme.colors.colorContentDefault != abstractTheme.colors.colorContentDefault)
        #expect(inheritedTheme.colors.colorContentDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        #expect(inheritedTheme.colors.colorContentDisabled != abstractTheme.colors.colorContentDisabled)
        #expect(inheritedTheme.colors.colorContentDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        #expect(inheritedTheme.colors.colorContentMuted != abstractTheme.colors.colorContentMuted)
        #expect(inheritedTheme.colors.colorContentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionSelected() throws {
        #expect(inheritedTheme.colors.colorContentOnActionSelected != abstractTheme.colors.colorContentOnActionSelected)
        #expect(inheritedTheme.colors.colorContentOnActionSelected == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabled() throws {
        #expect(inheritedTheme.colors.colorContentOnActionDisabled != abstractTheme.colors.colorContentOnActionDisabled)
        #expect(inheritedTheme.colors.colorContentOnActionDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabled() throws {
        #expect(inheritedTheme.colors.colorContentOnActionEnabled != abstractTheme.colors.colorContentOnActionEnabled)
        #expect(inheritedTheme.colors.colorContentOnActionEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionFocus() throws {
        #expect(inheritedTheme.colors.colorContentOnActionFocus != abstractTheme.colors.colorContentOnActionFocus)
        #expect(inheritedTheme.colors.colorContentOnActionFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlighted() throws {
        #expect(inheritedTheme.colors.colorContentOnActionHighlighted != abstractTheme.colors.colorContentOnActionHighlighted)
        #expect(inheritedTheme.colors.colorContentOnActionHighlighted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionHover() throws {
        #expect(inheritedTheme.colors.colorContentOnActionHover != abstractTheme.colors.colorContentOnActionHover)
        #expect(inheritedTheme.colors.colorContentOnActionHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionLoading() throws {
        #expect(inheritedTheme.colors.colorContentOnActionLoading != abstractTheme.colors.colorContentOnActionLoading)
        #expect(inheritedTheme.colors.colorContentOnActionLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnActionPressed() throws {
        #expect(inheritedTheme.colors.colorContentOnActionPressed != abstractTheme.colors.colorContentOnActionPressed)
        #expect(inheritedTheme.colors.colorContentOnActionPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimary() throws {
        #expect(inheritedTheme.colors.colorContentOnBrandPrimary != abstractTheme.colors.colorContentOnBrandPrimary)
        #expect(inheritedTheme.colors.colorContentOnBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandSecondary() throws {
        #expect(inheritedTheme.colors.colorContentOnBrandSecondary != abstractTheme.colors.colorContentOnBrandSecondary)
        #expect(inheritedTheme.colors.colorContentOnBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnBrandTertiary() throws {
        #expect(inheritedTheme.colors.colorContentOnBrandTertiary != abstractTheme.colors.colorContentOnBrandTertiary)
        #expect(inheritedTheme.colors.colorContentOnBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasized() throws {
        #expect(inheritedTheme.colors.colorContentOnOverlayEmphasized != abstractTheme.colors.colorContentOnOverlayEmphasized)
        #expect(inheritedTheme.colors.colorContentOnOverlayEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNeutralMuted() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralMuted != abstractTheme.colors.colorContentOnStatusNeutralMuted)
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNeutralEmphasized() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralEmphasized != abstractTheme.colors.colorContentOnStatusNeutralEmphasized)
        #expect(inheritedTheme.colors.colorContentOnStatusNeutralEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNeegativeMuted() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeMuted != abstractTheme.colors.colorContentOnStatusNegativeMuted)
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusNegativeEmphasized() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeEmphasized != abstractTheme.colors.colorContentOnStatusNegativeEmphasized)
        #expect(inheritedTheme.colors.colorContentOnStatusNegativeEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveMuted() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveMuted != abstractTheme.colors.colorContentOnStatusPositiveMuted)
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusPositiveEmphasized() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveEmphasized != abstractTheme.colors.colorContentOnStatusPositiveEmphasized)
        #expect(inheritedTheme.colors.colorContentOnStatusPositiveEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoMuted() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusInfoMuted != abstractTheme.colors.colorContentOnStatusInfoMuted)
        #expect(inheritedTheme.colors.colorContentOnStatusInfoMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusInfoEmphasized() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusInfoEmphasized != abstractTheme.colors.colorContentOnStatusInfoEmphasized)
        #expect(inheritedTheme.colors.colorContentOnStatusInfoEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningMuted() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusWarningMuted != abstractTheme.colors.colorContentOnStatusWarningMuted)
        #expect(inheritedTheme.colors.colorContentOnStatusWarningMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusWarningEmphasized() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusWarningEmphasized != abstractTheme.colors.colorContentOnStatusWarningEmphasized)
        #expect(inheritedTheme.colors.colorContentOnStatusWarningEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentMuted() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusAccentMuted != abstractTheme.colors.colorContentOnStatusAccentMuted)
        #expect(inheritedTheme.colors.colorContentOnStatusAccentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusAccentEmphasized() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusAccentEmphasized != abstractTheme.colors.colorContentOnStatusAccentEmphasized)
        #expect(inheritedTheme.colors.colorContentOnStatusAccentEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusInfo() throws {
        #expect(inheritedTheme.colors.colorContentStatusInfo != abstractTheme.colors.colorContentStatusInfo)
        #expect(inheritedTheme.colors.colorContentStatusInfo == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusNegative() throws {
        #expect(inheritedTheme.colors.colorContentStatusNegative != abstractTheme.colors.colorContentStatusNegative)
        #expect(inheritedTheme.colors.colorContentStatusNegative == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusPositive() throws {
        #expect(inheritedTheme.colors.colorContentStatusPositive != abstractTheme.colors.colorContentStatusPositive)
        #expect(inheritedTheme.colors.colorContentStatusPositive == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentStatusWarning() throws {
        #expect(inheritedTheme.colors.colorContentStatusWarning != abstractTheme.colors.colorContentStatusWarning)
        #expect(inheritedTheme.colors.colorContentStatusWarning == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Overlay

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDefault() throws {
        #expect(inheritedTheme.colors.colorOverlayDefault != abstractTheme.colors.colorOverlayDefault)
        #expect(inheritedTheme.colors.colorOverlayDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayDrag() throws {
        #expect(inheritedTheme.colors.colorOverlayDrag != abstractTheme.colors.colorOverlayDrag)
        #expect(inheritedTheme.colors.colorOverlayDrag == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayEmphasized() throws {
        #expect(inheritedTheme.colors.colorOverlayEmphasized != abstractTheme.colors.colorOverlayEmphasized)
        #expect(inheritedTheme.colors.colorOverlayEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorOverlayModal() throws {
        #expect(inheritedTheme.colors.colorOverlayModal != abstractTheme.colors.colorOverlayModal)
        #expect(inheritedTheme.colors.colorOverlayModal == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Surface

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimary() throws {
        #expect(inheritedTheme.colors.colorSurfaceBrandPrimary != abstractTheme.colors.colorSurfaceBrandPrimary)
        #expect(inheritedTheme.colors.colorSurfaceBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandSecondary() throws {
        #expect(inheritedTheme.colors.colorSurfaceBrandSecondary != abstractTheme.colors.colorSurfaceBrandSecondary)
        #expect(inheritedTheme.colors.colorSurfaceBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceBrandTertiary() throws {
        #expect(inheritedTheme.colors.colorSurfaceBrandTertiary != abstractTheme.colors.colorSurfaceBrandTertiary)
        #expect(inheritedTheme.colors.colorSurfaceBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasized() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentEmphasized != abstractTheme.colors.colorSurfaceStatusAccentEmphasized)
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMuted() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentMuted != abstractTheme.colors.colorSurfaceStatusAccentMuted)
        #expect(inheritedTheme.colors.colorSurfaceStatusAccentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasized() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoEmphasized != abstractTheme.colors.colorSurfaceStatusInfoEmphasized)
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMuted() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoMuted != abstractTheme.colors.colorSurfaceStatusInfoMuted)
        #expect(inheritedTheme.colors.colorSurfaceStatusInfoMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasized() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasized != abstractTheme.colors.colorSurfaceStatusNegativeEmphasized)
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMuted() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeMuted != abstractTheme.colors.colorSurfaceStatusNegativeMuted)
        #expect(inheritedTheme.colors.colorSurfaceStatusNegativeMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasized() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasized != abstractTheme.colors.colorSurfaceStatusNeutralEmphasized)
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMuted() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralMuted != abstractTheme.colors.colorSurfaceStatusNeutralMuted)
        #expect(inheritedTheme.colors.colorSurfaceStatusNeutralMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasized() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasized != abstractTheme.colors.colorSurfaceStatusPositiveEmphasized)
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMuted() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveMuted != abstractTheme.colors.colorSurfaceStatusPositiveMuted)
        #expect(inheritedTheme.colors.colorSurfaceStatusPositiveMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasized() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningEmphasized != abstractTheme.colors.colorSurfaceStatusWarningEmphasized)
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMuted() throws {
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningMuted != abstractTheme.colors.colorSurfaceStatusWarningMuted)
        #expect(inheritedTheme.colors.colorSurfaceStatusWarningMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable type_name
