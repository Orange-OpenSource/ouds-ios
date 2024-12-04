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
///
/// **These tests checks if any _elevation semantic semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfElevationSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Elevation - X

    func testInheritedThemeCanOverrideSemanticTokenElevationXNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXNone, abstractTheme.elevationXNone)
        XCTAssertTrue(inheritedTheme.elevationXNone == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXRaised, abstractTheme.elevationXRaised)
        XCTAssertTrue(inheritedTheme.elevationXRaised == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXDrag, abstractTheme.elevationXDrag)
        XCTAssertTrue(inheritedTheme.elevationXDrag == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXStickyDefault, abstractTheme.elevationXStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationXStickyDefault == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXStickyEmphasized, abstractTheme.elevationXStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevationXStickyEmphasized == MockTheme.mockThemeElevationXRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationXStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationXStickyNavigationScrolled, abstractTheme.elevationXStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationXStickyNavigationScrolled == MockTheme.mockThemeElevationXRawToken)
    }

    // MARK: - Semantic token - Elevation - Y

    func testInheritedThemeCanOverrideSemanticTokenElevationYNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYNone, abstractTheme.elevationYNone)
        XCTAssertTrue(inheritedTheme.elevationYNone == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYRaised, abstractTheme.elevationYRaised)
        XCTAssertTrue(inheritedTheme.elevationYRaised == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYDrag, abstractTheme.elevationYDrag)
        XCTAssertTrue(inheritedTheme.elevationYDrag == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYStickyDefault, abstractTheme.elevationYStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationYStickyDefault == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYStickyEmphasized, abstractTheme.elevationYStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevationYStickyEmphasized == MockTheme.mockThemeElevationYRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationYStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationYStickyNavigationScrolled, abstractTheme.elevationYStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationYStickyNavigationScrolled == MockTheme.mockThemeElevationYRawToken)
    }

    // MARK: - Semantic token - Elevation - Blur

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurNone, abstractTheme.elevationBlurNone)
        XCTAssertTrue(inheritedTheme.elevationBlurNone == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurRaised, abstractTheme.elevationBlurRaised)
        XCTAssertTrue(inheritedTheme.elevationBlurRaised == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurDrag, abstractTheme.elevationBlurDrag)
        XCTAssertTrue(inheritedTheme.elevationBlurDrag == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyDefault, abstractTheme.elevationBlurStickyDefault)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyDefault == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyEmphasized, abstractTheme.elevationBlurStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyEmphasized == MockTheme.mockThemeElevationBlurRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationBlurStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevationBlurStickyNavigationScrolled, abstractTheme.elevationBlurStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevationBlurStickyNavigationScrolled == MockTheme.mockThemeElevationBlurRawToken)
    }

    // MARK: - Semantic token - Elevation - Colors

    func testInheritedThemeCanOverrideSemanticTokenElevationColorNoneLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorNoneLight, abstractTheme.elevationColorNoneLight)
        XCTAssertTrue(inheritedTheme.elevationColorNoneLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorNoneDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorNoneDark, abstractTheme.elevationColorNoneDark)
        XCTAssertTrue(inheritedTheme.elevationColorNoneDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorRaisedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorRaisedLight, abstractTheme.elevationColorRaisedLight)
        XCTAssertTrue(inheritedTheme.elevationColorRaisedLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorRaisedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorRaisedDark, abstractTheme.elevationColorRaisedDark)
        XCTAssertTrue(inheritedTheme.elevationColorRaisedDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDragLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorDragLight, abstractTheme.elevationColorDragLight)
        XCTAssertTrue(inheritedTheme.elevationColorDragLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorDragDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorDragDark, abstractTheme.elevationColorDragDark)
        XCTAssertTrue(inheritedTheme.elevationColorDragDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayDefaultLight, abstractTheme.elevationColorOverlayDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayDefaultLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayDefaultDark, abstractTheme.elevationColorOverlayDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayDefaultDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayEmphasizedLight, abstractTheme.elevationColorOverlayEmphasizedLight)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayEmphasizedLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorOverlayEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorOverlayEmphasizedDark, abstractTheme.elevationColorOverlayEmphasizedDark)
        XCTAssertTrue(inheritedTheme.elevationColorOverlayEmphasizedDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyDefaultLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyDefaultLight, abstractTheme.elevationColorStickyDefaultLight)
        XCTAssertTrue(inheritedTheme.elevationColorStickyDefaultLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyDefaultDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyDefaultDark, abstractTheme.elevationColorStickyDefaultDark)
        XCTAssertTrue(inheritedTheme.elevationColorStickyDefaultDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasizedLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyEmphasizedLight, abstractTheme.elevationColorStickyEmphasizedLight)
        XCTAssertTrue(inheritedTheme.elevationColorStickyEmphasizedLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasizedDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyEmphasizedDark, abstractTheme.elevationColorStickyEmphasizedDark)
        XCTAssertTrue(inheritedTheme.elevationColorStickyEmphasizedDark == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolledLight() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyNavigationScrolledLight, abstractTheme.elevationColorStickyNavigationScrolledLight)
        XCTAssertTrue(inheritedTheme.elevationColorStickyNavigationScrolledLight == MockTheme.mockThemeElevationColorRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolledDark() throws {
        XCTAssertNotEqual(inheritedTheme.elevationColorStickyNavigationScrolledDark, abstractTheme.elevationColorStickyNavigationScrolledDark)
        XCTAssertTrue(inheritedTheme.elevationColorStickyNavigationScrolledDark == MockTheme.mockThemeElevationColorRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_name
