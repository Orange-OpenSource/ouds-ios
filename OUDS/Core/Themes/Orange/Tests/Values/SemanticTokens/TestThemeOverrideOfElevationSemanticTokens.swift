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
// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact, the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _elevation semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeElevatioSemanticTokensProvider``.
///
/// **These tests checks if any _elevation semantic semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfElevationSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Elevation - X

    func testInheritedThemeCanOverrideSemanticTokenElevationXNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXNone, abstractTheme.elevations.elevationXNone)
        XCTAssertTrue(inheritedTheme.elevations.elevationXNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXRaised, abstractTheme.elevations.elevationXRaised)
        XCTAssertTrue(inheritedTheme.elevations.elevationXRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXDrag, abstractTheme.elevations.elevationXDrag)
        XCTAssertTrue(inheritedTheme.elevations.elevationXDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXStickyDefault, abstractTheme.elevations.elevationXStickyDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationXStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXStickyEmphasized, abstractTheme.elevations.elevationXStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationXStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationXStickyNavigationScrolled, abstractTheme.elevations.elevationXStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevations.elevationXStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    // MARK: - Semantic token - Elevation - Y

    func testInheritedThemeCanOverrideSemanticTokenElevationYNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYNone, abstractTheme.elevations.elevationYNone)
        XCTAssertTrue(inheritedTheme.elevations.elevationYNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYRaised, abstractTheme.elevations.elevationYRaised)
        XCTAssertTrue(inheritedTheme.elevations.elevationYRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYDrag, abstractTheme.elevations.elevationYDrag)
        XCTAssertTrue(inheritedTheme.elevations.elevationYDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYStickyDefault, abstractTheme.elevations.elevationYStickyDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationYStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYStickyEmphasized, abstractTheme.elevations.elevationYStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationYStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationYStickyNavigationScrolled, abstractTheme.elevations.elevationYStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevations.elevationYStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    // MARK: - Semantic token - Elevation - Blur

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurNone, abstractTheme.elevations.elevationBlurNone)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurRaised, abstractTheme.elevations.elevationBlurRaised)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurDrag, abstractTheme.elevations.elevationBlurDrag)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurStickyDefault, abstractTheme.elevations.elevationBlurStickyDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurStickyEmphasized, abstractTheme.elevations.elevationBlurStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationBlurStickyNavigationScrolled, abstractTheme.elevations.elevationBlurStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevations.elevationBlurStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    // MARK: - Semantic token - Elevation - Colors

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDefaultLight, abstractTheme.elevations.elevationColorDefaultLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDefaultLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDefaultDark, abstractTheme.elevations.elevationColorDefaultDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDefaultDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorNoneLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorNoneLight, abstractTheme.elevations.elevationColorNoneLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorNoneLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorNoneDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorNoneDark, abstractTheme.elevations.elevationColorNoneDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorNoneDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorRaisedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorRaisedLight, abstractTheme.elevations.elevationColorRaisedLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorRaisedLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorRaisedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorRaisedDark, abstractTheme.elevations.elevationColorRaisedDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorRaisedDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDragLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDragLight, abstractTheme.elevations.elevationColorDragLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDragLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDragDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDragDark, abstractTheme.elevations.elevationColorDragDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDragDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorEmphasizedLight, abstractTheme.elevations.elevationColorEmphasizedLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorEmphasizedLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorEmphasizedDark, abstractTheme.elevations.elevationColorEmphasizedDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorEmphasizedDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyDefaultLight, abstractTheme.elevations.elevationColorStickyDefaultLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyDefaultLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyDefaultDark, abstractTheme.elevations.elevationColorStickyDefaultDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyDefaultDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyEmphasizedLight, abstractTheme.elevations.elevationColorStickyEmphasizedLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyEmphasizedLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyEmphasizedDark, abstractTheme.elevations.elevationColorStickyEmphasizedDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyEmphasizedDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolledLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyNavigationScrolledLight, abstractTheme.elevations.elevationColorStickyNavigationScrolledLight)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyNavigationScrolledLight == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolledDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyNavigationScrolledDark, abstractTheme.elevations.elevationColorStickyNavigationScrolledDark)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyNavigationScrolledDark == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
