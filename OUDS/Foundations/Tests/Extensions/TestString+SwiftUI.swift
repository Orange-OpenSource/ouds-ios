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

// swiftlint:disable required_deinit

/// Class to test `String` extensions related to `SwiftUI`
final class TestString_SwiftUI: XCTestCase {

    /// Tests the font family values created using a font amily name and a weight
    func testComposeWithFonts() {

        var result: String

        // Expected values - use string scription of Font.Weight

        result = "Menlo".compose(withFont: Font.Weight.thin.description)
        XCTAssertTrue(result == "Menlo-Thin", "Current value is '\(result)")

        result = "Menlo".compose(withFont: Font.Weight.ultraLight.description)
        XCTAssertTrue(result == "Menlo-Ultra-Light", "Current value is '\(result)")

        result = "Menlo".compose(withFont: Font.Weight.light.description)
        XCTAssertTrue(result == "Menlo-Light", "Current value is '\(result)")

        result = "Menlo".compose(withFont: Font.Weight.regular.description)
        XCTAssertTrue(result == "Menlo-Regular", "Current value is '\(result)")

        result = "Menlo".compose(withFont: Font.Weight.medium.description)
        XCTAssertTrue(result == "Menlo-Medium", "Current value is '\(result)")

        result = "Menlo".compose(withFont: Font.Weight.semibold.description)
        XCTAssertTrue(result == "Menlo-Semi-Bold", "Current value is '\(result)")

        result = "Menlo".compose(withFont: Font.Weight.bold.description)
        XCTAssertTrue(result == "Menlo-Bold", "Current value is '\(result)")

        result = "Menlo".compose(withFont: Font.Weight.heavy.description)
        XCTAssertTrue(result == "Menlo-Heavy", "Current value is '\(result)")

        // Expected values - no uper case if raw string given

        result = "Menlo".compose(withFont: "thin")
        XCTAssertTrue(result == "Menlo-thin", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "ultraLight")
        XCTAssertTrue(result == "Menlo-ultraLight", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "light")
        XCTAssertTrue(result == "Menlo-light", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "regular")
        XCTAssertTrue(result == "Menlo-regular", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "medium")
        XCTAssertTrue(result == "Menlo-medium", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "semibold")
        XCTAssertTrue(result == "Menlo-semibold", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "bold")
        XCTAssertTrue(result == "Menlo-bold", "Current value is '\(result)")

        result = "Menlo".compose(withFont: "heavy")
        XCTAssertTrue(result == "Menlo-heavy", "Current value is '\(result)")

        // Edge cases

        result = "Menlo".compose(withFont: "")
        XCTAssertTrue(result == "Menlo", "Current value is '\(result)")

        result = "".compose(withFont: "Yippee ki-yay")
        XCTAssertTrue(result.isEmpty, "Current value is '\(result)")
    }
}

// swiftlint:enable required_deinit
