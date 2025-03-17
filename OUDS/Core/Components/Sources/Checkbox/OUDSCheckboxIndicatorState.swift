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
public enum OUDSCheckboxIndicatorState {
    /// The checkbox indicator is filled, a tick is inside, the user selected it
    case selected

    /// The checkbox indicator is emoty, not tick inside,
    case unselected

    /// The checkbox indicator is like prefilled, preticked, the user does not select it yet but is not empty
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
            return "core_checkbox_checked_a11y"
        case .unselected:
            return "core_checkbox_unchecked_a11y"
        case .undeterminate:
            return "core_checkbox_undeterminate_a11y"
        }
    }

    /// The text to vocalize with *Voice Over* to explain to the user to which state the component will move when tapped
    var a11yHint: String {
        switch self {
        case .selected:
            return "core_checkbox_hint_a11y" <- "core_checkbox_unchecked_a11y".localized()
        case .unselected:
            return "core_checkbox_hint_a11y" <- "core_checkbox_checked_a11y".localized()
        case .undeterminate:
            return "core_checkbox_hint_a11y" <- "core_checkbox_checked_a11y".localized()
        }
    }
}
