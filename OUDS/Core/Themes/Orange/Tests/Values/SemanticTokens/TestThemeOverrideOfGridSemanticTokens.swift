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
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _grid semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeGridSemanticTokensProvider``.
///
/// **These tests checks if any _grid semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfGridSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridExtraCompactMinWidth, abstractTheme.grids.gridExtraCompactMinWidth)
        XCTAssertTrue(inheritedTheme.grids.gridExtraCompactMinWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMaxWidth() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridExtraCompactMaxWidth, abstractTheme.grids.gridExtraCompactMaxWidth)
        XCTAssertTrue(inheritedTheme.grids.gridExtraCompactMaxWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactMargin() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridExtraCompactMargin, abstractTheme.grids.gridExtraCompactMargin)
        XCTAssertTrue(inheritedTheme.grids.gridExtraCompactMargin == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSExtraCompactColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridExtraCompactColumnGap, abstractTheme.grids.gridExtraCompactColumnGap)
        XCTAssertTrue(inheritedTheme.grids.gridExtraCompactColumnGap == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridCompactMinWidth, abstractTheme.grids.gridCompactMinWidth)
        XCTAssertTrue(inheritedTheme.grids.gridCompactMinWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactMaxWidth() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridCompactMaxWidth, abstractTheme.grids.gridCompactMaxWidth)
        XCTAssertTrue(inheritedTheme.grids.gridCompactMaxWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactMargin() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridCompactMargin, abstractTheme.grids.gridCompactMargin)
        XCTAssertTrue(inheritedTheme.grids.gridCompactMargin == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSCompactColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridCompactColumnGap, abstractTheme.grids.gridCompactColumnGap)
        XCTAssertTrue(inheritedTheme.grids.gridCompactColumnGap == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularMinWidth() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridRegularMinWidth, abstractTheme.grids.gridRegularMinWidth)
        XCTAssertTrue(inheritedTheme.grids.gridRegularMinWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularMaxWidth() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridRegularMaxWidth, abstractTheme.grids.gridRegularMaxWidth)
        XCTAssertTrue(inheritedTheme.grids.gridRegularMaxWidth == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularMargin() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridRegularMargin, abstractTheme.grids.gridRegularMargin)
        XCTAssertTrue(inheritedTheme.grids.gridRegularMargin == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenGridIOSRegularColumnGap() throws {
        XCTAssertNotEqual(inheritedTheme.grids.gridRegularColumnGap, abstractTheme.grids.gridRegularColumnGap)
        XCTAssertTrue(inheritedTheme.grids.gridRegularColumnGap == MockThemeGridSemanticTokensProvider.mockThemeGridRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
