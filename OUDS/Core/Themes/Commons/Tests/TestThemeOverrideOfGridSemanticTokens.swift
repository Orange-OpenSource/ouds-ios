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
import OUDSThemesCommons

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _grid semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _grid semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfGridSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactDesignWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSExtraCompactDesignWidth, abstractTheme.gridIOSExtraCompactDesignWidth)
        XCTAssertTrue(inheritedTheme.gridIOSExtraCompactDesignWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSExtraCompactMinWidth, abstractTheme.gridIOSExtraCompactMinWidth)
        XCTAssertTrue(inheritedTheme.gridIOSExtraCompactMinWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMaxWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSExtraCompactMaxWidth, abstractTheme.gridIOSExtraCompactMaxWidth)
        XCTAssertTrue(inheritedTheme.gridIOSExtraCompactMaxWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMargin() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSExtraCompactMargin, abstractTheme.gridIOSExtraCompactMargin)
        XCTAssertTrue(inheritedTheme.gridIOSExtraCompactMargin == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSExtraCompactColumnGap, abstractTheme.gridIOSExtraCompactColumnGap)
        XCTAssertTrue(inheritedTheme.gridIOSExtraCompactColumnGap == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactColumnCount() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSExtraCompactColumnCount, abstractTheme.gridIOSExtraCompactColumnCount)
        XCTAssertTrue(inheritedTheme.gridIOSExtraCompactColumnCount == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactDesignWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSCompactDesignWidth, abstractTheme.gridIOSCompactDesignWidth)
        XCTAssertTrue(inheritedTheme.gridIOSCompactDesignWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSCompactMinWidth, abstractTheme.gridIOSCompactMinWidth)
        XCTAssertTrue(inheritedTheme.gridIOSCompactMinWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactMaxWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSCompactMaxWidth, abstractTheme.gridIOSCompactMaxWidth)
        XCTAssertTrue(inheritedTheme.gridIOSCompactMaxWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactMargin() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSCompactMargin, abstractTheme.gridIOSCompactMargin)
        XCTAssertTrue(inheritedTheme.gridIOSCompactMargin == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSCompactColumnGap, abstractTheme.gridIOSCompactColumnGap)
        XCTAssertTrue(inheritedTheme.gridIOSCompactColumnGap == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactColumnCount() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSCompactColumnCount, abstractTheme.gridIOSCompactColumnCount)
        XCTAssertTrue(inheritedTheme.gridIOSCompactColumnCount == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularDesignWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSRegularDesignWidth, abstractTheme.gridIOSRegularDesignWidth)
        XCTAssertTrue(inheritedTheme.gridIOSRegularDesignWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSRegularMinWidth, abstractTheme.gridIOSRegularMinWidth)
        XCTAssertTrue(inheritedTheme.gridIOSRegularMinWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularMaxWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSRegularMaxWidth, abstractTheme.gridIOSRegularMaxWidth)
        XCTAssertTrue(inheritedTheme.gridIOSRegularMaxWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularMargin() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSRegularMargin, abstractTheme.gridIOSRegularMargin)
        XCTAssertTrue(inheritedTheme.gridIOSRegularMargin == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSRegularColumnGap, abstractTheme.gridIOSRegularColumnGap)
        XCTAssertTrue(inheritedTheme.gridIOSRegularColumnGap == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularColumnCount() throws {
        XCTAssertNotEqual(inheritedTheme.gridIOSRegularColumnCount, abstractTheme.gridIOSRegularColumnCount)
        XCTAssertTrue(inheritedTheme.gridIOSRegularColumnCount == MockTheme.mockThemeGridRawToken)
    }
}
