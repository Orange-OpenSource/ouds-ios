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

/// Switch is a UI element that allows to toggle between two states, typically "On" and "Off", and used to enable or disable features, options or settings.
/// Switch that does not show icon or text, provides greater flexibility when creating other components that require a Switch to be displayed.
///
/// ## Accessibility considerations
///
/// Note also the component must be instanciated with a string parameter used as accessibility label.
/// It is a good pratice (at least) to define a label for a component without text for accessibility reasons. This label will be vocalized by *Voice Over*.
/// The vocalization tool will also use, after the label, a description of the component (if disabled, if error context), and a fake trait for switch.
///
/// ## Cases forbidden by design
///
/// **The design system does not allow to have both a read only situation and a disabled component.**
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
/// [unified-design-system.orange.com]( https://r.orange.fr/r/S-ouds-doc-switch)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A switch component in light and dark modes with Orange theme](component_switch_Orange)
///
/// ### Orange Business Tools
///
/// ![A switch component in light and dark modes with Orange Business Tools theme](component_switch_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A switch component in light and dark modes with Sosh theme](component_switch_Sosh)
///
/// ### Wireframe
///
/// ![A switch component in light and dark modes with Wireframe theme](component_switch_Wireframe)
///
/// - Version: 1.5.0 (Figma component design version)
/// - Since: 0.14.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSSwitch: View {

    // MARK: - Properties

    @Binding var isOn: Bool

    private let accessibilityLabel: String
    private let isReadOnly: Bool

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    // MARK: - Initializers

    /// Creates a switch with only an indicator.
    ///
    /// **The design system does not allow to have both a read only situation and a disabled state for the component.**
    ///
    /// - Parameters:
    ///    - isOn: A binding to a property that determines whether the toggle is on or off.
    ///    - accessibilityLabel: The accessibility label the component must have
    ///    - isReadOnly: True if the look and feel of the component must reflect a read only state, default set to `false`
    public init(isOn: Binding<Bool>, accessibilityLabel: String, isReadOnly: Bool = false) {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSSwitch should not have an empty accessibility label, think about your disabled users!")
        }
        _isOn = isOn
        self.accessibilityLabel = accessibilityLabel.localized()
        self.isReadOnly = isReadOnly
    }

    // MARK: Body

    public var body: some View {
        InteractionButton(isReadOnly: isReadOnly) {
            if reduceMotion {
                $isOn.wrappedValue.toggle()
            } else {
                withAnimation(.timingCurve(0.2, 0, 0, 1, duration: 0.150)) {
                    $isOn.wrappedValue.toggle()
                }
            }
        } content: { interactionState in
            SwitchIndicator(interactionState: interactionState, isOn: $isOn)
                .frame(minWidth: theme.switch.sizeMinWidth,
                       minHeight: theme.switch.sizeMinHeight,
                       maxHeight: theme.switch.sizeMaxHeight,
                       alignment: .center)
        }
        .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
        .accessibilityLabel(accessibilityLabel)
        .accessibilityValue(accessibilityValue)
        .accessibilityHint(accessibilityHint)
    }

    /// Forges a string to vocalize with *Voice Over* describing the component trait, value and state
    private var accessibilityValue: String {
        let traitDescription = "core_switch_trait_a11y".localized() // Fake trait for Voice Over vocalization
        let valueDescription = (_isOn.wrappedValue ? "core_common_selected_a11y" : "core_common_unselected_a11y").localized()
        let stateDescription = !isEnabled || isReadOnly ? "core_common_disabled_a11y".localized() : ""

        return "\(traitDescription). \(valueDescription). \(stateDescription)"
    }

    /// Forges a string to vocalize with *Voice Over* describing the component hint
    private var accessibilityHint: String {
        if !isEnabled || isReadOnly {
            ""
        } else {
            "core_switch_hint_a11y" <- (_isOn.wrappedValue ? "core_common_unselected_a11y" : "core_common_selected_a11y").localized()
        }
    }
}
