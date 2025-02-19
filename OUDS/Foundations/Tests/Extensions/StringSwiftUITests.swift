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
import Testing

/// Struct to test `String` extensions related to `SwiftUI`
struct StringSwiftUITests {

    /// Tests the font family values created using a font family name and a weight
    @Test
    func testComposeWithFonts() throws {
        var result: String

        // Expected values - use string description of Font.Weight
        result = "Menlo".compose(withFont: Font.Weight.thin.description)
        #expect(result == "Menlo-Thin", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: Font.Weight.ultraLight.description)
        #expect(result == "Menlo-Ultra-Light", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: Font.Weight.light.description)
        #expect(result == "Menlo-Light", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: Font.Weight.regular.description)
        #expect(result == "Menlo-Regular", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: Font.Weight.medium.description)
        #expect(result == "Menlo-Medium", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: Font.Weight.semibold.description)
        #expect(result == "Menlo-Semi-Bold", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: Font.Weight.bold.description)
        #expect(result == "Menlo-Bold", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: Font.Weight.heavy.description)
        #expect(result == "Menlo-Heavy", "Current value is '\(result)'")

        // Expected values - no upper case if raw string given
        result = "Menlo".compose(withFont: "thin")
        #expect(result == "Menlo-thin", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: "ultraLight")
        #expect(result == "Menlo-ultraLight", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: "light")
        #expect(result == "Menlo-light", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: "regular")
        #expect(result == "Menlo-regular", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: "medium")
        #expect(result == "Menlo-medium", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: "semibold")
        #expect(result == "Menlo-semibold", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: "bold")
        #expect(result == "Menlo-bold", "Current value is '\(result)'")

        result = "Menlo".compose(withFont: "heavy")
        #expect(result == "Menlo-heavy", "Current value is '\(result)'")

        // Edge cases
        result = "Menlo".compose(withFont: "")
        #expect(result == "Menlo", "Current value is '\(result)'")

        result = "".compose(withFont: "Yippee ki-yay")
        #expect(result.isEmpty, "Current value is '\(result)'")
    }
}
