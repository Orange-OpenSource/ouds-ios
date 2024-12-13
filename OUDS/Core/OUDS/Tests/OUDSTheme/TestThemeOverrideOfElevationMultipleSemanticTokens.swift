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
// swiftlint:disable type_name
// swiftlint:disable line_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact, the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _elevation semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
///
/// **These tests checks if any _elevation multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfElevationMultipleSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Elevation - Colors

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDefault, abstractTheme.elevations.elevationColorDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDefault.isEqual(MockThemeElevationSemanticTokensWrapper.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorNone, abstractTheme.elevations.elevationColorNone)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorNone.isEqual(MockThemeElevationSemanticTokensWrapper.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorRaised, abstractTheme.elevations.elevationColorRaised)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorRaised.isEqual(MockThemeElevationSemanticTokensWrapper.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDrag, abstractTheme.elevations.elevationColorDrag)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDrag.isEqual(MockThemeElevationSemanticTokensWrapper.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorEmphasized, abstractTheme.elevations.elevationColorEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorEmphasized.isEqual(MockThemeElevationSemanticTokensWrapper.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyDefault, abstractTheme.elevations.elevationColorStickyDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyDefault.isEqual(MockThemeElevationSemanticTokensWrapper.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyEmphasized, abstractTheme.elevations.elevationColorStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyEmphasized.isEqual(MockThemeElevationSemanticTokensWrapper.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyNavigationScrolled, abstractTheme.elevations.elevationColorStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyNavigationScrolled.isEqual(MockThemeElevationSemanticTokensWrapper.mockThemeElevationMultipleColorSemanticToken))
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
// swiftlint:enable line_length
