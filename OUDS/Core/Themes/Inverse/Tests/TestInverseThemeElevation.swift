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

/// `InverseTheme` is a quite particular theme with "inverse" color palette. Is it neuther a light mode theme nor a dark mode theme.
/// This "inverse" mode as colors which, for a given semantic token, has the same value for both light and dark mode.
final class TestInverseThemeElevationColors: XCTestCase {

    private var inverseTheme: OUDSTheme!

    override func setUp() async throws {
        inverseTheme = InverseTheme()
    }

    func testElevationColorsEquality() throws {
        XCTAssertEqual(inverseTheme.elevationColorDefault.light, inverseTheme.elevationColorDefault.dark)
        XCTAssertEqual(inverseTheme.elevationColorNone.light, inverseTheme.elevationColorNone.dark)
        XCTAssertEqual(inverseTheme.elevationColorRaised.light, inverseTheme.elevationColorRaised.dark)
        XCTAssertEqual(inverseTheme.elevationColorDrag.light, inverseTheme.elevationColorDrag.dark)
        XCTAssertEqual(inverseTheme.elevationColorEmphasized.light, inverseTheme.elevationColorEmphasized.dark)
        XCTAssertEqual(inverseTheme.elevationColorStickyDefault.light, inverseTheme.elevationColorStickyDefault.dark)
        XCTAssertEqual(inverseTheme.elevationColorStickyEmphasized.light, inverseTheme.elevationColorStickyEmphasized.dark)
        XCTAssertEqual(inverseTheme.elevationColorStickyNavigationScrolled.light, inverseTheme.elevationColorStickyNavigationScrolled.dark)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
