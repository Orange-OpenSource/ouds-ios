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
import OUDSTokensComponent
import SwiftUI

// MARK: - OUDS Radio

/// The ``OUDSRadio`` proposes layout to add in your views a lonely radio, without labels, texts nor icons radios components
/// If you want to use a radio with additional texts and icon, prefer instead ``OUDSRadioItem``.
///
/// ## Particular cases
///
/// An ``OUDSRadio`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look-and-feel is implemented for that if the `isError` flag is risen.
///
/// ## Accessibility considerations
///
/// Note also the component must be instanciated with a string parameter used as accessibility label.
/// It is a good pratice (at least) to define a label for a component without text for accessibility reasons. This label will be vocalized by *Voice Over*.
/// The vocalization tool will also use, after the label, a description of the component (if disabled, if error context), and a fake trait for radio.
///
/// ## Cases forbidden by design
///
/// **The design system does not allow to have both an error situation and a disabled component.**
///
/// ## Code samples
///
/// ```swift
///     // Supposing we have an unselected state
///     @Published var selection: Bool = false
///
///     // A simple radio, no error, not in read only mode
///     OUDSRadio(isOn: $selection, accessibilityLabel: "The cake is a lie")
///
///     // A simple radio, but is an error context
///     OUDSRadio(isOn: $selection, accessibilityLabel: "The cake is a lie", isError: true)
///
///     // Never disable an error-related radio button as it will crash
///     // This is forbidden by design!
///     OUDSRadio(isOn: $selection, accessibilityLabel: "The cake is a lie", isError: true).disabled(true) // fatal error
/// ```
///
/// ## Design documentation
///
/// See [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/90c467-radio-button)
///
/// - Since: 0.12.0
public struct OUDSRadio: View {

    // MARK: - Properties

    private let isError: Bool
    private let accessibilityLabel: String

    @Binding var isOn: Bool
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme

    // MARK: - Initializers

    /// Creates a radio with only an indicator.
    ///
    /// **The design system does not allow to have both an error situation and a disabled state for the component.**
    ///
    /// - Parameters:
    ///    - isOn: A binding to a property that determines whether the toggle is on or off.
    ///    - accessibilityLabel: The accessibility label the component must have
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    public init(isOn: Binding<Bool>,
                accessibilityLabel: String,
                isError: Bool = false)
    {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSRadio should not have an empty accessibility label, think about your disabled users!")
        }
        _isOn = isOn
        self.accessibilityLabel = accessibilityLabel.localized()
        self.isError = isError
    }

    // MARK: Body

    public var body: some View {
        InteractionButton {
            $isOn.wrappedValue.toggle()
        } content: { interactionState in
            RadioIndicator(interactionState: interactionState, isOn: isOn, isError: isError)
                .frame(minWidth: theme.radioButton.radioButtonSizeMinWidth,
                       minHeight: theme.radioButton.radioButtonSizeMinHeight,
                       maxHeight: theme.radioButton.radioButtonSizeMaxHeight)
        }
        .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
        .accessibilityLabel(a11yLabel)
        .accessibilityValue(a11yValue.localized())
        .accessibilityHint(a11yHint)
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state
    private var a11yLabel: String {
        let stateDescription = isEnabled ? "" : "core_common_disabled_a11y".localized()
        let errorDescription = isError ? "core_common_onError_a11y".localized() : ""
        let radioA11yTrait = "core_radio_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(accessibilityLabel), \(stateDescription) \(errorDescription) \(radioA11yTrait)"
        return result
    }

    /// The text to vocalize with *Voice Over* for the state of the indicator
    private var a11yValue: String {
        _isOn.wrappedValue ? "core_common_selected_a11y" : "core_common_unselected_a11y"
    }

    /// The text to vocalize with *Voice Over* to explain to the user to which state the component will move when tapped
    private var a11yHint: String {
        if _isOn.wrappedValue {
            return "core_radio_hint_selected_a11y" <- "core_common_unselected_a11y".localized()
        } else {
            return "core_radio_hint_unselected_a11y" <- "core_common_selected_a11y".localized()
        }
    }
}
