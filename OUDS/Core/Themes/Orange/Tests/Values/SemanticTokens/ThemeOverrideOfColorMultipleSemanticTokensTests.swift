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

    // MARK: - Color - Always

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysBlack() throws {
        #expect(inheritedTheme.colors.colorAlwaysBlack != abstractTheme.colors.colorAlwaysBlack)
        #expect(inheritedTheme.colors.colorAlwaysBlack == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlack() throws {
        #expect(inheritedTheme.colors.colorAlwaysOnBlack != abstractTheme.colors.colorAlwaysOnBlack)
        #expect(inheritedTheme.colors.colorAlwaysOnBlack == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhite() throws {
        #expect(inheritedTheme.colors.colorAlwaysOnWhite != abstractTheme.colors.colorAlwaysOnWhite)
        #expect(inheritedTheme.colors.colorAlwaysOnWhite == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorAlwaysWhite() throws {
        #expect(inheritedTheme.colors.colorAlwaysWhite != abstractTheme.colors.colorAlwaysWhite)
        #expect(inheritedTheme.colors.colorAlwaysWhite == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Background

    @Test func inheritedThemeCanOverrideSemanticTokenColorBgEmphasized() throws {
        #expect(inheritedTheme.colors.colorBgEmphasized != abstractTheme.colors.colorBgEmphasized)
        #expect(inheritedTheme.colors.colorBgEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
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

    // MARK: - Color - Content

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        #expect(inheritedTheme.colors.colorContentBrandPrimary != abstractTheme.colors.colorContentBrandPrimary)
        #expect(inheritedTheme.colors.colorContentBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
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

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasized() throws {
        #expect(inheritedTheme.colors.colorContentOnOverlayEmphasized != abstractTheme.colors.colorContentOnOverlayEmphasized)
        #expect(inheritedTheme.colors.colorContentOnOverlayEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasized() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusEmphasized != abstractTheme.colors.colorContentOnStatusEmphasized)
        #expect(inheritedTheme.colors.colorContentOnStatusEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedAlt() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusEmphasizedAlt != abstractTheme.colors.colorContentOnStatusEmphasizedAlt)
        #expect(inheritedTheme.colors.colorContentOnStatusEmphasizedAlt == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorContentOnStatusMuted() throws {
        #expect(inheritedTheme.colors.colorContentOnStatusMuted != abstractTheme.colors.colorContentOnStatusMuted)
        #expect(inheritedTheme.colors.colorContentOnStatusMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
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

    // MARK: - Color - Decorative

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent1Default != abstractTheme.colors.colorDecorativeAccent1Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent1Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent1Emphasized != abstractTheme.colors.colorDecorativeAccent1Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent1Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent1Muted != abstractTheme.colors.colorDecorativeAccent1Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent1Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent2Default != abstractTheme.colors.colorDecorativeAccent2Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent2Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent2Emphasized != abstractTheme.colors.colorDecorativeAccent2Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent2Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent2Muted != abstractTheme.colors.colorDecorativeAccent2Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent2Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent3Default != abstractTheme.colors.colorDecorativeAccent3Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent3Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent3Emphasized != abstractTheme.colors.colorDecorativeAccent3Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent3Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent3Muted != abstractTheme.colors.colorDecorativeAccent3Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent3Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent4Default != abstractTheme.colors.colorDecorativeAccent4Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent4Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent4Emphasized != abstractTheme.colors.colorDecorativeAccent4Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent4Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent4Muted != abstractTheme.colors.colorDecorativeAccent4Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent4Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Default() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent5Default != abstractTheme.colors.colorDecorativeAccent5Default)
        #expect(inheritedTheme.colors.colorDecorativeAccent5Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Emphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent5Emphasized != abstractTheme.colors.colorDecorativeAccent5Emphasized)
        #expect(inheritedTheme.colors.colorDecorativeAccent5Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Muted() throws {
        #expect(inheritedTheme.colors.colorDecorativeAccent5Muted != abstractTheme.colors.colorDecorativeAccent5Muted)
        #expect(inheritedTheme.colors.colorDecorativeAccent5Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimary() throws {
        #expect(inheritedTheme.colors.colorDecorativeBrandPrimary != abstractTheme.colors.colorDecorativeBrandPrimary)
        #expect(inheritedTheme.colors.colorDecorativeBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondary() throws {
        #expect(inheritedTheme.colors.colorDecorativeBrandSecondary != abstractTheme.colors.colorDecorativeBrandSecondary)
        #expect(inheritedTheme.colors.colorDecorativeBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiary() throws {
        #expect(inheritedTheme.colors.colorDecorativeBrandTertiary != abstractTheme.colors.colorDecorativeBrandTertiary)
        #expect(inheritedTheme.colors.colorDecorativeBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefault() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralDefault != abstractTheme.colors.colorDecorativeNeutralDefault)
        #expect(inheritedTheme.colors.colorDecorativeNeutralDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasized() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasized != abstractTheme.colors.colorDecorativeNeutralEmphasized)
        #expect(inheritedTheme.colors.colorDecorativeNeutralEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMuted() throws {
        #expect(inheritedTheme.colors.colorDecorativeNeutralMuted != abstractTheme.colors.colorDecorativeNeutralMuted)
        #expect(inheritedTheme.colors.colorDecorativeNeutralMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint100 != abstractTheme.colors.colorDecorativeSkinTint100)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint100 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint200 != abstractTheme.colors.colorDecorativeSkinTint200)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint200 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint300 != abstractTheme.colors.colorDecorativeSkinTint300)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint300 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint400 != abstractTheme.colors.colorDecorativeSkinTint400)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint400 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint500 != abstractTheme.colors.colorDecorativeSkinTint500)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint500 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint600 != abstractTheme.colors.colorDecorativeSkinTint600)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint600 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint700 != abstractTheme.colors.colorDecorativeSkinTint700)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint700 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint800 != abstractTheme.colors.colorDecorativeSkinTint800)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint800 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900() throws {
        #expect(inheritedTheme.colors.colorDecorativeSkinTint900 != abstractTheme.colors.colorDecorativeSkinTint900)
        #expect(inheritedTheme.colors.colorDecorativeSkinTint900 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Chart

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartBorder() throws {
        #expect(inheritedTheme.colors.colorChartBorder != abstractTheme.colors.colorChartBorder)
        #expect(inheritedTheme.colors.colorChartBorder == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartBorderContrast() throws {
        #expect(inheritedTheme.colors.colorChartBorderContrast != abstractTheme.colors.colorChartBorderContrast)
        #expect(inheritedTheme.colors.colorChartBorderContrast == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier1 != abstractTheme.colors.colorChartCategoricalTier1)
        #expect(inheritedTheme.colors.colorChartCategoricalTier1 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier2 != abstractTheme.colors.colorChartCategoricalTier2)
        #expect(inheritedTheme.colors.colorChartCategoricalTier2 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier3 != abstractTheme.colors.colorChartCategoricalTier3)
        #expect(inheritedTheme.colors.colorChartCategoricalTier3 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier4 != abstractTheme.colors.colorChartCategoricalTier4)
        #expect(inheritedTheme.colors.colorChartCategoricalTier4 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier5 != abstractTheme.colors.colorChartCategoricalTier5)
        #expect(inheritedTheme.colors.colorChartCategoricalTier5 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier6 != abstractTheme.colors.colorChartCategoricalTier6)
        #expect(inheritedTheme.colors.colorChartCategoricalTier6 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier7 != abstractTheme.colors.colorChartCategoricalTier7)
        #expect(inheritedTheme.colors.colorChartCategoricalTier7 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier8 != abstractTheme.colors.colorChartCategoricalTier8)
        #expect(inheritedTheme.colors.colorChartCategoricalTier8 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier9 != abstractTheme.colors.colorChartCategoricalTier9)
        #expect(inheritedTheme.colors.colorChartCategoricalTier9 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10() throws {
        #expect(inheritedTheme.colors.colorChartCategoricalTier10 != abstractTheme.colors.colorChartCategoricalTier10)
        #expect(inheritedTheme.colors.colorChartCategoricalTier10 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalInfo() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalInfo != abstractTheme.colors.colorChartFunctionalInfo)
        #expect(inheritedTheme.colors.colorChartFunctionalInfo == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegative() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalNegative != abstractTheme.colors.colorChartFunctionalNegative)
        #expect(inheritedTheme.colors.colorChartFunctionalNegative == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositive() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalPositive != abstractTheme.colors.colorChartFunctionalPositive)
        #expect(inheritedTheme.colors.colorChartFunctionalPositive == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarning() throws {
        #expect(inheritedTheme.colors.colorChartFunctionalWarning != abstractTheme.colors.colorChartFunctionalWarning)
        #expect(inheritedTheme.colors.colorChartFunctionalWarning == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartGridlines() throws {
        #expect(inheritedTheme.colors.colorChartGridlines != abstractTheme.colors.colorChartGridlines)
        #expect(inheritedTheme.colors.colorChartGridlines == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartHighlight() throws {
        #expect(inheritedTheme.colors.colorChartHighlight != abstractTheme.colors.colorChartHighlight)
        #expect(inheritedTheme.colors.colorChartHighlight == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenColorChartNeutral() throws {
        #expect(inheritedTheme.colors.colorChartNeutral != abstractTheme.colors.colorChartNeutral)
        #expect(inheritedTheme.colors.colorChartNeutral == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Repository

    // WARNING: Semantic tokens of colors colorRepository* must not be overridable
    // i.e. defined in the top level provider and that's all.

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentDefault, abstractTheme.colors.colorRepositoryAccentDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentHighest, abstractTheme.colors.colorRepositoryAccentHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentLow, abstractTheme.colors.colorRepositoryAccentLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentLowest, abstractTheme.colors.colorRepositoryAccentLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoDefault, abstractTheme.colors.colorRepositoryInfoDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoHighest, abstractTheme.colors.colorRepositoryInfoHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoLow, abstractTheme.colors.colorRepositoryInfoLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoLowest, abstractTheme.colors.colorRepositoryInfoLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeDefault, abstractTheme.colors.colorRepositoryNegativeDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigh() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHigh, abstractTheme.colors.colorRepositoryNegativeHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigher() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHigher, abstractTheme.colors.colorRepositoryNegativeHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHighest, abstractTheme.colors.colorRepositoryNegativeHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLow, abstractTheme.colors.colorRepositoryNegativeLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLower() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLower, abstractTheme.colors.colorRepositoryNegativeLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLowest, abstractTheme.colors.colorRepositoryNegativeLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlack() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlack, abstractTheme.colors.colorRepositoryNeutralEmphasizedBlack)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigh() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigh, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigher() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigher, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighest, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedMedium() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMedium, abstractTheme.colors.colorRepositoryNeutralEmphasizedMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLower() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLower, abstractTheme.colors.colorRepositoryNeutralMutedLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowest, abstractTheme.colors.colorRepositoryNeutralMutedLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedWhite() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedWhite, abstractTheme.colors.colorRepositoryNeutralMutedWhite)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHigh() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHigh, abstractTheme.colors.colorRepositoryOpacityBlackHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHigher() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHigher, abstractTheme.colors.colorRepositoryOpacityBlackHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighest, abstractTheme.colors.colorRepositoryOpacityBlackHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLow, abstractTheme.colors.colorRepositoryOpacityBlackLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLower() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLower, abstractTheme.colors.colorRepositoryOpacityBlackLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowest, abstractTheme.colors.colorRepositoryOpacityBlackLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMedium() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackMedium, abstractTheme.colors.colorRepositoryOpacityBlackMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackSoft() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackSoft, abstractTheme.colors.colorRepositoryOpacityBlackSoft)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackTransparent() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackTransparent, abstractTheme.colors.colorRepositoryOpacityBlackTransparent)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityInfo() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityInfo, abstractTheme.colors.colorRepositoryOpacityInfo)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityNegative() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityNegative, abstractTheme.colors.colorRepositoryOpacityNegative)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityPositive() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityPositive, abstractTheme.colors.colorRepositoryOpacityPositive)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWarning() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWarning, abstractTheme.colors.colorRepositoryOpacityWarning)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigh() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigh, abstractTheme.colors.colorRepositoryOpacityWhiteHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigher() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigher, abstractTheme.colors.colorRepositoryOpacityWhiteHigher)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighest, abstractTheme.colors.colorRepositoryOpacityWhiteHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLow, abstractTheme.colors.colorRepositoryOpacityWhiteLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteMedium() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteMedium, abstractTheme.colors.colorRepositoryOpacityWhiteMedium)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLower() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLower, abstractTheme.colors.colorRepositoryOpacityWhiteLower)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowest, abstractTheme.colors.colorRepositoryOpacityWhiteLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteTransparent() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparent, abstractTheme.colors.colorRepositoryOpacityWhiteTransparent)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveDefault, abstractTheme.colors.colorRepositoryPositiveDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHigh() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveHigh, abstractTheme.colors.colorRepositoryPositiveHigh)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveHighest, abstractTheme.colors.colorRepositoryPositiveHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveLow, abstractTheme.colors.colorRepositoryPositiveLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveLowest, abstractTheme.colors.colorRepositoryPositiveLowest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPrimaryDefault, abstractTheme.colors.colorRepositoryPrimaryDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPrimaryLow, abstractTheme.colors.colorRepositoryPrimaryLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningDefault, abstractTheme.colors.colorRepositoryWarningDefault)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningHighest, abstractTheme.colors.colorRepositoryWarningHighest)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningLow, abstractTheme.colors.colorRepositoryWarningLow)
    }

    @Test func inheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningLowest, abstractTheme.colors.colorRepositoryWarningLowest)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable type_name
