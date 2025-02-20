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

extension String {

    // MARK: Localization

    // swiftlint:disable nslocalizedstring_key
    /// Returns the localized result string using `self` as key.
    /// Will first look for *Bundle.main* localizables, then as a last fallback will look in OUDS library bundle.
    /// - Parameter bundle: The bundle from which localizables msut be picked
    /// - Returns String: The conversion of `self` as `NSLocalizedString`
    func localized(_ bundle: Bundle) -> String {
        let prefferedLocalization = Bundle.preferredLocalization

        guard let path = bundle.path(forResource: prefferedLocalization, ofType: "lproj") else {
            OL.warning("Unable to define path for lproj with preferred localization '\(prefferedLocalization)'")
            return NSLocalizedString(self, bundle: bundle, comment: "")
        }

        guard let languageBundle = Bundle(path: path) else {
            OL.warning("Unable to define bundle for expected language '\(prefferedLocalization)'")
            return NSLocalizedString(self, bundle: bundle, comment: "")
        }

        OL.debug("Preffered localization found: '\(prefferedLocalization)'")
        return NSLocalizedString(self, tableName: nil, bundle: languageBundle, value: "", comment: "")
    }
    // swiftlint:enable nslocalizedstring_key

    /// Returns a localized String using `self` as wording key expected to be in localizables.
    /// Will then inject as `String` the given `argument` inside the parameterized string.
    /// - Parameters:
    ///    -  argument: The unique value to insert in the localized string with `self` as key
    ///    - bundle: The bundle from which localizables msut be picked
    /// - Returns: The localized `String`
    func localized(with argument: CVarArg, _ bundle: Bundle) -> String {
        String(format: localized(bundle), argument)
    }

    /// Returns a localized String using `self` as wording key expected to be in localizables.
    /// Will then inject as `String` the given `argument` objects inside the parameterized string.
    /// - Parameters:
    ///    - arguments: An array of values to insert in the localized string with `self` as key
    ///    - bundle: The bundle from which localizables msut be picked
    /// - Returns: The localized `String`
    func localized(with arguments: [CVarArg], _ bundle: Bundle) -> String {
        String(format: localized(bundle), arguments: arguments)
    }

    // MARK: - Format

    /// Returns `self` but with first letter capitalized
    public var camelCase: String {
        self.prefix(1).capitalized + self.dropFirst()
    }
}
