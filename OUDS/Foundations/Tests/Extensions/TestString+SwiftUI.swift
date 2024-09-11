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
import XCTest
import SwiftUI
import OUDSFoundations

/// Class to test `String` extensions related to `SwiftUI`
final class TestString_SwiftUI: XCTestCase {

    /// Tests values of font weight
    func testFontWeightValues() {

        // Expected values
        XCTAssertTrue("thin".fontWeight == Font.Weight.thin)
        XCTAssertTrue("ultraLight".fontWeight == Font.Weight.ultraLight)
        XCTAssertTrue("light".fontWeight == Font.Weight.light)
        XCTAssertTrue("regular".fontWeight == Font.Weight.regular)
        XCTAssertTrue("medium".fontWeight == Font.Weight.medium)
        XCTAssertTrue("semibold".fontWeight == Font.Weight.semibold)
        XCTAssertTrue("bold".fontWeight == Font.Weight.bold)
        XCTAssertTrue("heavy".fontWeight == Font.Weight.heavy)

        // Other default cases
        XCTAssertTrue("".fontWeight == Font.Weight.regular)
        XCTAssertTrue("42".fontWeight == Font.Weight.regular)
        XCTAssertTrue("Yowzah!".fontWeight == Font.Weight.regular)
    }

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
