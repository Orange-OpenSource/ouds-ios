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

/// The ``OUDSCheckbox`` proposes layout to add in your views a lonely checkbox, without labels, texts nor icons checkboxes components
/// If you want to use a checkbox with additional texts and icon, prefer instead ``OUDSCheckboxItem``.
///
/// ## Selector states
///
/// The checkbox selector has three available states:
/// - **selected**: the checkbox is filled with a tick, the user has made the action to select the checkbox
/// - **unselected**: the checkbox is empty, does not contain a tick, the user has made the action to unselect or did not select yet the checkbox
/// - **undeterminate**: like a prefilled or preticked checkbox, the user did not do anything on it yet
///
/// ## Particular cases
///
/// An ``OUDSCheckbox`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look-and-feel is implemented for that if the `isError` flag is risen.
/// In addition, the ``OUDSCheckbox`` can be in read only mode, i.e. the user cannot interact with the component yet but this component must not be considered
/// as disabled.
///
/// ## Case forbidden by design
///
/// **The design system does not allow to have both an error situation and a disabled component.**
///
/// ## Code samples
///
/// ```swift
///     // Supposing we have an undeterminate state checkbox
///     @Published var state: OUDSCheckboxSelectorState  = .undeterminate
///
///     // A simple checkbox, no error, not in read only mode
///     OUDSCheckbox(state: $state)
///
///     // A simple checkbox, but is an error context
///     OUDSCheckbox(state: $state, isError: true)
///
///     // Never disable an error-related checkbox as it will crash
///     // This is forbidden by design!
///     OUDSCheckbox(state: $state, isError: true).disabled(true) // fatal error
/// ```
///
/// ## Design documentation
///
/// See [unified-design-system.orange.com/472794e18/p/23f1c1-checkbox](https://unified-design-system.orange.com/472794e18/p/23f1c1-checkbox)
///
/// - Since: 0.12.0
public struct OUDSCheckbox: View {

    // MARK: - Properties

    private let isError: Bool

    @Binding var selectorState: OUDSCheckboxSelectorState
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializers

    /// Creates a checkbox with only a selector.
    ///
    /// **The design system does not allow to have both an error situation and a disabled state for the component.**
    ///
    /// - Parameters:
    ///    - state: A binding to a property that determines wether the selector is ticked, unticked or preticked.
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    public init(state: Binding<OUDSCheckboxSelectorState>,
                isError: Bool = false) {
            self._selectorState = state
            self.isError = isError
        }

    // MARK: Body

    public var body: some View {
        Button("") {
            $selectorState.wrappedValue.toggle()
        }
        .accessibilityLabel(a11yLabel(isEnabled: isEnabled))
        .buttonStyle(CheckboxOnlyButtonStyle(selectorState: $selectorState.wrappedValue, isError: isError))
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state
    /// - Parameter isEnabled: True if component is enabled, false otherwise
    private func a11yLabel(isEnabled: Bool) -> String {
        let selectorDescription: String = selectorState.a11yDescription.localized()
        let stateDescription = isEnabled ?
        "core_checkbox_enabled_a11y".localized()
        : "core_checkbox_disabled_a11y".localized()

        let result = "\(selectorDescription), \(stateDescription)"
        return result
    }
}
