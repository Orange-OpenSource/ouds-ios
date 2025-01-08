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
import XCTest

// swiftlint:disable type_body_length
// swiftlint:disable file_length
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable required_deinit
// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _abstract class_, exposing through its extensions and protocols _colors semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeColorSemanticTokensProvider``.
///
/// **These tests checks if any _colors multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfColorMultipleSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Tests

    // MARK: - Color - Opacity - Transparent

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityTransparent() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityTransparent abstractTheme.colors.colorOpacityTransparent)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityTransparent == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Action

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionDisabled, abstractTheme.colors.colorActionDisabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionEnabled, abstractTheme.colors.colorActionEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionFocus, abstractTheme.colors.colorActionFocus)
        XCTAssertTrue(inheritedTheme.colors.colorActionFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlighted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHighlighted, abstractTheme.colors.colorActionHighlighted)
        XCTAssertTrue(inheritedTheme.colors.colorActionHighlighted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHover, abstractTheme.colors.colorActionHover)
        XCTAssertTrue(inheritedTheme.colors.colorActionHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionLoading, abstractTheme.colors.colorActionLoading)
        XCTAssertTrue(inheritedTheme.colors.colorActionLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeEnabled, abstractTheme.colors.colorActionNegativeEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeFocus, abstractTheme.colors.colorActionNegativeFocus)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeHover, abstractTheme.colors.colorActionNegativeHover)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeLoading, abstractTheme.colors.colorActionNegativeLoading)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativePressed, abstractTheme.colors.colorActionNegativePressed)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativePressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionPressed, abstractTheme.colors.colorActionPressed)
        XCTAssertTrue(inheritedTheme.colors.colorActionPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSelected, abstractTheme.colors.colorActionSelected)
        XCTAssertTrue(inheritedTheme.colors.colorActionSelected == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportEnabled, abstractTheme.colors.colorActionSupportEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportFocus, abstractTheme.colors.colorActionSupportFocus)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportHover, abstractTheme.colors.colorActionSupportHover)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportLoading, abstractTheme.colors.colorActionSupportLoading)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportPressed, abstractTheme.colors.colorActionSupportPressed)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionVisited, abstractTheme.colors.colorActionVisited)
        XCTAssertTrue(inheritedTheme.colors.colorActionVisited == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Always

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysBlack, abstractTheme.colors.colorAlwaysBlack)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysBlack == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnBlack, abstractTheme.colors.colorAlwaysOnBlack)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnBlack == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnWhite, abstractTheme.colors.colorAlwaysOnWhite)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnWhite == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysWhite, abstractTheme.colors.colorAlwaysWhite)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysWhite == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Background

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgEmphasized, abstractTheme.colors.colorBgEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorBgEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgPrimary, abstractTheme.colors.colorBgPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorBgPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgSecondary, abstractTheme.colors.colorBgSecondary)
        XCTAssertTrue(inheritedTheme.colors.colorBgSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgTertiary, abstractTheme.colors.colorBgTertiary)
        XCTAssertTrue(inheritedTheme.colors.colorBgTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Border

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderBrandPrimary, abstractTheme.colors.colorBorderBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorBorderBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderDefault, abstractTheme.colors.colorBorderDefault)
        XCTAssertTrue(inheritedTheme.colors.colorBorderDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderEmphasized, abstractTheme.colors.colorBorderEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorBorderEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocus, abstractTheme.colors.colorBorderFocus)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInset() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusInset, abstractTheme.colors.colorBorderFocusInset)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusInset == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderOnBrandPrimary, abstractTheme.colors.colorBorderOnBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorBorderOnBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Content

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentBrandPrimary, abstractTheme.colors.colorContentBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorContentBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDefault, abstractTheme.colors.colorContentDefault)
        XCTAssertTrue(inheritedTheme.colors.colorContentDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDisabled, abstractTheme.colors.colorContentDisabled)
        XCTAssertTrue(inheritedTheme.colors.colorContentDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentMuted, abstractTheme.colors.colorContentMuted)
        XCTAssertTrue(inheritedTheme.colors.colorContentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionDisabled, abstractTheme.colors.colorContentOnActionDisabled)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionDisabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionEnabled, abstractTheme.colors.colorContentOnActionEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionEnabled == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionFocus, abstractTheme.colors.colorContentOnActionFocus)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionFocus == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlighted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHighlighted, abstractTheme.colors.colorContentOnActionHighlighted)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHighlighted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHover, abstractTheme.colors.colorContentOnActionHover)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHover == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionLoading, abstractTheme.colors.colorContentOnActionLoading)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionLoading == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionPressed, abstractTheme.colors.colorContentOnActionPressed)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionPressed == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnBrandPrimary, abstractTheme.colors.colorContentOnBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnOverlayEmphasized, abstractTheme.colors.colorContentOnOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnOverlayEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasized, abstractTheme.colors.colorContentOnStatusEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedAlt() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedAlt, abstractTheme.colors.colorContentOnStatusEmphasizedAlt)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedAlt == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusMuted, abstractTheme.colors.colorContentOnStatusMuted)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusInfo, abstractTheme.colors.colorContentStatusInfo)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusInfo == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusNegative, abstractTheme.colors.colorContentStatusNegative)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusNegative == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusPositive, abstractTheme.colors.colorContentStatusPositive)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusPositive == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusWarning, abstractTheme.colors.colorContentStatusWarning)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusWarning == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Overlay

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDefault, abstractTheme.colors.colorOverlayDefault)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDrag() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDrag, abstractTheme.colors.colorOverlayDrag)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDrag == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayEmphasized, abstractTheme.colors.colorOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModal() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayModal, abstractTheme.colors.colorOverlayModal)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayModal == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Surface

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceBrandPrimary, abstractTheme.colors.colorSurfaceBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentEmphasized, abstractTheme.colors.colorSurfaceStatusAccentEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentMuted, abstractTheme.colors.colorSurfaceStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoEmphasized, abstractTheme.colors.colorSurfaceStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoMuted, abstractTheme.colors.colorSurfaceStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasized, abstractTheme.colors.colorSurfaceStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeMuted, abstractTheme.colors.colorSurfaceStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasized, abstractTheme.colors.colorSurfaceStatusNeutralEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralMuted, abstractTheme.colors.colorSurfaceStatusNeutralMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasized, abstractTheme.colors.colorSurfaceStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveMuted, abstractTheme.colors.colorSurfaceStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningEmphasized, abstractTheme.colors.colorSurfaceStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningMuted, abstractTheme.colors.colorSurfaceStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1Default, abstractTheme.colors.colorDecorativeAccent1Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1Emphasized, abstractTheme.colors.colorDecorativeAccent1Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1Muted, abstractTheme.colors.colorDecorativeAccent1Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2Default, abstractTheme.colors.colorDecorativeAccent2Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2Emphasized, abstractTheme.colors.colorDecorativeAccent2Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2Muted, abstractTheme.colors.colorDecorativeAccent2Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3Default, abstractTheme.colors.colorDecorativeAccent3Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3Emphasized, abstractTheme.colors.colorDecorativeAccent3Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3Muted, abstractTheme.colors.colorDecorativeAccent3Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4Default, abstractTheme.colors.colorDecorativeAccent4Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4Emphasized, abstractTheme.colors.colorDecorativeAccent4Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4Muted, abstractTheme.colors.colorDecorativeAccent4Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5Default, abstractTheme.colors.colorDecorativeAccent5Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5Default == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5Emphasized, abstractTheme.colors.colorDecorativeAccent5Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5Emphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5Muted, abstractTheme.colors.colorDecorativeAccent5Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5Muted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandPrimary, abstractTheme.colors.colorDecorativeBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandPrimary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandSecondary, abstractTheme.colors.colorDecorativeBrandSecondary)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandSecondary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandTertiary, abstractTheme.colors.colorDecorativeBrandTertiary)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandTertiary == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralDefault, abstractTheme.colors.colorDecorativeNeutralDefault)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralDefault == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralEmphasized, abstractTheme.colors.colorDecorativeNeutralEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralEmphasized == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralMuted, abstractTheme.colors.colorDecorativeNeutralMuted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralMuted == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint100, abstractTheme.colors.colorDecorativeSkinTint100)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint100 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint200, abstractTheme.colors.colorDecorativeSkinTint200)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint200 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint300, abstractTheme.colors.colorDecorativeSkinTint300)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint300 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint400, abstractTheme.colors.colorDecorativeSkinTint400)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint400 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint500, abstractTheme.colors.colorDecorativeSkinTint500)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint500 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint600, abstractTheme.colors.colorDecorativeSkinTint600)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint600 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint700, abstractTheme.colors.colorDecorativeSkinTint700)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint700 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint800, abstractTheme.colors.colorDecorativeSkinTint800)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint800 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint900, abstractTheme.colors.colorDecorativeSkinTint900)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint900 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier1, abstractTheme.colors.colorChartCategoricalTier1)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier1 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier2, abstractTheme.colors.colorChartCategoricalTier2)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier2 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier3, abstractTheme.colors.colorChartCategoricalTier3)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier3 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier4, abstractTheme.colors.colorChartCategoricalTier4)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier4 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier5, abstractTheme.colors.colorChartCategoricalTier5)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier5 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier6, abstractTheme.colors.colorChartCategoricalTier6)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier6 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier7, abstractTheme.colors.colorChartCategoricalTier7)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier7 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier8, abstractTheme.colors.colorChartCategoricalTier8)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier8 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier9, abstractTheme.colors.colorChartCategoricalTier9)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier9 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier10, abstractTheme.colors.colorChartCategoricalTier10)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier10 == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInformation() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalInformation, abstractTheme.colors.colorChartFunctionalInformation)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalInformation == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalNegative, abstractTheme.colors.colorChartFunctionalNegative)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalNegative == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalPositive, abstractTheme.colors.colorChartFunctionalPositive)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalPositive == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalWarning, abstractTheme.colors.colorChartFunctionalWarning)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalWarning == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartGridlines() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartGridlines, abstractTheme.colors.colorChartGridlines)
        XCTAssertTrue(inheritedTheme.colors.colorChartGridlines == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartHighlight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartHighlight, abstractTheme.colors.colorChartHighlight)
        XCTAssertTrue(inheritedTheme.colors.colorChartHighlight == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartNeutral, abstractTheme.colors.colorChartNeutral)
        XCTAssertTrue(inheritedTheme.colors.colorChartNeutral == MockThemeColorSemanticTokensProvider.mockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Repository

    // WARNING: Semantic tokens of colors colorRepository* must not be overridable
    // i.e. defined in the top level provider and that's all.

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentDefault, abstractTheme.colors.colorRepositoryAccentDefault)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentHighest, abstractTheme.colors.colorRepositoryAccentHighest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentLow, abstractTheme.colors.colorRepositoryAccentLow)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryAccentLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryAccentLowest, abstractTheme.colors.colorRepositoryAccentLowest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoDefault, abstractTheme.colors.colorRepositoryInfoDefault)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoHighest, abstractTheme.colors.colorRepositoryInfoHighest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoLow, abstractTheme.colors.colorRepositoryInfoLow)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryInfoLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryInfoLowest, abstractTheme.colors.colorRepositoryInfoLowest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeDefault, abstractTheme.colors.colorRepositoryNegativeDefault)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigh() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHigh, abstractTheme.colors.colorRepositoryNegativeHigh)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHigher() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHigher, abstractTheme.colors.colorRepositoryNegativeHigher)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeHighest, abstractTheme.colors.colorRepositoryNegativeHighest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLow, abstractTheme.colors.colorRepositoryNegativeLow)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLower() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLower, abstractTheme.colors.colorRepositoryNegativeLower)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNegativeLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNegativeLowest, abstractTheme.colors.colorRepositoryNegativeLowest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlack() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlack, abstractTheme.colors.colorRepositoryNeutralEmphasizedBlack)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigh() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigh, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigh)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigher() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigher, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigher)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighest, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralEmphasizedMedium() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMedium, abstractTheme.colors.colorRepositoryNeutralEmphasizedMedium)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLower() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLower, abstractTheme.colors.colorRepositoryNeutralMutedLower)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowest, abstractTheme.colors.colorRepositoryNeutralMutedLowest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryNeutralMutedWhite() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryNeutralMutedWhite, abstractTheme.colors.colorRepositoryNeutralMutedWhite)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHigher() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHigher, abstractTheme.colors.colorRepositoryOpacityBlackHigher)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighest, abstractTheme.colors.colorRepositoryOpacityBlackHighest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLow, abstractTheme.colors.colorRepositoryOpacityBlackLow)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLower() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLower, abstractTheme.colors.colorRepositoryOpacityBlackLower)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowest, abstractTheme.colors.colorRepositoryOpacityBlackLowest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackMedium() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackMedium, abstractTheme.colors.colorRepositoryOpacityBlackMedium)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityBlackTransparent() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityBlackTransparent, abstractTheme.colors.colorRepositoryOpacityBlackTransparent)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityInfo() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityInfo, abstractTheme.colors.colorRepositoryOpacityInfo)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityNegative() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityNegative, abstractTheme.colors.colorRepositoryOpacityNegative)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityPositive() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityPositive, abstractTheme.colors.colorRepositoryOpacityPositive)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWarning() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWarning, abstractTheme.colors.colorRepositoryOpacityWarning)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigh() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigh, abstractTheme.colors.colorRepositoryOpacityWhiteHigh)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHigher() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigher, abstractTheme.colors.colorRepositoryOpacityWhiteHigher)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighest, abstractTheme.colors.colorRepositoryOpacityWhiteHighest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteHighLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLow, abstractTheme.colors.colorRepositoryOpacityWhiteLow)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLower() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLower, abstractTheme.colors.colorRepositoryOpacityWhiteLower)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowest, abstractTheme.colors.colorRepositoryOpacityWhiteLowest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryOpacityWhiteTransparent() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparent, abstractTheme.colors.colorRepositoryOpacityWhiteTransparent)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveDefault, abstractTheme.colors.colorRepositoryPositiveDefault)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveHighest, abstractTheme.colors.colorRepositoryPositiveHighest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveLow, abstractTheme.colors.colorRepositoryPositiveLow)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPositiveLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPositiveLowest, abstractTheme.colors.colorRepositoryPositiveLowest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPrimaryDefault, abstractTheme.colors.colorRepositoryPrimaryDefault)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryPrimaryLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryPrimaryLow, abstractTheme.colors.colorRepositoryPrimaryLow)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningDefault() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningDefault, abstractTheme.colors.colorRepositoryWarningDefault)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningHighest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningHighest, abstractTheme.colors.colorRepositoryWarningHighest)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLow() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningLow, abstractTheme.colors.colorRepositoryWarningLow)
    }

    func testInheritedThemeCanNotOverrideSemanticTokenColorRepositoryWarningLowest() throws {
        XCTAssertEqual(inheritedTheme.colors.colorRepositoryWarningLowest, abstractTheme.colors.colorRepositoryWarningLowest)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit
// swiftlint:enable type_name
