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

    // MARK: - Localized

    // swiftlint:disable nslocalizedstring_key

    /// Returns the localized result string using `self` as key.
    /// - Returns String: The conversion of `self` as `NSLocalizedString`
    func localized() -> String {
        NSLocalizedString(self, bundle: Bundle.main, comment: "")
    }

    /// Returns the localized result string using `self` as key.
    /// - Parameter bundle: The `Bundle` from which the wording must be loaded
    /// - Returns String: The conversion of `self` as `NSLocalizedString`
    func localized(bundle: Bundle) -> String {
        NSLocalizedString(self, bundle: bundle, comment: "")
    }
    // swiftlint:enable nslocalizedstring_key
}
