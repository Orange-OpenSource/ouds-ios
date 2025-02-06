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

extension OUDSCheckbox {

    /// Forges a string to vocalize with *Voice Over* describing the component state
    /// - Parameters:
    ///     - isReadOnly: True if component is in read only mode, false otherwise
    ///     - isEnabled: True if component is enabled, false otherwise
    ///     - labelText: The text of the label if any
    ///     - helperText: The text of the helper if any
    func a11yLabel(isReadOnly: Bool, isEnabled: Bool, labelText: String? = nil, helperText: String? = nil) -> String {
        let selectorDescription: String = selectorState.a11yDescription.localized()
        let stateDescription: String = isReadOnly
        ? "app_components_checkbox_componentReadOnly_a11y".localized()
        : (isEnabled
           ? "app_components_checkbox_componentEnabled_a11y".localized()
           : "app_components_checkbox_componentDisabled_a11y".localized())
        let result = "\(selectorDescription), \(stateDescription), \(labelText ?? ""), \(helperText ?? "")"
        return result
    }
}

extension OUDSCheckbox.SelectorState {

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
