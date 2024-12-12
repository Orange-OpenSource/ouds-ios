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
        XCTAssertNotEqual(inheritedTheme.colorOpacityInvisibleBlack, abstractTheme.colorOpacityInvisibleBlack)
        XCTAssertTrue(inheritedTheme.colorOpacityInvisibleBlack == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOpacityInvisibleWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colorOpacityInvisibleWhite, abstractTheme.colorOpacityInvisibleWhite)
        XCTAssertTrue(inheritedTheme.colorOpacityInvisibleWhite == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Action

    func testInheritedThemeCanOverrideSemanticTokenColorActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionDisabled, abstractTheme.colorActionDisabled)
        XCTAssertTrue(inheritedTheme.colorActionDisabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionEnabled, abstractTheme.colorActionEnabled)
        XCTAssertTrue(inheritedTheme.colorActionEnabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionFocus, abstractTheme.colorActionFocus)
        XCTAssertTrue(inheritedTheme.colorActionFocus == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHighlighted() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionHighlighted, abstractTheme.colorActionHighlighted)
        XCTAssertTrue(inheritedTheme.colorActionHighlighted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionHover, abstractTheme.colorActionHover)
        XCTAssertTrue(inheritedTheme.colorActionHover == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionLoading, abstractTheme.colorActionLoading)
        XCTAssertTrue(inheritedTheme.colorActionLoading == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeEnabled, abstractTheme.colorActionNegativeEnabled)
        XCTAssertTrue(inheritedTheme.colorActionNegativeEnabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeFocus, abstractTheme.colorActionNegativeFocus)
        XCTAssertTrue(inheritedTheme.colorActionNegativeFocus == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeHover, abstractTheme.colorActionNegativeHover)
        XCTAssertTrue(inheritedTheme.colorActionNegativeHover == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativeLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativeLoading, abstractTheme.colorActionNegativeLoading)
        XCTAssertTrue(inheritedTheme.colorActionNegativeLoading == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionNegativePressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionNegativePressed, abstractTheme.colorActionNegativePressed)
        XCTAssertTrue(inheritedTheme.colorActionNegativePressed == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionPressed, abstractTheme.colorActionPressed)
        XCTAssertTrue(inheritedTheme.colorActionPressed == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSelected() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSelected, abstractTheme.colorActionSelected)
        XCTAssertTrue(inheritedTheme.colorActionSelected == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportEnabled, abstractTheme.colorActionSupportEnabled)
        XCTAssertTrue(inheritedTheme.colorActionSupportEnabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportFocus, abstractTheme.colorActionSupportFocus)
        XCTAssertTrue(inheritedTheme.colorActionSupportFocus == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportHover, abstractTheme.colorActionSupportHover)
        XCTAssertTrue(inheritedTheme.colorActionSupportHover == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportLoading, abstractTheme.colorActionSupportLoading)
        XCTAssertTrue(inheritedTheme.colorActionSupportLoading == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionSupportPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionSupportPressed, abstractTheme.colorActionSupportPressed)
        XCTAssertTrue(inheritedTheme.colorActionSupportPressed == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorActionVisited() throws {
        XCTAssertNotEqual(inheritedTheme.colorActionVisited, abstractTheme.colorActionVisited)
        XCTAssertTrue(inheritedTheme.colorActionVisited == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Always

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysBlack, abstractTheme.colorAlwaysBlack)
        XCTAssertTrue(inheritedTheme.colorAlwaysBlack == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnBlack, abstractTheme.colorAlwaysOnBlack)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnBlack == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysOnWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysOnWhite, abstractTheme.colorAlwaysOnWhite)
        XCTAssertTrue(inheritedTheme.colorAlwaysOnWhite == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorAlwaysWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colorAlwaysWhite, abstractTheme.colorAlwaysWhite)
        XCTAssertTrue(inheritedTheme.colorAlwaysWhite == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Background

    func testInheritedThemeCanOverrideSemanticTokenColorBgEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgEmphasized, abstractTheme.colorBgEmphasized)
        XCTAssertTrue(inheritedTheme.colorBgEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgPrimary, abstractTheme.colorBgPrimary)
        XCTAssertTrue(inheritedTheme.colorBgPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgSecondary, abstractTheme.colorBgSecondary)
        XCTAssertTrue(inheritedTheme.colorBgSecondary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBgTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBgTertiary, abstractTheme.colorBgTertiary)
        XCTAssertTrue(inheritedTheme.colorBgTertiary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Border

    func testInheritedThemeCanOverrideSemanticTokenColorBorderBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderBrandPrimary, abstractTheme.colorBorderBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBorderBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderDefault, abstractTheme.colorBorderDefault)
        XCTAssertTrue(inheritedTheme.colorBorderDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderEmphasized, abstractTheme.colorBorderEmphasized)
        XCTAssertTrue(inheritedTheme.colorBorderEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocus, abstractTheme.colorBorderFocus)
        XCTAssertTrue(inheritedTheme.colorBorderFocus == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderFocusInset() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderFocusInset, abstractTheme.colorBorderFocusInset)
        XCTAssertTrue(inheritedTheme.colorBorderFocusInset == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorBorderOnBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorBorderOnBrandPrimary, abstractTheme.colorBorderOnBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorBorderOnBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Content

    func testInheritedThemeCanOverrideSemanticTokenColorContentBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentBrandPrimary, abstractTheme.colorContentBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorContentBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDefault, abstractTheme.colorContentDefault)
        XCTAssertTrue(inheritedTheme.colorContentDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentDisabled, abstractTheme.colorContentDisabled)
        XCTAssertTrue(inheritedTheme.colorContentDisabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentMuted, abstractTheme.colorContentMuted)
        XCTAssertTrue(inheritedTheme.colorContentMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionDisabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionDisabled, abstractTheme.colorContentOnActionDisabled)
        XCTAssertTrue(inheritedTheme.colorContentOnActionDisabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionEnabled() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionEnabled, abstractTheme.colorContentOnActionEnabled)
        XCTAssertTrue(inheritedTheme.colorContentOnActionEnabled == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionFocus() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionFocus, abstractTheme.colorContentOnActionFocus)
        XCTAssertTrue(inheritedTheme.colorContentOnActionFocus == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHighlighted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionHighlighted, abstractTheme.colorContentOnActionHighlighted)
        XCTAssertTrue(inheritedTheme.colorContentOnActionHighlighted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionHover() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionHover, abstractTheme.colorContentOnActionHover)
        XCTAssertTrue(inheritedTheme.colorContentOnActionHover == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionLoading() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionLoading, abstractTheme.colorContentOnActionLoading)
        XCTAssertTrue(inheritedTheme.colorContentOnActionLoading == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionNegative, abstractTheme.colorContentOnActionNegative)
        XCTAssertTrue(inheritedTheme.colorContentOnActionNegative == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnActionPressed() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnActionPressed, abstractTheme.colorContentOnActionPressed)
        XCTAssertTrue(inheritedTheme.colorContentOnActionPressed == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnBrandPrimary, abstractTheme.colorContentOnBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorContentOnBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnOverlayEmphasized, abstractTheme.colorContentOnOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnOverlayEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusEmphasized, abstractTheme.colorContentOnStatusEmphasized)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusEmphasizedNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusEmphasizedNeutral, abstractTheme.colorContentOnStatusEmphasizedNeutral)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusEmphasizedNeutral == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentOnStatusMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentOnStatusMuted, abstractTheme.colorContentOnStatusMuted)
        XCTAssertTrue(inheritedTheme.colorContentOnStatusMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusInfo, abstractTheme.colorContentStatusInfo)
        XCTAssertTrue(inheritedTheme.colorContentStatusInfo == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusNegative, abstractTheme.colorContentStatusNegative)
        XCTAssertTrue(inheritedTheme.colorContentStatusNegative == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusPositive, abstractTheme.colorContentStatusPositive)
        XCTAssertTrue(inheritedTheme.colorContentStatusPositive == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorContentStatusWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorContentStatusWarning, abstractTheme.colorContentStatusWarning)
        XCTAssertTrue(inheritedTheme.colorContentStatusWarning == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Overlay

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayDefault, abstractTheme.colorOverlayDefault)
        XCTAssertTrue(inheritedTheme.colorOverlayDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayDrag() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayDrag, abstractTheme.colorOverlayDrag)
        XCTAssertTrue(inheritedTheme.colorOverlayDrag == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayEmphasized, abstractTheme.colorOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.colorOverlayEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorOverlayModal() throws {
        XCTAssertNotEqual(inheritedTheme.colorOverlayModal, abstractTheme.colorOverlayModal)
        XCTAssertTrue(inheritedTheme.colorOverlayModal == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Surface

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceBrandPrimary, abstractTheme.colorSurfaceBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorSurfaceBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusAccentEmphasized, abstractTheme.colorSurfaceStatusAccentEmphasized)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusAccentEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusAccentMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusAccentMuted, abstractTheme.colorSurfaceStatusAccentMuted)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusAccentMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusInfoEmphasized, abstractTheme.colorSurfaceStatusInfoEmphasized)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusInfoEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusInfoMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusInfoMuted, abstractTheme.colorSurfaceStatusInfoMuted)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusInfoMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNegativeEmphasized, abstractTheme.colorSurfaceStatusNegativeEmphasized)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNegativeEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNegativeMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNegativeMuted, abstractTheme.colorSurfaceStatusNegativeMuted)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNegativeMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNeutralEmphasized, abstractTheme.colorSurfaceStatusNeutralEmphasized)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNeutralEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusNeutralMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusNeutralMuted, abstractTheme.colorSurfaceStatusNeutralMuted)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusNeutralMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusPositiveEmphasized, abstractTheme.colorSurfaceStatusPositiveEmphasized)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusPositiveEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusPositiveMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusPositiveMuted, abstractTheme.colorSurfaceStatusPositiveMuted)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusPositiveMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusWarningEmphasized, abstractTheme.colorSurfaceStatusWarningEmphasized)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusWarningEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorSurfaceStatusWarningMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorSurfaceStatusWarningMuted, abstractTheme.colorSurfaceStatusWarningMuted)
        XCTAssertTrue(inheritedTheme.colorSurfaceStatusWarningMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Decorative

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Default, abstractTheme.colorDecorativeAccent1Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Default == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Emphasized, abstractTheme.colorDecorativeAccent1Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Emphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent1Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent1Muted, abstractTheme.colorDecorativeAccent1Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent1Muted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Default, abstractTheme.colorDecorativeAccent2Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Default == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Emphasized, abstractTheme.colorDecorativeAccent2Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Emphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent2Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent2Muted, abstractTheme.colorDecorativeAccent2Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent2Muted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Default, abstractTheme.colorDecorativeAccent3Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Default == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Emphasized, abstractTheme.colorDecorativeAccent3Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Emphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent3Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent3Muted, abstractTheme.colorDecorativeAccent3Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent3Muted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Default, abstractTheme.colorDecorativeAccent4Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Default == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Emphasized, abstractTheme.colorDecorativeAccent4Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Emphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent4Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent4Muted, abstractTheme.colorDecorativeAccent4Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent4Muted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Default() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Default, abstractTheme.colorDecorativeAccent5Default)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Default == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Emphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Emphasized, abstractTheme.colorDecorativeAccent5Emphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Emphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeAccent5Muted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeAccent5Muted, abstractTheme.colorDecorativeAccent5Muted)
        XCTAssertTrue(inheritedTheme.colorDecorativeAccent5Muted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandPrimary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandPrimary, abstractTheme.colorDecorativeBrandPrimary)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandPrimary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandSecondary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandSecondary, abstractTheme.colorDecorativeBrandSecondary)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandSecondary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeBrandTertiary() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeBrandTertiary, abstractTheme.colorDecorativeBrandTertiary)
        XCTAssertTrue(inheritedTheme.colorDecorativeBrandTertiary == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralDefault, abstractTheme.colorDecorativeNeutralDefault)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralEmphasized, abstractTheme.colorDecorativeNeutralEmphasized)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralEmphasized == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeNeutralMuted() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeNeutralMuted, abstractTheme.colorDecorativeNeutralMuted)
        XCTAssertTrue(inheritedTheme.colorDecorativeNeutralMuted == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint100() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint100, abstractTheme.colorDecorativeSkinTint100)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint100 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint200() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint200, abstractTheme.colorDecorativeSkinTint200)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint200 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint300() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint300, abstractTheme.colorDecorativeSkinTint300)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint300 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint400() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint400, abstractTheme.colorDecorativeSkinTint400)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint400 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint500() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint500, abstractTheme.colorDecorativeSkinTint500)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint500 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint600() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint600, abstractTheme.colorDecorativeSkinTint600)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint600 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint700() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint700, abstractTheme.colorDecorativeSkinTint700)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint700 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint800() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint800, abstractTheme.colorDecorativeSkinTint800)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint800 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorDecorativeSkinTint900() throws {
        XCTAssertNotEqual(inheritedTheme.colorDecorativeSkinTint900, abstractTheme.colorDecorativeSkinTint900)
        XCTAssertTrue(inheritedTheme.colorDecorativeSkinTint900 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Chart

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier1() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier1, abstractTheme.colorChartCategoricalTier1)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier1 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier2() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier2, abstractTheme.colorChartCategoricalTier2)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier2 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier3() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier3, abstractTheme.colorChartCategoricalTier3)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier3 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier4() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier4, abstractTheme.colorChartCategoricalTier4)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier4 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier5() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier5, abstractTheme.colorChartCategoricalTier5)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier5 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier6() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier6, abstractTheme.colorChartCategoricalTier6)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier6 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier7() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier7, abstractTheme.colorChartCategoricalTier7)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier7 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier8() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier8, abstractTheme.colorChartCategoricalTier8)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier8 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier9() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier9, abstractTheme.colorChartCategoricalTier9)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier9 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartCategoricalTier10() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartCategoricalTier10, abstractTheme.colorChartCategoricalTier10)
        XCTAssertTrue(inheritedTheme.colorChartCategoricalTier10 == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalInformation() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalInformation, abstractTheme.colorChartFunctionalInformation)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalInformation == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalNegative, abstractTheme.colorChartFunctionalNegative)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalNegative == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalPositive, abstractTheme.colorChartFunctionalPositive)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalPositive == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartFunctionalWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartFunctionalWarning, abstractTheme.colorChartFunctionalWarning)
        XCTAssertTrue(inheritedTheme.colorChartFunctionalWarning == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartGridlines() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartGridlines, abstractTheme.colorChartGridlines)
        XCTAssertTrue(inheritedTheme.colorChartGridlines == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartHighlight() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartHighlight, abstractTheme.colorChartHighlight)
        XCTAssertTrue(inheritedTheme.colorChartHighlight == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorChartNeutral() throws {
        XCTAssertNotEqual(inheritedTheme.colorChartNeutral, abstractTheme.colorChartNeutral)
        XCTAssertTrue(inheritedTheme.colorChartNeutral == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    // MARK: - Color - Repository

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentDefault, abstractTheme.colorRepositoryAccentDefault)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentHighest, abstractTheme.colorRepositoryAccentHighest)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentHighest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLow() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentLow, abstractTheme.colorRepositoryAccentLow)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentLow == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryAccentLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryAccentLowest, abstractTheme.colorRepositoryAccentLowest)
        XCTAssertTrue(inheritedTheme.colorRepositoryAccentLowest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoDefault, abstractTheme.colorRepositoryInfoDefault)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoHighest, abstractTheme.colorRepositoryInfoHighest)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoHighest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLow() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoLow, abstractTheme.colorRepositoryInfoLow)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoLow == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryInfoLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryInfoLowest, abstractTheme.colorRepositoryInfoLowest)
        XCTAssertTrue(inheritedTheme.colorRepositoryInfoLowest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeDefault, abstractTheme.colorRepositoryNegativeDefault)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigh() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeHigh, abstractTheme.colorRepositoryNegativeHigh)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeHigh == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeHigher, abstractTheme.colorRepositoryNegativeHigher)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeHigher == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeHighest, abstractTheme.colorRepositoryNegativeHighest)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeHighest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLow() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeLow, abstractTheme.colorRepositoryNegativeLow)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeLow == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLower() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeLower, abstractTheme.colorRepositoryNegativeLower)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeLower == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNegativeLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNegativeLowest, abstractTheme.colorRepositoryNegativeLowest)
        XCTAssertTrue(inheritedTheme.colorRepositoryNegativeLowest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedBlack() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedBlack, abstractTheme.colorRepositoryNeutralEmphasizedBlack)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedBlack == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigh() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedHigh, abstractTheme.colorRepositoryNeutralEmphasizedHigh)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedHigh == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedHigher, abstractTheme.colorRepositoryNeutralEmphasizedHigher)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedHigher == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedHighest, abstractTheme.colorRepositoryNeutralEmphasizedHighest)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedHighest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralEmphasizedMedium() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralEmphasizedMedium, abstractTheme.colorRepositoryNeutralEmphasizedMedium)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralEmphasizedMedium == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLower() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralMutedLower, abstractTheme.colorRepositoryNeutralMutedLower)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralMutedLower == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralMutedLowest, abstractTheme.colorRepositoryNeutralMutedLowest)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralMutedLowest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryNeutralMutedWhite() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryNeutralMutedWhite, abstractTheme.colorRepositoryNeutralMutedWhite)
        XCTAssertTrue(inheritedTheme.colorRepositoryNeutralMutedWhite == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackHigher, abstractTheme.colorRepositoryOpacityBlackHigher)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackHigher == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackHighest, abstractTheme.colorRepositoryOpacityBlackHighest)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackHighest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLow() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackLow, abstractTheme.colorRepositoryOpacityBlackLow)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackLow == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLower() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackLower, abstractTheme.colorRepositoryOpacityBlackLower)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackLower == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackLowest, abstractTheme.colorRepositoryOpacityBlackLowest)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackLowest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackMedium() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackMedium, abstractTheme.colorRepositoryOpacityBlackMedium)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackMedium == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityBlackTransparent() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityBlackTransparent, abstractTheme.colorRepositoryOpacityBlackTransparent)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityBlackTransparent == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityInfo() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityInfo, abstractTheme.colorRepositoryOpacityInfo)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityInfo == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityNegative() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityNegative, abstractTheme.colorRepositoryOpacityNegative)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityNegative == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityPositive() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityPositive, abstractTheme.colorRepositoryOpacityPositive)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityPositive == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWarning() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWarning, abstractTheme.colorRepositoryOpacityWarning)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWarning == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigh() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteHigh, abstractTheme.colorRepositoryOpacityWhiteHigh)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteHigh == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHigher() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteHigher, abstractTheme.colorRepositoryOpacityWhiteHigher)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteHigher == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteHighest, abstractTheme.colorRepositoryOpacityWhiteHighest)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteHighest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteHighLow() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteLow, abstractTheme.colorRepositoryOpacityWhiteLow)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteLow == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLower() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteLower, abstractTheme.colorRepositoryOpacityWhiteLower)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteLower == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteLowest, abstractTheme.colorRepositoryOpacityWhiteLowest)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteLowest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryOpacityWhiteTransparent() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryOpacityWhiteTransparent, abstractTheme.colorRepositoryOpacityWhiteTransparent)
        XCTAssertTrue(inheritedTheme.colorRepositoryOpacityWhiteTransparent == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveDefault, abstractTheme.colorRepositoryPositiveDefault)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveHighest, abstractTheme.colorRepositoryPositiveHighest)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveHighest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLow() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveLow, abstractTheme.colorRepositoryPositiveLow)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveLow == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPositiveLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPositiveLowest, abstractTheme.colorRepositoryPositiveLowest)
        XCTAssertTrue(inheritedTheme.colorRepositoryPositiveLowest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPrimaryDefault, abstractTheme.colorRepositoryPrimaryDefault)
        XCTAssertTrue(inheritedTheme.colorRepositoryPrimaryDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryPrimaryLow() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryPrimaryLow, abstractTheme.colorRepositoryPrimaryLow)
        XCTAssertTrue(inheritedTheme.colorRepositoryPrimaryLow == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningDefault() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningDefault, abstractTheme.colorRepositoryWarningDefault)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningDefault == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningHighest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningHighest, abstractTheme.colorRepositoryWarningHighest)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningHighest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLow() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningLow, abstractTheme.colorRepositoryWarningLow)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningLow == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }

    func testInheritedThemeCanOverrideSemanticTokenColorRepositoryWarningLowest() throws {
        XCTAssertNotEqual(inheritedTheme.colorRepositoryWarningLowest, abstractTheme.colorRepositoryWarningLowest)
        XCTAssertTrue(inheritedTheme.colorRepositoryWarningLowest == OtherMockTheme.otherMockThemeMultipleColorSemanticTokens)
    }
}

// swiftlint:enable type_body_length
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit
// swiftlint:enable type_name
