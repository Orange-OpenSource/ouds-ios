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

// swiftlint:disable force_unwrapping

extension XCTestCase {

    /// Checks if `value` is between `min` and `max`
    public func XCTAssertBetween(min: Double, _ value: Double, max: Double, file: StaticString = #file, line: UInt = #line) {
        XCTAssertTrue(min <= value && value <= max, "\(value) not between \(min) and \(max)")
    }

    /// Checks if the `value` is a multiple of `factor`
    public func XCTAssertMultipleOf(_ value: Int, factor: Int, file: StaticString = #file, line: UInt = #line) {
        let remaining = value % factor
        // If multiple, remaining will be 0 OR between 0 and factor if value less than factor
        XCTAssertTrue(remaining == 0 || remaining < factor, "Current value: \(value) % \(factor) = \(remaining)")
    }

    /// Checks if the `value` is a multiple of `factor`
    public func XCTAssertMultipleOf(_ value: Double, factor: Double, file: StaticString = #file, line: UInt = #line) {
        let value = Int(value)
        let factor = Int(factor)
        let remaining = value % factor
        // If multiple, remaining will be 0 OR between 0 and factor if value less than factor
        XCTAssertTrue(remaining == 0 || remaining < factor, "Current value: \(value) % \(factor) = \(remaining)")
    }

    /// Compares two colors in hexadecimal values and asserts if `left` is "lighter" than `right`, i.e. has a bigger integer value
    public func XCTAssertColorLighterThan(_ left: String, _ right: String, file: StaticString = #file, line: UInt = #line) {
        let leftBrightness = hexadecimalStringToInt(left)
        let rightBrightness = hexadecimalStringToInt(right)
        XCTAssertGreaterThan(leftBrightness, rightBrightness, "Right color is not lighter than the left color", file: (file), line: line)
    }

    /// Compares two colors in hexadecimal values and asserts if `left` is "darker" than `right`, i.e. has a lower integer value
    public func XCTAssertColorDarkerThan(_ left: String, _ right: String, file: StaticString = #file, line: UInt = #line) {
        let leftBrightness = hexadecimalStringToInt(left)
        let rightBrightness = hexadecimalStringToInt(right)
        XCTAssertLessThan(leftBrightness, rightBrightness, "Right color is not darker than the left color", file: (file), line: line)
    }

    /// Asserts if the given `String` matches the given `pattern` regular expression
    /// - Parameters:
    ///    - value: The String to test
    ///    - pattern: The regular expression to apply
    public func XCTAssertMatches(_ value: String, regexp pattern: NSRegularExpression, file: StaticString = #file, line: UInt = #line) {
        let range = NSRange(location: 0, length: value.utf16.count)
        let match = pattern.firstMatch(in: value, options: [], range: range) != nil
        XCTAssertTrue(match)
    }

    // MARK: - Helpers

    private func hexadecimalStringToInt(_ value: String) -> Int {
        let hexString = value.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var intValue: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&intValue)
        return Int(exactly: intValue)!
    }
}

// swiftlint:enable force_unwrapping
