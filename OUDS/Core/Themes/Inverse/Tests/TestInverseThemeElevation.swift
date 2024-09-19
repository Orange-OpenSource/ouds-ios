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
import OUDSThemesInverse

/// `InverseTheme` is a quite particular theme with "inverse" color palette. Is it neuther a light mode theme nor a dark mode theme.
/// This "inverse" mode as colors which, for a given semantic token, has the same value for both light and dark mode.
final class TestInverseThemeElevationColors: XCTestCase {

    private var inverseTheme: OUDSTheme!

    override func setUp() async throws {
        inverseTheme = InverseTheme()
    }

    func testElevationColorsEquality() throws {
        XCTAssertEqual(inverseTheme.elevationColorNoneLight, inverseTheme.elevationColorNoneDark)
        XCTAssertEqual(inverseTheme.elevationColorRaisedLight, inverseTheme.elevationColorRaisedDark)
        XCTAssertEqual(inverseTheme.elevationColorDragLight, inverseTheme.elevationColorDragDark)
        XCTAssertEqual(inverseTheme.elevationColorOverlayDefaultLight, inverseTheme.elevationColorOverlayDefaultDark)
        XCTAssertEqual(inverseTheme.elevationColorOverlayEmphasizedLight, inverseTheme.elevationColorOverlayEmphasizedDark)
        XCTAssertEqual(inverseTheme.elevationColorStickyDefaultLight, inverseTheme.elevationColorStickyDefaultDark)
        XCTAssertEqual(inverseTheme.elevationColorStickyEmphasizedLight, inverseTheme.elevationColorStickyEmphasizedDark)
        XCTAssertEqual(inverseTheme.elevationColorStickyNavigationScrolledLight, inverseTheme.elevationColorStickyNavigationScrolledDark)
        XCTAssertEqual(inverseTheme.elevationColorFocusLight, inverseTheme.elevationColorFocusDark)
    }

    func testElevationEquality() throws {
        XCTAssertEqual(inverseTheme.elevationRaisedLight, inverseTheme.elevationRaisedDark)
        XCTAssertEqual(inverseTheme.elevationDragLight, inverseTheme.elevationDragDark)
        XCTAssertEqual(inverseTheme.elevationOverlayDefaultLight, inverseTheme.elevationOverlayDefaultDark)
        XCTAssertEqual(inverseTheme.elevationOverlayEmphasizedLight, inverseTheme.elevationOverlayEmphasizedDark)
        XCTAssertEqual(inverseTheme.elevationStickyDefaultLight, inverseTheme.elevationStickyDefaultDark)
        XCTAssertEqual(inverseTheme.elevationStickyEmphasizedLight, inverseTheme.elevationStickyEmphasizedDark)
        XCTAssertEqual(inverseTheme.elevationStickyNavigationScrolledLight, inverseTheme.elevationStickyNavigationScrolledDark)
        XCTAssertEqual(inverseTheme.elevationFocusLight, inverseTheme.elevationFocusDark)
    }
}
