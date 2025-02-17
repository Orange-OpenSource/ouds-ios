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
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_,
/// exposing through its extensions and protocols _border semantic tokens_ using a provider as `AllBorderSemanticTokensProvider`.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeBorderSemanticTokensProvider``.
///
/// **These tests checks if any _border semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfBorderSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Border - Width

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthNone() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderWidthNone, abstractTheme.borders.borderWidthNone)
        XCTAssertTrue(inheritedTheme.borders.borderWidthNone == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthDefault() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderWidthDefault, abstractTheme.borders.borderWidthDefault)
        XCTAssertTrue(inheritedTheme.borders.borderWidthDefault == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthThin() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderWidthThin, abstractTheme.borders.borderWidthThin)
        XCTAssertTrue(inheritedTheme.borders.borderWidthThin == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthMedium() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderWidthMedium, abstractTheme.borders.borderWidthMedium)
        XCTAssertTrue(inheritedTheme.borders.borderWidthMedium == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthThick() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderWidthThick, abstractTheme.borders.borderWidthThick)
        XCTAssertTrue(inheritedTheme.borders.borderWidthThick == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthThicker() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderWidthThicker, abstractTheme.borders.borderWidthThicker)
        XCTAssertTrue(inheritedTheme.borders.borderWidthThicker == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthFocus() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderWidthFocus, abstractTheme.borders.borderWidthFocus)
        XCTAssertTrue(inheritedTheme.borders.borderWidthFocus == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderWidthFocusInset() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderWidthFocusInset, abstractTheme.borders.borderWidthFocusInset)
        XCTAssertTrue(inheritedTheme.borders.borderWidthFocusInset == MockThemeBorderSemanticTokensProvider.mockThemeBorderWidthRawToken)
    }

    // MARK: - Semantic token - Border - Radius

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusNone() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderRadiusNone, abstractTheme.borders.borderRadiusNone)
        XCTAssertTrue(inheritedTheme.borders.borderRadiusNone == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusDefault() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderRadiusDefault, abstractTheme.borders.borderRadiusDefault)
        XCTAssertTrue(inheritedTheme.borders.borderRadiusDefault == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusShort() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderRadiusShort, abstractTheme.borders.borderRadiusShort)
        XCTAssertTrue(inheritedTheme.borders.borderRadiusShort == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusMedium() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderRadiusMedium, abstractTheme.borders.borderRadiusMedium)
        XCTAssertTrue(inheritedTheme.borders.borderRadiusMedium == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusTall() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderRadiusTall, abstractTheme.borders.borderRadiusTall)
        XCTAssertTrue(inheritedTheme.borders.borderRadiusTall == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderRadiusPill() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderRadiusPill, abstractTheme.borders.borderRadiusPill)
        XCTAssertTrue(inheritedTheme.borders.borderRadiusPill == MockThemeBorderSemanticTokensProvider.mockThemeBorderRadiusRawToken)
    }

    // MARK: - Semantic token - Border - Style

    func testInheritedThemeCanOverrideSemanticTokenBorderStyleDefault() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderStyleDefault, abstractTheme.borders.borderStyleDefault)
        XCTAssertTrue(inheritedTheme.borders.borderStyleDefault == MockThemeBorderSemanticTokensProvider.mockThemeBorderStyleRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenBorderStyleDrag() throws {
        XCTAssertNotEqual(inheritedTheme.borders.borderStyleDrag, abstractTheme.borders.borderStyleDrag)
        XCTAssertTrue(inheritedTheme.borders.borderStyleDrag == MockThemeBorderSemanticTokensProvider.mockThemeBorderStyleRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
