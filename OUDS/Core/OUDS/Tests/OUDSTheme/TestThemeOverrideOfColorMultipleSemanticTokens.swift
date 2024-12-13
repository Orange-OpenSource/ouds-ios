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
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleBlack == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOpacityInvisibleWhite, abstractTheme.colors.colorOpacityInvisibleWhite)
        XCTAssertTrue(inheritedTheme.colors.colorOpacityInvisibleWhite == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Action

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionDisabled, abstractTheme.colors.colorActionDisabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionDisabled == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionEnabled, abstractTheme.colors.colorActionEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionEnabled == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionFocus, abstractTheme.colors.colorActionFocus)
        XCTAssertTrue(inheritedTheme.colors.colorActionFocus == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlighted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHighlighted, abstractTheme.colors.colorActionHighlighted)
        XCTAssertTrue(inheritedTheme.colors.colorActionHighlighted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionHover, abstractTheme.colors.colorActionHover)
        XCTAssertTrue(inheritedTheme.colors.colorActionHover == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionLoading, abstractTheme.colors.colorActionLoading)
        XCTAssertTrue(inheritedTheme.colors.colorActionLoading == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeEnabled, abstractTheme.colors.colorActionNegativeEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeEnabled == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeFocus, abstractTheme.colors.colorActionNegativeFocus)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeFocus == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeHover, abstractTheme.colors.colorActionNegativeHover)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeHover == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativeLoading, abstractTheme.colors.colorActionNegativeLoading)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativeLoading == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionNegativePressed, abstractTheme.colors.colorActionNegativePressed)
        XCTAssertTrue(inheritedTheme.colors.colorActionNegativePressed == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionPressed, abstractTheme.colors.colorActionPressed)
        XCTAssertTrue(inheritedTheme.colors.colorActionPressed == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSelected, abstractTheme.colors.colorActionSelected)
        XCTAssertTrue(inheritedTheme.colors.colorActionSelected == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportEnabled, abstractTheme.colors.colorActionSupportEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportEnabled == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportFocus, abstractTheme.colors.colorActionSupportFocus)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportFocus == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportHover, abstractTheme.colors.colorActionSupportHover)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportHover == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportLoading, abstractTheme.colors.colorActionSupportLoading)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportLoading == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionSupportPressed, abstractTheme.colors.colorActionSupportPressed)
        XCTAssertTrue(inheritedTheme.colors.colorActionSupportPressed == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorActionVisited, abstractTheme.colors.colorActionVisited)
        XCTAssertTrue(inheritedTheme.colors.colorActionVisited == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Always

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysBlack, abstractTheme.colors.colorAlwaysBlack)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysBlack == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnBlack, abstractTheme.colors.colorAlwaysOnBlack)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnBlack == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysOnWhite, abstractTheme.colors.colorAlwaysOnWhite)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysOnWhite == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorAlwaysWhite, abstractTheme.colors.colorAlwaysWhite)
        XCTAssertTrue(inheritedTheme.colors.colorAlwaysWhite == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Background

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgEmphasized, abstractTheme.colors.colorBgEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorBgEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgPrimary, abstractTheme.colors.colorBgPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorBgPrimary == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgSecondary, abstractTheme.colors.colorBgSecondary)
        XCTAssertTrue(inheritedTheme.colors.colorBgSecondary == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBgTertiary, abstractTheme.colors.colorBgTertiary)
        XCTAssertTrue(inheritedTheme.colors.colorBgTertiary == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Border

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderBrandPrimary, abstractTheme.colors.colorBorderBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorBorderBrandPrimary == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderDefault, abstractTheme.colors.colorBorderDefault)
        XCTAssertTrue(inheritedTheme.colors.colorBorderDefault == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderEmphasized, abstractTheme.colors.colorBorderEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorBorderEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocus, abstractTheme.colors.colorBorderFocus)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocus == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInset() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderFocusInset, abstractTheme.colors.colorBorderFocusInset)
        XCTAssertTrue(inheritedTheme.colors.colorBorderFocusInset == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorBorderOnBrandPrimary, abstractTheme.colors.colorBorderOnBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorBorderOnBrandPrimary == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Content

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentBrandPrimary, abstractTheme.colors.colorContentBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorContentBrandPrimary == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDefault, abstractTheme.colors.colorContentDefault)
        XCTAssertTrue(inheritedTheme.colors.colorContentDefault == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentDisabled, abstractTheme.colors.colorContentDisabled)
        XCTAssertTrue(inheritedTheme.colors.colorContentDisabled == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentMuted, abstractTheme.colors.colorContentMuted)
        XCTAssertTrue(inheritedTheme.colors.colorContentMuted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionDisabled, abstractTheme.colors.colorContentOnActionDisabled)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionDisabled == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionEnabled, abstractTheme.colors.colorContentOnActionEnabled)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionEnabled == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionFocus, abstractTheme.colors.colorContentOnActionFocus)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionFocus == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlighted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHighlighted, abstractTheme.colors.colorContentOnActionHighlighted)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHighlighted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHover() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionHover, abstractTheme.colors.colorContentOnActionHover)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionHover == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionLoading, abstractTheme.colors.colorContentOnActionLoading)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionLoading == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionNegative, abstractTheme.colors.colorContentOnActionNegative)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionNegative == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnActionPressed, abstractTheme.colors.colorContentOnActionPressed)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnActionPressed == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnBrandPrimary, abstractTheme.colors.colorContentOnBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnBrandPrimary == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnOverlayEmphasized, abstractTheme.colors.colorContentOnOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnOverlayEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasized, abstractTheme.colors.colorContentOnStatusEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutral, abstractTheme.colors.colorContentOnStatusEmphasizedNeutral)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusEmphasizedNeutral == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentOnStatusMuted, abstractTheme.colors.colorContentOnStatusMuted)
        XCTAssertTrue(inheritedTheme.colors.colorContentOnStatusMuted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusInfo, abstractTheme.colors.colorContentStatusInfo)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusInfo == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusNegative, abstractTheme.colors.colorContentStatusNegative)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusNegative == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusPositive, abstractTheme.colors.colorContentStatusPositive)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusPositive == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorContentStatusWarning, abstractTheme.colors.colorContentStatusWarning)
        XCTAssertTrue(inheritedTheme.colors.colorContentStatusWarning == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Overlay

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDefault, abstractTheme.colors.colorOverlayDefault)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDefault == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDrag() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayDrag, abstractTheme.colors.colorOverlayDrag)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayDrag == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayEmphasized, abstractTheme.colors.colorOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModal() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorOverlayModal, abstractTheme.colors.colorOverlayModal)
        XCTAssertTrue(inheritedTheme.colors.colorOverlayModal == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Surface

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceBrandPrimary, abstractTheme.colors.colorSurfaceBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceBrandPrimary == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentEmphasized, abstractTheme.colors.colorSurfaceStatusAccentEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusAccentMuted, abstractTheme.colors.colorSurfaceStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusAccentMuted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoEmphasized, abstractTheme.colors.colorSurfaceStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusInfoMuted, abstractTheme.colors.colorSurfaceStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusInfoMuted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasized, abstractTheme.colors.colorSurfaceStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNegativeMuted, abstractTheme.colors.colorSurfaceStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNegativeMuted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasized, abstractTheme.colors.colorSurfaceStatusNeutralEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusNeutralMuted, abstractTheme.colors.colorSurfaceStatusNeutralMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusNeutralMuted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasized, abstractTheme.colors.colorSurfaceStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusPositiveMuted, abstractTheme.colors.colorSurfaceStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusPositiveMuted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningEmphasized, abstractTheme.colors.colorSurfaceStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorSurfaceStatusWarningMuted, abstractTheme.colors.colorSurfaceStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colors.colorSurfaceStatusWarningMuted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1Default, abstractTheme.colors.colorDecorativeAccent1Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1Default == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1Emphasized, abstractTheme.colors.colorDecorativeAccent1Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1Emphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent1Muted, abstractTheme.colors.colorDecorativeAccent1Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent1Muted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2Default, abstractTheme.colors.colorDecorativeAccent2Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2Default == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2Emphasized, abstractTheme.colors.colorDecorativeAccent2Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2Emphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent2Muted, abstractTheme.colors.colorDecorativeAccent2Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent2Muted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3Default, abstractTheme.colors.colorDecorativeAccent3Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3Default == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3Emphasized, abstractTheme.colors.colorDecorativeAccent3Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3Emphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent3Muted, abstractTheme.colors.colorDecorativeAccent3Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent3Muted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4Default, abstractTheme.colors.colorDecorativeAccent4Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4Default == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4Emphasized, abstractTheme.colors.colorDecorativeAccent4Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4Emphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent4Muted, abstractTheme.colors.colorDecorativeAccent4Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent4Muted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Default() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5Default, abstractTheme.colors.colorDecorativeAccent5Default)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5Default == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5Emphasized, abstractTheme.colors.colorDecorativeAccent5Emphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5Emphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeAccent5Muted, abstractTheme.colors.colorDecorativeAccent5Muted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeAccent5Muted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandPrimary, abstractTheme.colors.colorDecorativeBrandPrimary)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandPrimary == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandSecondary, abstractTheme.colors.colorDecorativeBrandSecondary)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandSecondary == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeBrandTertiary, abstractTheme.colors.colorDecorativeBrandTertiary)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeBrandTertiary == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralDefault, abstractTheme.colors.colorDecorativeNeutralDefault)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralDefault == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralEmphasized, abstractTheme.colors.colorDecorativeNeutralEmphasized)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralEmphasized == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeNeutralMuted, abstractTheme.colors.colorDecorativeNeutralMuted)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeNeutralMuted == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint100, abstractTheme.colors.colorDecorativeSkinTint100)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint100 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint200, abstractTheme.colors.colorDecorativeSkinTint200)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint200 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint300, abstractTheme.colors.colorDecorativeSkinTint300)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint300 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint400, abstractTheme.colors.colorDecorativeSkinTint400)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint400 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint500, abstractTheme.colors.colorDecorativeSkinTint500)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint500 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint600, abstractTheme.colors.colorDecorativeSkinTint600)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint600 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint700, abstractTheme.colors.colorDecorativeSkinTint700)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint700 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint800, abstractTheme.colors.colorDecorativeSkinTint800)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint800 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorDecorativeSkinTint900, abstractTheme.colors.colorDecorativeSkinTint900)
        XCTAssertTrue(inheritedTheme.colors.colorDecorativeSkinTint900 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier1, abstractTheme.colors.colorChartCategoricalTier1)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier1 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier2, abstractTheme.colors.colorChartCategoricalTier2)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier2 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier3, abstractTheme.colors.colorChartCategoricalTier3)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier3 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier4, abstractTheme.colors.colorChartCategoricalTier4)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier4 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier5, abstractTheme.colors.colorChartCategoricalTier5)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier5 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier6, abstractTheme.colors.colorChartCategoricalTier6)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier6 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier7, abstractTheme.colors.colorChartCategoricalTier7)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier7 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier8, abstractTheme.colors.colorChartCategoricalTier8)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier8 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier9, abstractTheme.colors.colorChartCategoricalTier9)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier9 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartCategoricalTier10, abstractTheme.colors.colorChartCategoricalTier10)
        XCTAssertTrue(inheritedTheme.colors.colorChartCategoricalTier10 == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInformation() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalInformation, abstractTheme.colors.colorChartFunctionalInformation)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalInformation == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalNegative, abstractTheme.colors.colorChartFunctionalNegative)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalNegative == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalPositive, abstractTheme.colors.colorChartFunctionalPositive)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalPositive == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartFunctionalWarning, abstractTheme.colors.colorChartFunctionalWarning)
        XCTAssertTrue(inheritedTheme.colors.colorChartFunctionalWarning == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartGridlines() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartGridlines, abstractTheme.colors.colorChartGridlines)
        XCTAssertTrue(inheritedTheme.colors.colorChartGridlines == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartHighlight() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartHighlight, abstractTheme.colors.colorChartHighlight)
        XCTAssertTrue(inheritedTheme.colors.colorChartHighlight == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorChartNeutral, abstractTheme.colors.colorChartNeutral)
        XCTAssertTrue(inheritedTheme.colors.colorChartNeutral == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Repository

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentDefault, abstractTheme.colors.colorRepositoryAccentDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentDefault == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentHighest, abstractTheme.colors.colorRepositoryAccentHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentHighest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLow, abstractTheme.colors.colorRepositoryAccentLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLow == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryAccentLowest, abstractTheme.colors.colorRepositoryAccentLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryAccentLowest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoDefault, abstractTheme.colors.colorRepositoryInfoDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoDefault == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoHighest, abstractTheme.colors.colorRepositoryInfoHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoHighest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLow, abstractTheme.colors.colorRepositoryInfoLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLow == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryInfoLowest, abstractTheme.colors.colorRepositoryInfoLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryInfoLowest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeDefault, abstractTheme.colors.colorRepositoryNegativeDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeDefault == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigh() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHigh, abstractTheme.colors.colorRepositoryNegativeHigh)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHigh == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHigher, abstractTheme.colors.colorRepositoryNegativeHigher)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHigher == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeHighest, abstractTheme.colors.colorRepositoryNegativeHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeHighest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLow, abstractTheme.colors.colorRepositoryNegativeLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLow == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLower() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLower, abstractTheme.colors.colorRepositoryNegativeLower)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLower == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNegativeLowest, abstractTheme.colors.colorRepositoryNegativeLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNegativeLowest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlack, abstractTheme.colors.colorRepositoryNeutralEmphasizedBlack)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedBlack == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigh() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigh, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigh)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigh == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigher, abstractTheme.colors.colorRepositoryNeutralEmphasizedHigher)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHigher == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighest, abstractTheme.colors.colorRepositoryNeutralEmphasizedHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedHighest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedMedium() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMedium, abstractTheme.colors.colorRepositoryNeutralEmphasizedMedium)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralEmphasizedMedium == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLower() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLower, abstractTheme.colors.colorRepositoryNeutralMutedLower)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLower == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedLowest, abstractTheme.colors.colorRepositoryNeutralMutedLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedLowest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryNeutralMutedWhite, abstractTheme.colors.colorRepositoryNeutralMutedWhite)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryNeutralMutedWhite == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHigher, abstractTheme.colors.colorRepositoryOpacityBlackHigher)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHigher == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackHighest, abstractTheme.colors.colorRepositoryOpacityBlackHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackHighest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLow, abstractTheme.colors.colorRepositoryOpacityBlackLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLow == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLower() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLower, abstractTheme.colors.colorRepositoryOpacityBlackLower)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLower == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackLowest, abstractTheme.colors.colorRepositoryOpacityBlackLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackLowest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackMedium() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackMedium, abstractTheme.colors.colorRepositoryOpacityBlackMedium)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackMedium == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackTransparent() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityBlackTransparent, abstractTheme.colors.colorRepositoryOpacityBlackTransparent)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityBlackTransparent == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityInfo, abstractTheme.colors.colorRepositoryOpacityInfo)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityInfo == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityNegative, abstractTheme.colors.colorRepositoryOpacityNegative)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityNegative == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityPositive, abstractTheme.colors.colorRepositoryOpacityPositive)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityPositive == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWarning, abstractTheme.colors.colorRepositoryOpacityWarning)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWarning == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigh() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigh, abstractTheme.colors.colorRepositoryOpacityWhiteHigh)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHigh == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHigher, abstractTheme.colors.colorRepositoryOpacityWhiteHigher)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHigher == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteHighest, abstractTheme.colors.colorRepositoryOpacityWhiteHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteHighest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLow, abstractTheme.colors.colorRepositoryOpacityWhiteLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLow == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLower() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLower, abstractTheme.colors.colorRepositoryOpacityWhiteLower)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLower == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteLowest, abstractTheme.colors.colorRepositoryOpacityWhiteLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteLowest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteTransparent() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparent, abstractTheme.colors.colorRepositoryOpacityWhiteTransparent)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryOpacityWhiteTransparent == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveDefault, abstractTheme.colors.colorRepositoryPositiveDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveDefault == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveHighest, abstractTheme.colors.colorRepositoryPositiveHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveHighest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLow, abstractTheme.colors.colorRepositoryPositiveLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLow == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPositiveLowest, abstractTheme.colors.colorRepositoryPositiveLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPositiveLowest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryDefault, abstractTheme.colors.colorRepositoryPrimaryDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryDefault == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryPrimaryLow, abstractTheme.colors.colorRepositoryPrimaryLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryPrimaryLow == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningDefault, abstractTheme.colors.colorRepositoryWarningDefault)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningDefault == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningHighest, abstractTheme.colors.colorRepositoryWarningHighest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningHighest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLow() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLow, abstractTheme.colors.colorRepositoryWarningLow)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLow == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colors.colorRepositoryWarningLowest, abstractTheme.colors.colorRepositoryWarningLowest)
        XCTAssertTrue(inheritedTheme.colors.colorRepositoryWarningLowest == OtherMockThemeColorSemanticTokensWrapper.otherMockThemeMultipleColorSemanticTokens)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit
// swiftlint:enable type_name
