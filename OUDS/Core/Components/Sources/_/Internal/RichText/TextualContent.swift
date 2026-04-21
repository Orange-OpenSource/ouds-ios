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

import SwiftUI

/// Some components can have textual contents like descriptions.
/// These things can be defined with raw `String` or rich text like `AttributedString`, or localized string.
/// Helps to have in one property several cases instead of several properties.
enum TextualContent {

    /// The text is a raw `String` to use as is
    case raw(String)

    /// The text is an `AtttributtedString`, a rich text
    case attributed(AttributedString)

    /// The text is a localized string which can be found at a `LocalizedStringKey` for a given table name as `String?` in a `Bundle`
    case localized(LocalizedStringKey, String? = nil, Bundle = .main)

    var isEmpty: Bool {
        switch self {
        case let .raw(text):
            text.isEmpty
        case let .attributed(text):
            text.characters.isEmpty
        case let .localized(key, tableName, bundle):
            key.resolved(tableName: tableName, bundle: bundle).isEmpty
        }
    }
}
