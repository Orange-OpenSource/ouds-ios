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
import Testing

// swiftlint:disable force_unwrapping

/// Provides methods for assertions using *Swift Testing* library
public enum TestsUtils {

    /// Checks if `value` is between `min` and `max`
    public static func assertBetween(min: Double, _ value: Double, max: Double) {
        #expect(min <= value && value <= max, "\(value) not between \(min) and \(max)")
    }

    /// Checks if the `value` is a multiple of `factor`
    public static func assertMultipleOf(_ value: Int, factor: Int) {
        let remaining = value % factor
        // If multiple, remaining will be 0 OR between 0 and factor if value less than factor
        #expect(remaining == 0 || remaining < factor, "Current value: \(value) % \(factor) = \(remaining)")
    }

    /// Checks if the `value` is a multiple of `factor`
    public static func assertMultipleOf(_ value: Double, factor: Double) {
        let value = Int(value)
        let factor = Int(factor)
        let remaining = value % factor
        // If multiple, remaining will be 0 OR between 0 and factor if value less than factor
        #expect(remaining == 0 || remaining < factor, "Current value: \(value) % \(factor) = \(remaining)")
    }

    /// Compares two colors in hexadecimal values and asserts if `left` is "lighter" than `right`, i.e. has a bigger integer value
    public static func assertColorLighterThan(_ left: String, _ right: String) {
        let leftBrightness = left.fromHexToInt()!
        let rightBrightness = right.fromHexToInt()!
        #expect(leftBrightness > rightBrightness, "Right color '\(right)' is not lighter than the left color '\(left)'")
    }

    /// Compares two colors in hexadecimal values and asserts if `left` is "darker" than `right`, i.e. has a lower integer value
    public static func assertColorDarkerThan(_ left: String, _ right: String) {
        let leftBrightness = left.fromHexToInt()!
        let rightBrightness = right.fromHexToInt()!
        #expect(leftBrightness < rightBrightness, "Right color '\(right)' is not darker than the left color '\(left)'")
    }

    /// Asserts if the given `String` matches the given `pattern` regular expression
    /// - Parameters:
    ///    - value: The String to test
    ///    - pattern: The regular expression to apply
    public static func assertMatches(_ value: String, regexp pattern: NSRegularExpression) {
        let range = NSRange(location: 0, length: value.utf16.count)
        let match = pattern.firstMatch(in: value, options: [], range: range) != nil
        #expect(match)
    }
}

// swiftlint:enable force_unwrapping
