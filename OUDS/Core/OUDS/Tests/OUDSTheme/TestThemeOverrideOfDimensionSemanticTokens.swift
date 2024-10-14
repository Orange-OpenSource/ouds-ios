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

// WARNING: Maybe removed in the future or needs to be updated with token generation

// swiftlint:disable implicitly_unwrapped_optional
// swiftlint:disable required_deinit

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _dimension semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _dimension semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfDimensionSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideSemanticTokenDimensionNone() throws {
        XCTAssertNotEqual(inheritedTheme.dimensionNone, abstractTheme.dimensionNone)
        XCTAssertTrue(inheritedTheme.dimensionNone == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension10XS() throws {
        XCTAssertNotEqual(inheritedTheme.dimension10XS, abstractTheme.dimension10XS)
        XCTAssertTrue(inheritedTheme.dimension10XS == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension9XS() throws {
        XCTAssertNotEqual(inheritedTheme.dimension9XS, abstractTheme.dimension9XS)
        XCTAssertTrue(inheritedTheme.dimension9XS == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension8XS() throws {
        XCTAssertNotEqual(inheritedTheme.dimension8XS, abstractTheme.dimension8XS)
        XCTAssertTrue(inheritedTheme.dimension8XS == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension7XS() throws {
        XCTAssertNotEqual(inheritedTheme.dimension7XS, abstractTheme.dimension7XS)
        XCTAssertTrue(inheritedTheme.dimension7XS == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension6XS() throws {
        XCTAssertNotEqual(inheritedTheme.dimension6XS, abstractTheme.dimension6XS)
        XCTAssertTrue(inheritedTheme.dimension6XS == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension5XS() throws {
        XCTAssertNotEqual(inheritedTheme.dimension5XS, abstractTheme.dimension5XS)
        XCTAssertTrue(inheritedTheme.dimension5XS == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension4XS() throws {
        XCTAssertNotEqual(inheritedTheme.dimension4XS, abstractTheme.dimension4XS)
        XCTAssertTrue(inheritedTheme.dimension4XS == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension3XS() throws {
        XCTAssertNotEqual(inheritedTheme.dimension3XS, abstractTheme.dimension3XS)
        XCTAssertTrue(inheritedTheme.dimension3XS == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension2XS() throws {
        XCTAssertNotEqual(inheritedTheme.dimension2XS, abstractTheme.dimension2XS)
        XCTAssertTrue(inheritedTheme.dimension2XS == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimensionXS() throws {
        XCTAssertNotEqual(inheritedTheme.dimensionXS, abstractTheme.dimensionXS)
        XCTAssertTrue(inheritedTheme.dimensionXS == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimensionSM() throws {
        XCTAssertNotEqual(inheritedTheme.dimensionSM, abstractTheme.dimensionSM)
        XCTAssertTrue(inheritedTheme.dimensionSM == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimensionMD() throws {
        XCTAssertNotEqual(inheritedTheme.dimensionMD, abstractTheme.dimensionMD)
        XCTAssertTrue(inheritedTheme.dimensionMD == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimensionLG() throws {
        XCTAssertNotEqual(inheritedTheme.dimensionLG, abstractTheme.dimensionLG)
        XCTAssertTrue(inheritedTheme.dimensionLG == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimensionXL() throws {
        XCTAssertNotEqual(inheritedTheme.dimensionXL, abstractTheme.dimensionXL)
        XCTAssertTrue(inheritedTheme.dimensionXL == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension2XL() throws {
        XCTAssertNotEqual(inheritedTheme.dimension2XL, abstractTheme.dimension2XL)
        XCTAssertTrue(inheritedTheme.dimension2XL == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension3XL() throws {
        XCTAssertNotEqual(inheritedTheme.dimension3XL, abstractTheme.dimension3XL)
        XCTAssertTrue(inheritedTheme.dimension3XL == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension4XL() throws {
        XCTAssertNotEqual(inheritedTheme.dimension4XL, abstractTheme.dimension4XL)
        XCTAssertTrue(inheritedTheme.dimension4XL == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension5XL() throws {
        XCTAssertNotEqual(inheritedTheme.dimension5XL, abstractTheme.dimension5XL)
        XCTAssertTrue(inheritedTheme.dimension5XL == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension6XL() throws {
        XCTAssertNotEqual(inheritedTheme.dimension6XL, abstractTheme.dimension6XL)
        XCTAssertTrue(inheritedTheme.dimension6XL == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension7XL() throws {
        XCTAssertNotEqual(inheritedTheme.dimension7XL, abstractTheme.dimension7XL)
        XCTAssertTrue(inheritedTheme.dimension7XL == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension8XL() throws {
        XCTAssertNotEqual(inheritedTheme.dimension8XL, abstractTheme.dimension8XL)
        XCTAssertTrue(inheritedTheme.dimension8XL == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension9XL() throws {
        XCTAssertNotEqual(inheritedTheme.dimension9XL, abstractTheme.dimension9XL)
        XCTAssertTrue(inheritedTheme.dimension9XL == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension10XL() throws {
        XCTAssertNotEqual(inheritedTheme.dimension10XL, abstractTheme.dimension10XL)
        XCTAssertTrue(inheritedTheme.dimension10XL == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension11XL() throws {
        XCTAssertNotEqual(inheritedTheme.dimension11XL, abstractTheme.dimension11XL)
        XCTAssertTrue(inheritedTheme.dimension11XL == MockTheme.mockThemeDimensionSemanticToken)
    }
}

// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable required_deinit
