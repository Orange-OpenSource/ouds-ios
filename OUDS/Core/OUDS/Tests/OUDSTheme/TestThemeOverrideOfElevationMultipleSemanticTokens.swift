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

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact, the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _elevation semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _elevation semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfElevationMultipleSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Elevation - Colors

    func testInheritedThemeCanOverrideSemanticTokenElevationColorNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorNone, abstractTheme.elevationColorNone)
        XCTAssertTrue(inheritedTheme.elevationColorNone.isEqual(MockTheme.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorRaised, abstractTheme.elevationColorRaised)
        XCTAssertTrue(inheritedTheme.elevationColorRaised.isEqual(MockTheme.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorDrag, abstractTheme.elevationColorDrag)
        XCTAssertTrue(inheritedTheme.elevationColorDrag.isEqual(MockTheme.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayDefault, abstractTheme.elevationColorOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayDefault.isEqual(MockTheme.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayEmphasized, abstractTheme.elevationColorOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayEmphasized.isEqual(MockTheme.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyDefault, abstractTheme.elevationColorStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationColorStickyDefault.isEqual(MockTheme.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyEmphasized, abstractTheme.elevationColorStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevationColorStickyEmphasized.isEqual(MockTheme.mockThemeElevationMultipleColorSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyNavigationScrolled, abstractTheme.elevationColorStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationColorStickyNavigationScrolled.isEqual(MockTheme.mockThemeElevationMultipleColorSemanticToken))
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
