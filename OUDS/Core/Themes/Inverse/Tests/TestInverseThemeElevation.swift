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
import OUDSThemesInverse
import XCTest

// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional

/// `InverseTheme` is a quite particular theme with "inverse" color palette. Is it neither a light mode theme nor a dark mode theme.
/// This "inverse" mode as colors which, for a given semantic token, has the same value for both light and dark mode.
final class TestInverseThemeElevationColors: XCTestCase {

    private var inverseTheme: OUDSTheme!

    override func setUp() async throws {
        inverseTheme = InverseTheme()
    }

    func testElevationColorsEquality() throws {
        XCTAssertEqual(inverseTheme.elevations.elevationColorDefault.light, inverseTheme.elevations.elevationColorDefault.dark)
        XCTAssertEqual(inverseTheme.elevations.elevationColorNone.light, inverseTheme.elevations.elevationColorNone.dark)
        XCTAssertEqual(inverseTheme.elevations.elevationColorRaised.light, inverseTheme.elevations.elevationColorRaised.dark)
        XCTAssertEqual(inverseTheme.elevations.elevationColorDrag.light, inverseTheme.elevations.elevationColorDrag.dark)
        XCTAssertEqual(inverseTheme.elevations.elevationColorEmphasized.light, inverseTheme.elevations.elevationColorEmphasized.dark)
        XCTAssertEqual(inverseTheme.elevations.elevationColorStickyDefault.light, inverseTheme.elevations.elevationColorStickyDefault.dark)
        XCTAssertEqual(inverseTheme.elevations.elevationColorStickyEmphasized.light, inverseTheme.elevations.elevationColorStickyEmphasized.dark)
        XCTAssertEqual(inverseTheme.elevations.elevationColorStickyNavigationScrolled.light, inverseTheme.elevations.elevationColorStickyNavigationScrolled.dark)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
