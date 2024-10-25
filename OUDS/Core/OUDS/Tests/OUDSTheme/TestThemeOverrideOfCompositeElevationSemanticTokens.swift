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
/// In fact, the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _composite elevation semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _composite elevation semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfElevationCompositeSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationNone, abstractTheme.elevationNone)
        XCTAssertTrue(inheritedTheme.elevationNone == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationRaised, abstractTheme.elevationRaised)
        XCTAssertTrue(inheritedTheme.elevationRaised == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationDrag, abstractTheme.elevationDrag)
        XCTAssertTrue(inheritedTheme.elevationDrag == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationOverlayDefault, abstractTheme.elevationOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevationOverlayDefault == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationOverlayEmphasized, abstractTheme.elevationOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.elevationOverlayEmphasized == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyDefault, abstractTheme.elevationStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationStickyDefault == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyEmphasized, abstractTheme.elevationStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevationStickyEmphasized == MockTheme.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationStickyNavigationScrolled, abstractTheme.elevationStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationStickyNavigationScrolled == MockTheme.mockThemeElevationCompositeSemanticToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
