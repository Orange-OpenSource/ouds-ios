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

import XCTest
@testable import OUDSThemesShared

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _border semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _border semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfBorderSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Border - Width

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthNone() throws {
        XCTAssertNotEqual(inheritedTheme.borderWidthNone, abstractTheme.borderWidthNone)
        XCTAssertTrue(inheritedTheme.borderWidthNone == MockTheme.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthDefault() throws {
        XCTAssertNotEqual(inheritedTheme.borderWidthDefault, abstractTheme.borderWidthDefault)
        XCTAssertTrue(inheritedTheme.borderWidthDefault == MockTheme.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthThin() throws {
        XCTAssertNotEqual(inheritedTheme.borderWidthThin, abstractTheme.borderWidthThin)
        XCTAssertTrue(inheritedTheme.borderWidthThin == MockTheme.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthThick() throws {
        XCTAssertNotEqual(inheritedTheme.borderWidthThick, abstractTheme.borderWidthThick)
        XCTAssertTrue(inheritedTheme.borderWidthThick == MockTheme.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthThicker() throws {
        XCTAssertNotEqual(inheritedTheme.borderWidthThicker, abstractTheme.borderWidthThicker)
        XCTAssertTrue(inheritedTheme.borderWidthThicker == MockTheme.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthThickest() throws {
        XCTAssertNotEqual(inheritedTheme.borderWidthThickest, abstractTheme.borderWidthThickest)
        XCTAssertTrue(inheritedTheme.borderWidthThickest == MockTheme.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthInterfactivePrimaryFocus() throws {
        XCTAssertNotEqual(inheritedTheme.borderWidthInterfactivePrimaryFocus, abstractTheme.borderWidthInterfactivePrimaryFocus)
        XCTAssertTrue(inheritedTheme.borderWidthInterfactivePrimaryFocus == MockTheme.mockThemeBorderWidthRawToken)
    }

    // MARK: - Semantic token - Border - Radius

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusNone() throws {
        XCTAssertNotEqual(inheritedTheme.borderRadiusNone, abstractTheme.borderRadiusNone)
        XCTAssertTrue(inheritedTheme.borderRadiusNone == MockTheme.mockThemeBorderRadiusRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusDefault() throws {
        XCTAssertNotEqual(inheritedTheme.borderRadiusDefault, abstractTheme.borderRadiusDefault)
        XCTAssertTrue(inheritedTheme.borderRadiusDefault == MockTheme.mockThemeBorderRadiusRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusShort() throws {
        XCTAssertNotEqual(inheritedTheme.borderRadiusShort, abstractTheme.borderRadiusShort)
        XCTAssertTrue(inheritedTheme.borderRadiusShort == MockTheme.mockThemeBorderRadiusRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusMedium() throws {
        XCTAssertNotEqual(inheritedTheme.borderRadiusMedium, abstractTheme.borderRadiusMedium)
        XCTAssertTrue(inheritedTheme.borderRadiusMedium == MockTheme.mockThemeBorderRadiusRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusTall() throws {
        XCTAssertNotEqual(inheritedTheme.borderRadiusTall, abstractTheme.borderRadiusTall)
        XCTAssertTrue(inheritedTheme.borderRadiusTall == MockTheme.mockThemeBorderRadiusRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusPill() throws {
        XCTAssertNotEqual(inheritedTheme.borderRadiusPill, abstractTheme.borderRadiusPill)
        XCTAssertTrue(inheritedTheme.borderRadiusPill == MockTheme.mockThemeBorderRadiusRawToken)
    }

    // MARK: - Semantic token - Border - Style

    func testInheritedThemeCanOverrideSemanticTokenBorderStyleDefault() throws {
        XCTAssertNotEqual(inheritedTheme.borderStyleDefault, abstractTheme.borderStyleDefault)
        XCTAssertTrue(inheritedTheme.borderStyleDefault == MockTheme.mockThemeBorderStyleRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderStyleDrag() throws {
        XCTAssertNotEqual(inheritedTheme.borderStyleDrag, abstractTheme.borderStyleDrag)
        XCTAssertTrue(inheritedTheme.borderStyleDrag == MockTheme.mockThemeBorderStyleRawToken)
    }
}
