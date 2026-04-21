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

    /// Helps to create a `Text` View with the suitable infered type, otherwise compiler gets nut.
    ///
    /// - Parameter description: The text to display in a particular context
    func textView(for description: TextualContent) -> Text {
        switch description {
        case let .attributed(attributedString):
            Text(attributedString)
        case let .raw(text):
            Text(text)
        }
    }
}
