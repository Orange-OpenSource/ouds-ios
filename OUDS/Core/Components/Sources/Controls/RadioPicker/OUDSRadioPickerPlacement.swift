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

/// Enumerates the types of layouts a ``OUDSRadioPicker`` can have
///
/// - Since: 0.14.0
public enum OUDSRadioPickerPlacement {

    /// All radio buttons are in one row, with a flag saying if a scroll indicator can be displayed or not
    case horizontal(Bool)

    /// All radio buttons are in one column
    case vertical
}
