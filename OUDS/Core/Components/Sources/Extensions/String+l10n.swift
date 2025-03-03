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
}
