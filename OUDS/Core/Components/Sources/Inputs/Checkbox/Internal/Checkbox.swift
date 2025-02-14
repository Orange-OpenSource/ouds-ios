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
import SwiftUI

// MARK: - OUDS Checkbox

/// The ``Checkbox`` proposes layout to add in views some checkboxes components, even if this type of component is not iOS-native one.
/// This was the first implemention of the component as it was on *Figma* specifications.
/// To split API ad match the new speicifcations this object is no more public and is used  behing public components like ``OUDSCheckboxOnly``
/// and ``OUDSCheckboxControlItem``.
/// This object helps also to handle easily *pressed* and *hover* states and a11y features like Voice Over vocalization.
struct Checkbox: View {

    // MARK: - Properties

    private let layout: Layout
    @Binding var selectorState: OUDSCheckboxSelectorState
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Layout

    /// The three available layouts for this component
    private enum Layout {
        /// Displays only the checkbox selector, with a first flag saying if there is an error context and a second is in read only mode
        case selectorOnly(Bool, Bool)

        /// Checkbox selector in leading position, icon in trailing position, like LTR mode.
        /// Details are defined in the ``CheckboxLabel.Items``.
        /// Contains a flag saying if read only mode or not.
        case `default`(CheckboxLabel.Items, Bool)

        /// Icon in leading position, checkbox selector in trailing position, like RTL mode
        /// Details are defined in the ``CheckboxLabel.Items``.
        /// Contains a flag saying if read only mode or not.
        case inverse(CheckboxLabel.Items, Bool)
    }

    // MARK: - Initializers

    /// Creates a checkbox with no label.
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///    - state: A binding to a property that determines wether the selector is ticked, unticked or preticked.
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    ///    - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    init(state: Binding<OUDSCheckboxSelectorState>,
         isError: Bool = false,
         isReadOnly: Bool = false) {
        if isError && isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDS Checkbox in an error context and in read only mode")
        }
        self._selectorState = state
        self.layout = .selectorOnly(isError, isReadOnly)
    }

    /// Creates a checkbox with label and optional helper text, icon, divider.
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///   - state: A binding to a property that determines wether the selector is ticked, unticker or preticked.
    ///   - labelText: The main label text of the switch.
    ///   - helperText: An additonal helper text.
    ///   - icon: An optional icon
    ///   - isInversed: `True` of the checkbox selector must be in trailing position,` false` otherwise. Default to `false`
    ///   - isError: `True` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    init(state: Binding<OUDSCheckboxSelectorState>,
         labelText: String,
         helperText: String? = nil,
         icon: Image? = nil,
         isInversed: Bool = false,
         isError: Bool = false,
         isReadOnly: Bool = false,
         hasDivider: Bool = false) {

        if isError && isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDS Checkbox in an error context and in read only mode")
        }

        if let helperText, helperText.isEmpty {
            OL.warning("Helper text given to an OUDS Checkbox is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        self._selectorState = state
        if isInversed {
            self.layout = .inverse(.init(labelText: labelText,
                                         helperText: helperText,
                                         icon: icon,
                                         isError: isError,
                                         hasDivider: hasDivider),
                                   isReadOnly)
        } else {
            self.layout = .default(.init(labelText: labelText,
                                         helperText: helperText,
                                         icon: icon,
                                         isError: isError,
                                         hasDivider: hasDivider),
                                   isReadOnly)
        }
    }

    // MARK: Body

    var body: some View {
        switch layout {
        case let .default(label, isReadOnly):
            Button("") {
                if !isReadOnly {
                    $selectorState.wrappedValue.toggle()
                }
            }
            .accessibilityLabel(a11yLabel(isReadOnly: isReadOnly, isEnabled: isEnabled, labelText: label.labelText, helperText: label.helperText))
            .buttonStyle(CheckboxLabeledStyle(selectorState: $selectorState.wrappedValue,
                                              items: label,
                                              isInversed: false,
                                              isReadOnly: isReadOnly))
        case let .inverse(label, isReadOnly):
            Button("") {
                if !isReadOnly {
                    $selectorState.wrappedValue.toggle()
                }
            }
            .accessibilityLabel(a11yLabel(isReadOnly: isReadOnly, isEnabled: isEnabled, labelText: label.labelText, helperText: label.helperText))
            .buttonStyle(CheckboxLabeledStyle(selectorState: $selectorState.wrappedValue,
                                              items: label,
                                              isInversed: true,
                                              isReadOnly: isReadOnly))
        case let .selectorOnly(isError, isReadOnly):
            Button("") {
                if !isReadOnly {
                    $selectorState.wrappedValue.toggle()
                }
            }
            .accessibilityLabel(a11yLabel(isReadOnly: isReadOnly, isEnabled: isEnabled))
            .buttonStyle(CheckboxSelectorOnlyStyle(selectorState: $selectorState.wrappedValue,
                                                   isError: isError,
                                                   isReadOnly: isReadOnly))
        }
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state
    /// - Parameters:
    ///    - isReadOnly: True if component is in read only mode, false otherwise
    ///    - isEnabled: True if component is enabled, false otherwise
    ///    - labelText: The text of the label if any
    ///    - helperText: The text of the helper if any
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
