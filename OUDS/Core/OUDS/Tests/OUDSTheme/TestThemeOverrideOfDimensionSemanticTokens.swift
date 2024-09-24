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
import OUDS

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

    func testInheritedThemeCanOverrideSemanticTokenDimension0() throws {
        XCTAssertNotEqual(inheritedTheme.dimension0, abstractTheme.dimension0)
        XCTAssertTrue(inheritedTheme.dimension0 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension10() throws {
        XCTAssertNotEqual(inheritedTheme.dimension10, abstractTheme.dimension10)
        XCTAssertTrue(inheritedTheme.dimension10 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension20() throws {
        XCTAssertNotEqual(inheritedTheme.dimension20, abstractTheme.dimension20)
        XCTAssertTrue(inheritedTheme.dimension20 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimensio3n0() throws {
        XCTAssertNotEqual(inheritedTheme.dimension30, abstractTheme.dimension30)
        XCTAssertTrue(inheritedTheme.dimension30 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension40() throws {
        XCTAssertNotEqual(inheritedTheme.dimension40, abstractTheme.dimension40)
        XCTAssertTrue(inheritedTheme.dimension40 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension50() throws {
        XCTAssertNotEqual(inheritedTheme.dimension50, abstractTheme.dimension50)
        XCTAssertTrue(inheritedTheme.dimension50 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension60() throws {
        XCTAssertNotEqual(inheritedTheme.dimension60, abstractTheme.dimension60)
        XCTAssertTrue(inheritedTheme.dimension60 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension70() throws {
        XCTAssertNotEqual(inheritedTheme.dimension70, abstractTheme.dimension70)
        XCTAssertTrue(inheritedTheme.dimension70 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension80() throws {
        XCTAssertNotEqual(inheritedTheme.dimension0, abstractTheme.dimension0)
        XCTAssertTrue(inheritedTheme.dimension0 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension90() throws {
        XCTAssertNotEqual(inheritedTheme.dimension90, abstractTheme.dimension90)
        XCTAssertTrue(inheritedTheme.dimension90 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension100() throws {
        XCTAssertNotEqual(inheritedTheme.dimension100, abstractTheme.dimension100)
        XCTAssertTrue(inheritedTheme.dimension100 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension110() throws {
        XCTAssertNotEqual(inheritedTheme.dimension110, abstractTheme.dimension110)
        XCTAssertTrue(inheritedTheme.dimension110 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension120() throws {
        XCTAssertNotEqual(inheritedTheme.dimension120, abstractTheme.dimension120)
        XCTAssertTrue(inheritedTheme.dimension120 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension130() throws {
        XCTAssertNotEqual(inheritedTheme.dimension130, abstractTheme.dimension130)
        XCTAssertTrue(inheritedTheme.dimension130 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension140() throws {
        XCTAssertNotEqual(inheritedTheme.dimension140, abstractTheme.dimension140)
        XCTAssertTrue(inheritedTheme.dimension140 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension150() throws {
        XCTAssertNotEqual(inheritedTheme.dimension150, abstractTheme.dimension150)
        XCTAssertTrue(inheritedTheme.dimension150 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension160() throws {
        XCTAssertNotEqual(inheritedTheme.dimension160, abstractTheme.dimension160)
        XCTAssertTrue(inheritedTheme.dimension160 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension170() throws {
        XCTAssertNotEqual(inheritedTheme.dimension170, abstractTheme.dimension170)
        XCTAssertTrue(inheritedTheme.dimension170 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension180() throws {
        XCTAssertNotEqual(inheritedTheme.dimension180, abstractTheme.dimension180)
        XCTAssertTrue(inheritedTheme.dimension180 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension190() throws {
        XCTAssertNotEqual(inheritedTheme.dimension190, abstractTheme.dimension190)
        XCTAssertTrue(inheritedTheme.dimension190 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension200() throws {
        XCTAssertNotEqual(inheritedTheme.dimension200, abstractTheme.dimension200)
        XCTAssertTrue(inheritedTheme.dimension200 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension210() throws {
        XCTAssertNotEqual(inheritedTheme.dimension210, abstractTheme.dimension210)
        XCTAssertTrue(inheritedTheme.dimension210 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension220() throws {
        XCTAssertNotEqual(inheritedTheme.dimension220, abstractTheme.dimension220)
        XCTAssertTrue(inheritedTheme.dimension220 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension230() throws {
        XCTAssertNotEqual(inheritedTheme.dimension230, abstractTheme.dimension230)
        XCTAssertTrue(inheritedTheme.dimension230 == MockTheme.mockThemeDimensionSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenDimension240() throws {
        XCTAssertNotEqual(inheritedTheme.dimension240, abstractTheme.dimension240)
        XCTAssertTrue(inheritedTheme.dimension240 == MockTheme.mockThemeDimensionSemanticToken)
    }
}
