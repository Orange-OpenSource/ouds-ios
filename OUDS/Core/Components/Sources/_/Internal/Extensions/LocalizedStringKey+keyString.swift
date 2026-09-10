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
import SwiftUI

// MARK: - LocalizedStringKey extension

extension LocalizedStringKey {

    // swiftlint:disable nslocalizedstring_key

    /// Extracts the raw key `String` from a `LocalizedStringKey` using reflection.
    /// This works reliably for simple, non-interpolated string keys.
    ///
    /// - Note: This relies on SwiftUI's internal representation of `LocalizedStringKey`,
    ///   which stores the key string in a child labeled `"key"`. While this has been
    ///   stable across SwiftUI versions, it is an implementation detail that may require
    ///   updating if Apple changes the internal structure in a future release.
    ///
    /// - Returns: The raw key string embedded in the `LocalizedStringKey`, or an empty string if extraction fails.
    var keyString: String {
        Mirror(reflecting: self).children.first(where: { $0.label == "key" })?.value as? String ?? ""
    }

    /// Resolves the localized string for `self` using the provided bundle and optional table name.
    ///
    /// - Parameters:
    ///    - tableName: The name of the `.strings` file to use, or `nil` for the default table.
    ///    - bundle: The bundle to look up the string in. Defaults to `Bundle.main`.
    /// - Returns: The localized string for the key, or the key itself if no localization is found.
    func resolved(tableName: String? = nil, bundle: Bundle = .main) -> String {
        NSLocalizedString(keyString, tableName: tableName, bundle: bundle, comment: "")
    }

    // swiftlint:enable nslocalizedstring_key
}
