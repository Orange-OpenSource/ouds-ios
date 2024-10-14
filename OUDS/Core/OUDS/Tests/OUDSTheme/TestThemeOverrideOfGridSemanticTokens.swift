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
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional

// WARNING: Maybe removed in the future or needs to be updated with token generation

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

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridExtraCompactMinWidth, abstractTheme.gridExtraCompactMinWidth)
        XCTAssertTrue(inheritedTheme.gridExtraCompactMinWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMaxWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridExtraCompactMaxWidth, abstractTheme.gridExtraCompactMaxWidth)
        XCTAssertTrue(inheritedTheme.gridExtraCompactMaxWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMargin() throws {
        XCTAssertNotEqual(inheritedTheme.gridExtraCompactMargin, abstractTheme.gridExtraCompactMargin)
        XCTAssertTrue(inheritedTheme.gridExtraCompactMargin == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.gridExtraCompactColumnGap, abstractTheme.gridExtraCompactColumnGap)
        XCTAssertTrue(inheritedTheme.gridExtraCompactColumnGap == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactColumnCount() throws {
        XCTAssertNotEqual(inheritedTheme.gridExtraCompactColumnCount, abstractTheme.gridExtraCompactColumnCount)
        XCTAssertTrue(inheritedTheme.gridExtraCompactColumnCount == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridCompactMinWidth, abstractTheme.gridCompactMinWidth)
        XCTAssertTrue(inheritedTheme.gridCompactMinWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactMaxWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridCompactMaxWidth, abstractTheme.gridCompactMaxWidth)
        XCTAssertTrue(inheritedTheme.gridCompactMaxWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactMargin() throws {
        XCTAssertNotEqual(inheritedTheme.gridCompactMargin, abstractTheme.gridCompactMargin)
        XCTAssertTrue(inheritedTheme.gridCompactMargin == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.gridCompactColumnGap, abstractTheme.gridCompactColumnGap)
        XCTAssertTrue(inheritedTheme.gridCompactColumnGap == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactColumnCount() throws {
        XCTAssertNotEqual(inheritedTheme.gridCompactColumnCount, abstractTheme.gridCompactColumnCount)
        XCTAssertTrue(inheritedTheme.gridCompactColumnCount == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridRegularMinWidth, abstractTheme.gridRegularMinWidth)
        XCTAssertTrue(inheritedTheme.gridRegularMinWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularMaxWidth() throws {
        XCTAssertNotEqual(inheritedTheme.gridRegularMaxWidth, abstractTheme.gridRegularMaxWidth)
        XCTAssertTrue(inheritedTheme.gridRegularMaxWidth == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularMargin() throws {
        XCTAssertNotEqual(inheritedTheme.gridRegularMargin, abstractTheme.gridRegularMargin)
        XCTAssertTrue(inheritedTheme.gridRegularMargin == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.gridRegularColumnGap, abstractTheme.gridRegularColumnGap)
        XCTAssertTrue(inheritedTheme.gridRegularColumnGap == MockTheme.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularColumnCount() throws {
        XCTAssertNotEqual(inheritedTheme.gridRegularColumnCount, abstractTheme.gridRegularColumnCount)
        XCTAssertTrue(inheritedTheme.gridRegularColumnCount == MockTheme.mockThemeGridRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
