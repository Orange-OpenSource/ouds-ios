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

// swiftlint:disable identifier_name
extension String {

    // MARK: - Sugar

    /// Ensures the string you handle has been localized,
    /// e.g. when you store the string as `String` and not implicitly as `LocalizedString` (like done in `View`, sometimes the cast fails).
    /// Could also bring some fun in the source code, remember to keep it clear of course.
    /// ʕ•́ᴥ•̀ʔっ You should not use that.
    var 🌐: String {
        localized()
    }

    /// A prefix operator to return the localized string of the given `String` seen as a wording key.
    /// Could also bring some sequins in the source code 💫, remember to keep it clear of course.
    /// ʕ•́ᴥ•̀ʔっ You should not use that.
    /// - Parameter wordingKey: Some key expected in your localizables
    /// - Returns String: The localized string value
    static prefix func °° (_ wordingKey: String) -> String {
        wordingKey.localized()
    }

    /// Just an operator to inject as `String` one argument in a localizable
    /// - Parameters:
    ///    - lhs: The localizable value to update
    ///    - rhs: The value as String to inject in `lhs`
    /// - Returns String: The final result
    static func <- (lhs: String, rhs: String) -> String {
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
// swiftlint:enable identifier_name
