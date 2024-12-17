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
/// 
/// **These tests checks if any _elevation composite semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfElevationCompositeSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationNone, abstractTheme.elevations.elevationNone)
        XCTAssertTrue(inheritedTheme.elevations.elevationNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationRaised, abstractTheme.elevations.elevationRaised)
        XCTAssertTrue(inheritedTheme.elevations.elevationRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationDrag, abstractTheme.elevations.elevationDrag)
        XCTAssertTrue(inheritedTheme.elevations.elevationDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationOverlayDefault, abstractTheme.elevations.elevationOverlayDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationOverlayDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationOverlayEmphasized, abstractTheme.elevations.elevationOverlayEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationOverlayEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationStickyDefault, abstractTheme.elevations.elevationStickyDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationStickyEmphasized, abstractTheme.elevations.elevationStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationCompositeStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationStickyNavigationScrolled, abstractTheme.elevations.elevationStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevations.elevationStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
