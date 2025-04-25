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

/// Enumerates the types of layouts a ``OUDSCheckboxPicker`` can have
///
/// - Since: 0.14.0
public enum OUDSCheckboxPickerPlacement {

    /// A `RootLabel` is in the end a String, but can be also a localizable with parameters for counts
    public typealias RootLabel = NSLocalizedString

    // MARK: - Values

    /// All checkboxes are in one row, with a flag saying if a scroll indicator can be displayed or not
    case horizontal(Bool)

    /// All checkboxes are in one column
    case vertical

    /// All checkboxes are in one column, with a root checkbox in the top, all children below, and a String as label
    case verticalRooted(RootLabel, DisplayType)

    // MARK: - Display Type

    /// The type of display for the root label in case of *vertical rooted* picker placement.
    public enum DisplayType {

        /// Display only the given root label
        case textOnly

        /// Display the given root label, and the number of selected items , depending to how is defined the localizable key
        case textAndCount
    }
}
