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

// ControlItem layout orientation is not accessible
enum DesignToolboxLayoutOrientation: CaseIterable, CustomStringConvertible {
    case `default`
    case reversed

    // No l10n, tehchnical names
    var description: String {
        switch self {
        case .default:
            "Default"
        case .reversed:
            "Reversed"
        }
    }

    var id: String { description }
}
