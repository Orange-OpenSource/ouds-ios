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

// MARK: - String extension

extension String {

    // swiftlint:disable nslocalizedstring_key
    /// Returns the localized result string using `self` as key.
    /// Will first look for *Bundle.main* localizables, then as a last fallback will look in OUDS library bundle.
    ///
    /// - Returns String: The conversion of `self` as `NSLocalizedString`
    public func localized() -> String {
        let oudsComponentsBundle = Bundle.OUDSComponents
        let preferredLocalization = Bundle.preferredLocalization

        guard let path = oudsComponentsBundle.path(forResource: preferredLocalization, ofType: "lproj") else {
            OL.warning("Unable to define path for lproj with preferred localization '\(preferredLocalization)'")
            return NSLocalizedString(self, bundle: Bundle.OUDSComponents, comment: "")
        }

        guard let languageBundle = Bundle(path: path) else {
            OL.warning("Unable to define bundle for expected language '\(preferredLocalization)'")
            return NSLocalizedString(self, bundle: Bundle.OUDSComponents, comment: "")
        }

        OL.debug("Preferred localization found: '\(preferredLocalization)'")
        return NSLocalizedString(self, tableName: nil, bundle: languageBundle, value: "", comment: "")
    }
    // swiftlint:enable nslocalizedstring_key

    /// Returns a localized String using `self` as wording key expected to be in localizables.
    /// Will then inject as `String` the given `argument` inside the parameterized string.
    /// - Parameter argument: The unique value to insert in the localized string with `self` as key
    /// - Returns: The localized `String`
    public func localized(with argument: CVarArg) -> String {
        String(format: localized(), argument)
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
