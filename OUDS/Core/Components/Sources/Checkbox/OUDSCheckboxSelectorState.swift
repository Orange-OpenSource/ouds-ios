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

/// A checkbox selector has three available states: `selected`, `unselected` and `undeterminate`
///
/// - Since: 0.12.0
public enum OUDSCheckboxSelectorState {
    /// The checkbox selector is filled, a tick is inside, the user selected it
    case selected

    /// The checkbox selector is emoty, not tick inside,
    case unselected

    /// The checkbox is like prefilled, preticked, the user does not select it yet but is not empty
    case undeterminate //  (╯° °)╯︵ ┻━┻

    /// Changes the value to the next one.
    public mutating func toggle () {
        switch self {
        case .selected:
            self = .unselected
        case .unselected:
            self = .selected
        case .undeterminate:
            self = .selected
        }
    }

    /// The text to vocalize with *Voice Over* for the state of the selector
    var a11yDescription: String {
        switch self {
        case .selected:
            return "app_components_checkbox_selectorSelected_a11y"
        case .unselected:
            return "app_components_checkbox_selectorUnselected_a11y"
        case .undeterminate:
            return "app_components_checkbox_selectorUndeterminate_a11y"
        }
    }
}
