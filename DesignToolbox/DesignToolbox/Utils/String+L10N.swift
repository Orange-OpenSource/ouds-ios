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

// MARK: - Operators

prefix operator °°
infix operator <-

// MARK: - String extension

extension String {

    // MARK: - Sugar

    /// Just an operator to inject as `String` one argument in a localizable
    /// - Parameters:
    ///    - lhs: The localizable value to update
    ///    - rhs: The value as String to inject in `lhs`
    /// - Returns String: The final result
    static func <- (lhs: String, rhs: String) -> String {
        String(format: lhs.localized(), rhs)
    }

    /// Just an operator to inject as `Double` one argument in a localizable
    /// - Parameters:
    ///    - lhs: The localizable value to update
    ///    - rhs: The value as Double to inject in `lhs`
    /// - Returns String: The final result
    static func <- (lhs: String, rhs: Double) -> String {
        String(format: lhs.localized(), rhs)
    }

    /// Just an operator to inject as `Int` one argument in a localizable
    /// - Parameters:
    ///    - lhs: The localizable value to update
    ///    - rhs: The value as Int to inject in `lhs`
    /// - Returns String: The final result
    static func <- (lhs: String, rhs: Int) -> String {
        String(format: lhs.localized(), rhs)
    }

    /// Just an operator to inject as `String` array some arguments in a localizable
    /// - Parameters:
    ///    - lhs: The localizable value to update
    ///    - rhs: The values as `[String] to inject in `lhs`
    /// - Returns String: The final result
    static func <- (lhs: String, rhs: [String]) -> String {
        String(format: lhs.localized(), arguments: rhs)
    }

    // MARK: - Localized

    // swiftlint:disable nslocalizedstring_key
    /// Returns the localized result string using `self` as key.
    /// Will first look for Bundle.main localizables, then as a last fallback will look in ODS library bundle.
    /// - Returns String: The conversion of `self` as `NSLocalizedString`
    func localized() -> String {
        NSLocalizedString(self, bundle: Bundle.main, comment: "")
    }

    // swiftlint:enable nslocalizedstring_key

    /// Returns a localized String using `self` as wording key expected to be in localizables.
    /// Will then inject as `String` the given `argument` inside the parameterized string.
    /// Will first look for Bundle.main localizables, then as a last fallback will look in ODS library bundle.
    /// - Parameter argument: The unique value to insert in the localized string with `self` as key
    /// - Returns: The localized `String`
    func localized(with argument: CVarArg) -> String {
        String(format: localized(), argument)
    }

    /// Returns a localized String using `self` as wording key expected to be in localizables.
    /// Will then inject as `String` the given `argument` objects inside the parameterized string.
    /// Will first look for Bundle.main localizables, then as a last fallback will look in ODS library bundle.
    /// - Parameter arguments: An array of values to insert in the localized string with `self` as key
    /// - Returns: The localized `String`
    func localized(with arguments: [CVarArg]) -> String {
        String(format: localized(), arguments: arguments)
    }
}
