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

/// Enumerates the types of layouts a ``OUDSCheckboxPicker`` can have
///
/// - Since: 0.14.0
public enum OUDSCheckboxPickerPlacement {

    /// All checkboxes are in one row, with a flag saying if a scroll indicator can be displayed or not
    case horizontal(Bool)

    /// All checkboxes are in one column
    case vertical

    /// All checkboxes are in one column, with a root checkbox in the top, all children shifted, and a String as label
    case verticalRooted(String)
}
