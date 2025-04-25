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

import OUDSFoundations

/// Enumerates the types of layouts a ``OUDSCheckboxPicker`` can have
///
/// - Since: 0.14.0
public enum OUDSCheckboxPickerPlacement: CaseIterable, CustomStringConvertible, Hashable {

    /// All checkboxes are in one row, with a flag saying if a scroll indicator can be displayed or not
    case horizontal(Bool)

    /// All checkboxes are in one column
    case vertical

    /// All checkboxes are in one column, with a root checkbox in the top, all children shifted
    case verticalRooted
    
    // MARK: - Case Iterable

    public static var allCases: [OUDSCheckboxPickerPlacement] {
        [.vertical, .verticalRooted, .horizontal(true), .horizontal(false)]
    }

    public var id: String {
        description
    }

    // MARK: - Custom String Convertible

    // No l10n, tehchnical names
    // swiftlint:disable line_length
    public var description: String {
        switch self {
        case .horizontal(let showIndicator) where showIndicator == true:
            return "Horizontal with indicator"
        case .horizontal(let showIndicator) where showIndicator == false:
            return "Horizontal without indicator"
        case .vertical:
            return "Vertical"
        case .verticalRooted:
            return "Vertical with root item"
        default:
            OL.warning("This case of unknown OUDSCheckboxPickerPlacement is unexpected, fill an issue at: https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=bug_report.yml")
            return "Unknown"
        }
    }
    // swiftlint:enable line_length
}
