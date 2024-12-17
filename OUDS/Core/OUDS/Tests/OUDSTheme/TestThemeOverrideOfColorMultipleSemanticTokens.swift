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
import OUDSTokensSemantic
import XCTest

// swiftlint:disable type_body_length
// swiftlint:disable file_length
// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable required_deinit
// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _abstract class_, exposing through its extensions and protocols _colors semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// 
/// **These tests checks if any _colors multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfColorMultipleSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = MockTheme()
        inheritedTheme = OtherMockTheme()
    }

    // MARK: - Tests

    // MARK: - Color - Opacity - Invisible

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityInvisibleBlack, abstractTheme.colors.colorOpacityInvisibleBlack)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleBlack == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityInvisibleWhite, abstractTheme.colors.colorOpacityInvisibleWhite)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleWhite == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Action

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionDisabled, abstractTheme.colors.colorActionDisabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionDisabled == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionEnabled, abstractTheme.colors.colorActionEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionEnabled == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionFocus, abstractTheme.colors.colorActionFocus)
        XCTAssertTrue(inheritedTheme.colors.colorActionFocus == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlighted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHighlighted, abstractTheme.colors.colorActionHighlighted)
        XCTAssertTrue(inheritedTheme.colors.colorActionHighlighted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHover, abstractTheme.colors.colorActionHover)
        XCTAssertTrue(inheritedTheme.colors.colorActionHover == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionLoading, abstractTheme.colors.colorActionLoading)
        XCTAssertTrue(inheritedTheme.colors.colorActionLoading == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeEnabled, abstractTheme.colors.colorActionNegativeEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeEnabled == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeFocus, abstractTheme.colors.colorActionNegativeFocus)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeFocus == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeHover, abstractTheme.colors.colorActionNegativeHover)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeHover == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeLoading, abstractTheme.colors.colorActionNegativeLoading)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeLoading == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativePressed, abstractTheme.colors.colorActionNegativePressed)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativePressed == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionPressed, abstractTheme.colors.colorActionPressed)
        XCTAssertTrue(inheritedTheme.colors.colorActionPressed == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSelected, abstractTheme.colors.colorActionSelected)
        XCTAssertTrue(inheritedTheme.colors.colorActionSelected == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportEnabled, abstractTheme.colors.colorActionSupportEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportEnabled == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportFocus, abstractTheme.colors.colorActionSupportFocus)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportFocus == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportHover, abstractTheme.colors.colorActionSupportHover)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportHover == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportLoading, abstractTheme.colors.colorActionSupportLoading)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportLoading == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportPressed, abstractTheme.colors.colorActionSupportPressed)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportPressed == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionVisited, abstractTheme.colors.colorActionVisited)
        XCTAssertTrue(inheritedTheme.colors.colorActionVisited == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Always

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysBlack, abstractTheme.colors.colorAlwaysBlack)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysBlack == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnBlack, abstractTheme.colors.colorAlwaysOnBlack)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnBlack == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnWhite, abstractTheme.colors.colorAlwaysOnWhite)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnWhite == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysWhite, abstractTheme.colors.colorAlwaysWhite)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysWhite == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Background

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgEmphasized, abstractTheme.colors.colorBgEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorBgEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgPrimary, abstractTheme.colors.colorBgPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorBgPrimary == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgSecondary, abstractTheme.colors.colorBgSecondary)
        XCTAssertTrue(inheritedTheme.colors.colorBgSecondary == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgTertiary, abstractTheme.colors.colorBgTertiary)
        XCTAssertTrue(inheritedTheme.colors.colorBgTertiary == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Border

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderBrandPrimary, abstractTheme.colors.colorBorderBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorBorderBrandPrimary == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderDefault, abstractTheme.colors.colorBorderDefault)
        XCTAssertTrue(inheritedTheme.colors.colorBorderDefault == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderEmphasized, abstractTheme.colors.colorBorderEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorBorderEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocus, abstractTheme.colors.colorBorderFocus)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocus == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInset() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusInset, abstractTheme.colors.colorBorderFocusInset)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusInset == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderOnBrandPrimary, abstractTheme.colors.colorBorderOnBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorBorderOnBrandPrimary == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Content

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentBrandPrimary, abstractTheme.colors.colorContentBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorContentBrandPrimary == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDefault, abstractTheme.colors.colorContentDefault)
        XCTAssertTrue(inheritedTheme.colors.colorContentDefault == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDisabled, abstractTheme.colors.colorContentDisabled)
        XCTAssertTrue(inheritedTheme.colors.colorContentDisabled == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentMuted, abstractTheme.colors.colorContentMuted)
        XCTAssertTrue(inheritedTheme.colors.colorContentMuted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionDisabled, abstractTheme.colors.colorContentOnActionDisabled)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionDisabled == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionEnabled, abstractTheme.colors.colorContentOnActionEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionEnabled == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionFocus, abstractTheme.colors.colorContentOnActionFocus)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionFocus == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlighted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHighlighted, abstractTheme.colors.colorContentOnActionHighlighted)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHighlighted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHover, abstractTheme.colors.colorContentOnActionHover)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHover == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionLoading, abstractTheme.colors.colorContentOnActionLoading)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionLoading == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionNegative, abstractTheme.colors.colorContentOnActionNegative)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionNegative == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionPressed, abstractTheme.colors.colorContentOnActionPressed)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionPressed == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnBrandPrimary, abstractTheme.colors.colorContentOnBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnBrandPrimary == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnOverlayEmphasized, abstractTheme.colors.colorContentOnOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnOverlayEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasized, abstractTheme.colors.colorContentOnStatusEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutral, abstractTheme.colors.colorContentOnStatusEmphasizedNeutral)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutral == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusMuted, abstractTheme.colors.colorContentOnStatusMuted)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusMuted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusInfo, abstractTheme.colors.colorContentStatusInfo)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusInfo == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusNegative, abstractTheme.colors.colorContentStatusNegative)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusNegative == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusPositive, abstractTheme.colors.colorContentStatusPositive)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusPositive == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusWarning, abstractTheme.colors.colorContentStatusWarning)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusWarning == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Overlay

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDefault, abstractTheme.colors.colorOverlayDefault)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDefault == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDrag() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDrag, abstractTheme.colors.colorOverlayDrag)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDrag == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayEmphasized, abstractTheme.colors.colorOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModal() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayModal, abstractTheme.colors.colorOverlayModal)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayModal == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Surface

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceBrandPrimary, abstractTheme.colors.colorSurfaceBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceBrandPrimary == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentEmphasized, abstractTheme.colors.colorSurfaceStatusAccentEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentMuted, abstractTheme.colors.colorSurfaceStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentMuted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoEmphasized, abstractTheme.colors.colorSurfaceStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoMuted, abstractTheme.colors.colorSurfaceStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoMuted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasized, abstractTheme.colors.colorSurfaceStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeMuted, abstractTheme.colors.colorSurfaceStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeMuted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasized, abstractTheme.colors.colorSurfaceStatusNeutralEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralMuted, abstractTheme.colors.colorSurfaceStatusNeutralMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralMuted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasized, abstractTheme.colors.colorSurfaceStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveMuted, abstractTheme.colors.colorSurfaceStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveMuted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningEmphasized, abstractTheme.colors.colorSurfaceStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningMuted, abstractTheme.colors.colorSurfaceStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningMuted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1Default, abstractTheme.colors.colorDecorativeAccent1Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1Default == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1Emphasized, abstractTheme.colors.colorDecorativeAccent1Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1Emphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1Muted, abstractTheme.colors.colorDecorativeAccent1Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1Muted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2Default, abstractTheme.colors.colorDecorativeAccent2Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2Default == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2Emphasized, abstractTheme.colors.colorDecorativeAccent2Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2Emphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2Muted, abstractTheme.colors.colorDecorativeAccent2Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2Muted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3Default, abstractTheme.colors.colorDecorativeAccent3Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3Default == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3Emphasized, abstractTheme.colors.colorDecorativeAccent3Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3Emphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3Muted, abstractTheme.colors.colorDecorativeAccent3Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3Muted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4Default, abstractTheme.colors.colorDecorativeAccent4Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4Default == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4Emphasized, abstractTheme.colors.colorDecorativeAccent4Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4Emphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4Muted, abstractTheme.colors.colorDecorativeAccent4Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4Muted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5Default, abstractTheme.colors.colorDecorativeAccent5Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5Default == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5Emphasized, abstractTheme.colors.colorDecorativeAccent5Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5Emphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5Muted, abstractTheme.colors.colorDecorativeAccent5Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5Muted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandPrimary, abstractTheme.colors.colorDecorativeBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandPrimary == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandSecondary, abstractTheme.colors.colorDecorativeBrandSecondary)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandSecondary == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandTertiary, abstractTheme.colors.colorDecorativeBrandTertiary)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandTertiary == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralDefault, abstractTheme.colors.colorDecorativeNeutralDefault)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralDefault == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralEmphasized, abstractTheme.colors.colorDecorativeNeutralEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralEmphasized == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralMuted, abstractTheme.colors.colorDecorativeNeutralMuted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralMuted == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint100, abstractTheme.colors.colorDecorativeSkinTint100)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint100 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint200, abstractTheme.colors.colorDecorativeSkinTint200)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint200 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint300, abstractTheme.colors.colorDecorativeSkinTint300)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint300 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint400, abstractTheme.colors.colorDecorativeSkinTint400)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint400 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint500, abstractTheme.colors.colorDecorativeSkinTint500)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint500 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint600, abstractTheme.colors.colorDecorativeSkinTint600)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint600 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint700, abstractTheme.colors.colorDecorativeSkinTint700)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint700 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint800, abstractTheme.colors.colorDecorativeSkinTint800)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint800 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint900, abstractTheme.colors.colorDecorativeSkinTint900)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint900 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier1, abstractTheme.colors.colorChartCategoricalTier1)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier1 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier2, abstractTheme.colors.colorChartCategoricalTier2)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier2 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier3, abstractTheme.colors.colorChartCategoricalTier3)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier3 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier4, abstractTheme.colors.colorChartCategoricalTier4)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier4 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier5, abstractTheme.colors.colorChartCategoricalTier5)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier5 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier6, abstractTheme.colors.colorChartCategoricalTier6)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier6 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier7, abstractTheme.colors.colorChartCategoricalTier7)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier7 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier8, abstractTheme.colors.colorChartCategoricalTier8)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier8 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier9, abstractTheme.colors.colorChartCategoricalTier9)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier9 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier10, abstractTheme.colors.colorChartCategoricalTier10)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier10 == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInformation() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalInformation, abstractTheme.colors.colorChartFunctionalInformation)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalInformation == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalNegative, abstractTheme.colors.colorChartFunctionalNegative)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalNegative == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalPositive, abstractTheme.colors.colorChartFunctionalPositive)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalPositive == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalWarning, abstractTheme.colors.colorChartFunctionalWarning)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalWarning == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartGridlines() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartGridlines, abstractTheme.colors.colorChartGridlines)
        XCTAssertTrue(inheritedTheme.colors.colorChartGridlines == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartHighlight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartHighlight, abstractTheme.colors.colorChartHighlight)
        XCTAssertTrue(inheritedTheme.colors.colorChartHighlight == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartNeutral, abstractTheme.colors.colorChartNeutral)
        XCTAssertTrue(inheritedTheme.colors.colorChartNeutral == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Repository

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentDefault, abstractTheme.colors.colorRepositoryAccentDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentDefault == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentHighest, abstractTheme.colors.colorRepositoryAccentHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentHighest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLow, abstractTheme.colors.colorRepositoryAccentLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLow == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLowest, abstractTheme.colors.colorRepositoryAccentLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLowest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoDefault, abstractTheme.colors.colorRepositoryInfoDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoDefault == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoHighest, abstractTheme.colors.colorRepositoryInfoHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoHighest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLow, abstractTheme.colors.colorRepositoryInfoLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLow == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLowest, abstractTheme.colors.colorRepositoryInfoLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLowest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeDefault, abstractTheme.colors.colorRepositoryNegativeDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeDefault == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigh() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHigh, abstractTheme.colors.colorRepositoryNegativeHigh)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHigh == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHigher, abstractTheme.colors.colorRepositoryNegativeHigher)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHigher == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHighest, abstractTheme.colors.colorRepositoryNegativeHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHighest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLow, abstractTheme.colors.colorRepositoryNegativeLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLow == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLower() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLower, abstractTheme.colors.colorRepositoryNegativeLower)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLower == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowest, abstractTheme.colors.colorRepositoryNegativeLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlack, abstractTheme.colors.colorRepositoryNeutralEmphasizedBlack)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlack == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigh() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigh, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigh)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigh == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigher, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigher)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigher == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighest, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedMedium() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMedium, abstractTheme.colors.colorRepositoryNeutralEmphasizedMedium)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMedium == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLower() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLower, abstractTheme.colors.colorRepositoryNeutralMutedLower)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLower == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowest, abstractTheme.colors.colorRepositoryNeutralMutedLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLowest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedWhite, abstractTheme.colors.colorRepositoryNeutralMutedWhite)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedWhite == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHigher, abstractTheme.colors.colorRepositoryOpacityBlackHigher)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHigher == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighest, abstractTheme.colors.colorRepositoryOpacityBlackHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHighest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLow, abstractTheme.colors.colorRepositoryOpacityBlackLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLow == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLower() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLower, abstractTheme.colors.colorRepositoryOpacityBlackLower)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLower == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowest, abstractTheme.colors.colorRepositoryOpacityBlackLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackMedium() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackMedium, abstractTheme.colors.colorRepositoryOpacityBlackMedium)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackMedium == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackTransparent() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackTransparent, abstractTheme.colors.colorRepositoryOpacityBlackTransparent)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackTransparent == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityInfo, abstractTheme.colors.colorRepositoryOpacityInfo)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityInfo == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityNegative, abstractTheme.colors.colorRepositoryOpacityNegative)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityNegative == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityPositive, abstractTheme.colors.colorRepositoryOpacityPositive)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityPositive == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWarning, abstractTheme.colors.colorRepositoryOpacityWarning)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWarning == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigh() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigh, abstractTheme.colors.colorRepositoryOpacityWhiteHigh)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHigh == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigher, abstractTheme.colors.colorRepositoryOpacityWhiteHigher)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHigher == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighest, abstractTheme.colors.colorRepositoryOpacityWhiteHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHighest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLow, abstractTheme.colors.colorRepositoryOpacityWhiteLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLow == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLower() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLower, abstractTheme.colors.colorRepositoryOpacityWhiteLower)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLower == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowest, abstractTheme.colors.colorRepositoryOpacityWhiteLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteTransparent() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparent, abstractTheme.colors.colorRepositoryOpacityWhiteTransparent)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparent == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveDefault, abstractTheme.colors.colorRepositoryPositiveDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveDefault == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveHighest, abstractTheme.colors.colorRepositoryPositiveHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveHighest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLow, abstractTheme.colors.colorRepositoryPositiveLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLow == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLowest, abstractTheme.colors.colorRepositoryPositiveLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLowest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryDefault, abstractTheme.colors.colorRepositoryPrimaryDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryDefault == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryLow, abstractTheme.colors.colorRepositoryPrimaryLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryLow == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningDefault, abstractTheme.colors.colorRepositoryWarningDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningDefault == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningHighest, abstractTheme.colors.colorRepositoryWarningHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningHighest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLow, abstractTheme.colors.colorRepositoryWarningLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLow == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLowest, abstractTheme.colors.colorRepositoryWarningLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLowest == OtherMockThemeColorSemanticTokensProvider.otherMockThemeMultipleColorSemanticTokens)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit
// swiftlint:enable type_name
