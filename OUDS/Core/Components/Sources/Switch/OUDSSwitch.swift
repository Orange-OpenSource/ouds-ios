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

// MARK: - OUDS Switch

/// The ``OUDSSwitch`` proposes layout to add in your views a lonely switch, without labels, texts nor icons switchs components
/// If you want to use a switch with additional texts and icon, prefer instead ``OUDSSwitchItem``.
///
/// ## Accessibility considerations
///
/// Note also the component must be instanciated with a string parameter used as accessibility label.
/// It is a good pratice (at least) to define a label for a component without text for accessibility reasons. This label will be vocalized by *Voice Over*.
/// The vocalization tool will also use, after the label, a description of the component (if disabled, if error context), and a fake trait for switch.
///
/// ## Code samples
///
/// ```swift
///     // Supposing we have an unselected state
///     @Published var isOn: Bool = false
///
///     // A simple switch, no error, not in read only mode
///     OUDSSwitch(isOn: $isOn, accessibilityLabel: "The cake is a lie")
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/18acc0-switch)
///
/// - Since: 0.14.0
public struct OUDSSwitch: View {

    // MARK: - Properties

    @Binding var isOn: Bool

    private let accessibilityLabel: String

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme

    // MARK: - Initializers

    /// Creates a switch with only an indicator.
    ///
    /// - Parameters:
    ///    - isOn: A binding to a property that determines whether the toggle is on or off.
    ///    - accessibilityLabel: The accessibility label the component must have
    public init(isOn: Binding<Bool>, accessibilityLabel: String) {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSSwitch should not have an empty accessibility label, think about your disabled users!")
        }
        _isOn = isOn
        self.accessibilityLabel = accessibilityLabel.localized()
    }

    // MARK: Body

    public var body: some View {
        InteractionButton {
            withAnimation(.timingCurve(0.2, 0, 0, 1, duration: 0.150)) {
                $isOn.wrappedValue.toggle()
            }
            VibrationsManager.warning()
        } content: { interactionState in
            SwitchIndicator(interactionState: interactionState, isOn: isOn)
                .frame(minWidth: theme.switch.switchSizeMinWidth,
                       minHeight: theme.switch.switchSizeMinHeight,
                       maxHeight: theme.switch.switchSizeMaxHeight)
        }
        .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
        .accessibilityLabel(a11yLabel)
        .accessibilityValue(a11yValue.localized())
        .accessibilityHint(a11yHint)
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state
    private var a11yLabel: String {
        let stateDescription = isEnabled ? "" : "core_common_disabled_a11y".localized()
        let switchA11yTrait = "core_switch_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(accessibilityLabel), \(stateDescription) \(switchA11yTrait)"
        return result
    }

    /// The text to vocalize with *Voice Over* for the state of the indicator
    private var a11yValue: String {
        _isOn.wrappedValue ? "core_common_selected_a11y" : "core_common_unselected_a11y"
    }

    /// The text to vocalize with *Voice Over* to explain to the user to which state the component will move when tapped
    private var a11yHint: String {
        "core_switch_hint_a11y" <- (_isOn.wrappedValue ? "core_common_unselected_a11y" : "core_common_selected_a11y").localized()
    }
}
