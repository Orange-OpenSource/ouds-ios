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

    @Binding var isOn: Bool
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializers

    /// Creates a radio with only a selector.
    ///
    /// **The design system does not allow to have both an error situation and a disabled state for the component.**
    ///
    /// - Parameters:
    ///    - selction: A binding to a property that indicates whether the toggle is on or off.
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    public init(isOn: Binding<Bool>,
                isError: Bool = false) {
            self._isOn = isOn
            self.isError = isError
        }

    // MARK: Body

    public var body: some View {
        Button("") {
            $isOn.wrappedValue.toggle()
        }
        .accessibilityLabel(a11yLabel(isEnabled: isEnabled))
        .buttonStyle(RadioOnlyButtonStyle(isOn: $isOn.wrappedValue, isError: isError))
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state
    /// - Parameter isEnabled: True if component is enabled, false otherwise
    private func a11yLabel(isEnabled: Bool) -> String {
        let selectorDescription: String = isOn.description.localized()
        let stateDescription = isEnabled ?
        "core_radio_enabled_a11y".localized()
        : "core_radio_disabled_a11y".localized()
        let errorDescription = isError ? "core_radio_error_a11y".localized() : ""

        let result = "\(selectorDescription), \(stateDescription), \(errorDescription)"
        return result
    }
}
