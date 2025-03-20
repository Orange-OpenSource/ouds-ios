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

// MARK: - Design Toolbox Layout Orientation

// ControlItem layout orientation is not accessible
enum DesignToolboxLayoutOrientation: CaseIterable, CustomStringConvertible {
    case `default`
    case inverse

    // No l10n, tehchnical names
    var description: String {
        switch self {
        case .default:
            "Left action"
        case .inverse:
            "Right action"
        }
    }

    var id: String { description }
}

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
