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

extension View {

    /// Helps to create a `Text` View with the suitable inferred type, otherwise compiler gets nuts.
    ///
    /// - Parameter description: The text to display in a particular context
    func textView(for description: OUDSTextualContent) -> Text {
        switch description {
        case let .rich(attributedString):
            Text(attributedString)
        case let .localized(key, tableName: tableName, bundle: bundle):
            Text(key.resolved(tableName: tableName, bundle: bundle))
        case let .raw(text):
            Text(text)
        }
    }
}
