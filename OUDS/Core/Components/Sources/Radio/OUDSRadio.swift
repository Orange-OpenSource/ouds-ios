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

// MARK: - OUDS Radio

/// The ``OUDSRadio`` proposes layout to add in your views a lonely radio, without labels, texts nor icons radios components
/// If you want to use a radio with additional texts and icon, prefer instead ``OUDSRadioItem``.
///
/// ## Particular cases
///
/// An ``OUDSRadio`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look-and-feel is implemented for that if the `isError` flag is risen.
/// In addition, the ``OUDSRadio`` can be in read only mode, i.e. the user cannot interact with the component yet but this component must not be considered
/// as disabled.
///
/// ## Case forbidden by design
///
/// **The design system does not allow to have both an error situation and a disabled component.**
///
/// ## Code samples
///
/// ```swift
///     // Supposing radio is not selected
///     @Published var isOn: Bool  = false
///
///     // A simple radio, no error, not in read only mode
///     OUDSRadio(isOn: $isOn)
///
///     // A simple radio, but is an error context
///     OUDSRadio(isOn: $isOn, isError: true)
///
///     // Never disable an error-related radio as it will crash
///     // This is forbidden by design!
///     OUDSRadio(isOn: $isOn, isError: true).disabled(true) // fatal error
/// ```
///
/// ## Design documentation
///
/// See [unified-design-system.orange.com/472794e18/p/23f1c1-radio](https://unified-design-system.orange.com/472794e18/p/23f1c1-radio)
///
/// - Since: 0.12.0
public struct OUDSRadio: View {

    // MARK: - Properties

    private let isError: Bool
    private let accessibilityLabel: String

    @Binding var isOn: Bool
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializers

    /// Creates a radio with only a selector.
    ///
    /// **The design system does not allow to have both an error situation and a disabled state for the component.**
    ///
    /// - Parameters:
    ///    - selction: A binding to a property that indicates whether the toggle is on or off.
    ///    - accessibilityLabel: The accessibility label the component must have
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    public init(isOn: Binding<Bool>,
                accessibilityLabel: String,
                isError: Bool = false) {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSRadio should not have an empty accessibility label, think about your disabled users!")
        }

        _isOn = isOn
        self.accessibilityLabel = accessibilityLabel.localized()
        self.isError = isError
    }

    // MARK: Body

    public var body: some View {
        Button("") {
            $isOn.wrappedValue.toggle()
        }
        .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
        .accessibilityLabel(a11yLabel)
        .accessibilityValue(a11yValue)
        .accessibilityHint(a11yHint)
        .buttonStyle(RadioOnlyButtonStyle(isOn: $isOn.wrappedValue, isError: isError))
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state
    private var a11yLabel: String {
        let stateDescription = isEnabled ? "" : "core_radio_disabled_a11y".localized()
        let errorDescription = isError ? "core_radio_error_a11y".localized() : ""
        let radioA11yTrait = "core_radio_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(accessibilityLabel), \(stateDescription) \(errorDescription) \(radioA11yTrait)"
        return result
    }

    /// The text to vocalize with *Voice Over* for the state of the selector
    private var a11yValue: String {
        _isOn.wrappedValue ? "core_checkbox_selector_selected_a11y" :
            "core_checkbox_selector_unselected_a11y"
    }

    /// The text to vocalize with *Voice Over* to explain to the user to which state the component will move when tapped
    private var a11yHint: String {
        if _isOn.wrappedValue {
            return "core_checkbox_selector_hint_a11y" <- "core_checkbox_selector_unselected_a11y".localized()
        } else {
            return "core_checkbox_selector_hint_a11y" <- "core_checkbox_selector_selected_a11y".localized()
        }
    }
}
