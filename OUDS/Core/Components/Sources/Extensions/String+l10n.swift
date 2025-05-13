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

// MARK: - Operators

infix operator <-

// MARK: - String extension - Localization

extension String {

    // swiftlint:disable nslocalizedstring_key
    /// Returns the localized result string using `self` as key.
    ///
    /// If langauge is supported by *Bundle.module* the localized string is retuned from it.
    /// Else, check if langauge is supported by *Bundle.main* (i.e. application), the localized string is retuned from it.
    /// Else, as fallback the default language from *Bundle.mmodule* is used.
    ///
    /// - Returns String: The conversion of `self` as `NSLocalizedString`
    public func localized() -> String {

        let preferredLocalization = Bundle.preferredLocalization

        // If language is supported by Bundle.module, prefer this traduction
        let stringInModule = NSLocalizedString(self, tableName: nil, bundle: Bundle.module, value: "", comment: "")
        if stringInModule != self {
            OL.debug("Preferred localization found: '\(preferredLocalization)' in Bundle.module")
            return stringInModule
        }

        // If language is supported by Bundle.main (i.e. application) use it.
        let stringInMain = NSLocalizedString(self, tableName: nil, bundle: .main, value: "", comment: "")
        if stringInMain != self {
            OL.debug("Preferred localization found: '\(preferredLocalization)' in Bundle.main")
            return stringInMain
        }

        // Fallback, use default language from Bundle.module
        OL.warning("Unable to find string from Bundle.module and Bundle.main for preferred localization '\(preferredLocalization)' -> Use the default language of Bundle.module")
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.module, value: "", comment: "")
    }
    // swiftlint:enable nslocalizedstring_key

    /// Returns a localized String using `self` as wording key expected to be in localizables.
    /// Will then inject as `String` the given `argument` inside the parameterized string.
    /// - Parameter argument: The unique value to insert in the localized string with `self` as key
    /// - Returns: The localized `String`
    public func localized(with argument: CVarArg) -> String {
        String(format: localized())
    }

    /// Just an operator to inject as `String` one argument in a localizable
    /// - Parameters:
    ///    - lhs: The localizable value to update
    ///    - rhs: The value as String to inject in `lhs`
    /// - Returns String: The final result
    public static func <- (lhs: String, rhs: String) -> String {
        String(format: lhs.localized(), rhs)
    }

    /// Just an operator to inject as `Int` one argument in a localizable
    /// - Parameters:
    ///    - lhs: The localizable value to update
    ///    - rhs: The value as Int to inject in `lhs`
    /// - Returns String: The final result
    public static func <- (lhs: String, rhs: Int) -> String {
        String(format: lhs.localized(), rhs)
    }
}

// MARK: - String extension - Format

extension String {

    /// Returns `self` but with first letter capitalized
    public var camelCase: String {
        self.prefix(1).capitalized + self.dropFirst()
    }
}
