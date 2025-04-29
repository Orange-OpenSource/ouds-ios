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

import OUDSComponents

// MARK: - OUDS Checkbox Indicator State extension

extension OUDSCheckboxIndicatorState: @retroactive CaseIterable, @retroactive CustomStringConvertible {
    nonisolated(unsafe) public static var allCases: [OUDSCheckboxIndicatorState] = [.selected, .unselected, .indeterminate]

    // No l10n, tehchnical names
    public var description: String {
        switch self {
        case .selected:
            "Selected"
        case .unselected:
            "Unselected"
        case .indeterminate:
            "Indeterminate"
        }
    }

    var id: String { description }
}
