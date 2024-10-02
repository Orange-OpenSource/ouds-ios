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

import Foundation
import OUDSFoundations
import SwiftUI
import XCTest

/// Class to test `String` extensions related to `SwiftUI`
final class TestString_SwiftUI: XCTestCase {

    /// Tests the font family values created using a font amily name and a weight
    func testComposeWithFonts() {

        var result: String

        // Expected values

        result = "Menlo".compose(withFont: "thin")
        XCTAssertTrue(result == "Menlo-Thin", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "ultraLight")
        XCTAssertTrue(result == "Menlo-UltraLight", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "light")
        XCTAssertTrue(result == "Menlo-Light", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "regular")
        XCTAssertTrue(result == "Menlo-Regular", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "medium")
        XCTAssertTrue(result == "Menlo-Medium", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "semibold")
        XCTAssertTrue(result == "Menlo-Semibold", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "bold")
        XCTAssertTrue(result == "Menlo-Bold", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "heavy")
        XCTAssertTrue(result == "Menlo-Heavy", "Current value is '\(result)")

        // Edge cases

        result = "Menlo".compose(withFont: "")
        XCTAssertTrue(result == "Menlo", "Current value is '\(result)")

        result = "".compose(withFont: "Yippee ki-yay")
        XCTAssertTrue(result == "", "Current value is '\(result)")
    }
}
