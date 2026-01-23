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

// MARK: - OUDS Checkbox

/// Checkbox is a UI element that allows to select multiple options from a set of mutually non exclusive choices.
/// Checkbox that does not show icon or text, provides greater flexibility when creating other components that require a checkbox to be displayed.
///
/// ## Indicator states
///
/// This checkbox indicator has two available states:
/// - **selected**: the checkbox is filled with a tick, the user has made the action to select the checkbox
/// - **unselected**: the checkbox is empty, does not contain a tick, the user has made the action to unselect or did not select yet the checkbox
///
/// If you need to use a tri-state checkbox instead, refer to ``OUDSCheckboxIndeterminate``.
///
/// ## Particular cases
///
/// An ``OUDSCheckbox`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look-and-feel is implemented for that if the `isError` flag is risen.
///
/// ## Accessibility considerations
///
/// Note also the component must be instanciated with a string parameter used as accessibility label.
/// It is a good pratice (at least) to define a label for a component without text for accessibility reasons. This label will be vocalized by *Voice Over*.
/// The vocalization tool will also use, after the label, a description of the component (if disabled, if error context), and a fake trait for checkbox.
/// No accessibility identifier is defined in OUDS side as this value remains in the users hands.
///
/// ## Cases forbidden by design
///
/// **The design system does not allow to have both an error or a read only situation and a disabled component.**
///
/// ## Code samples
///
/// ```swift
///     // Supposing we have a selected checkbox
///     @Published var isOn: Bool = true
///
///     // A simple checkbox, no error, not in read only mode
///     OUDSCheckbox(isOn: $isOn, accessibilityLabel: "The cake is a lie")
///
///     // A simple checkbox, but is an error context
///     OUDSCheckbox(isOn: $isOn, accessibilityLabel: "The cake is a lie"), isError: true)
///
///     // Never disable an error-related checkbox as it will crash
///     // This is forbidden by design!
///     OUDSCheckbox(isOn: $isOn, accessibilityLabel: "The cake is a lie"), isError: true).disabled(true) // fatal error
/// ```
///
/// ## Suggestions
///
/// According to the [documentation](https://r.orange.fr/r/S-ouds-doc-checkbox), the checkbox by default must be used in unselected state.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-checkbox)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A checkbox component in light and dark modes with Orange theme](component_checkbox_Orange)
///
/// ### Orange Business Tools
///
/// ![A checkbox component in light and dark modes with Orange Business Tools theme](component_checkbox_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A checkbox component in light and dark modes with Sosh theme](component_checkbox_Sosh)
///
/// ### Wireframe
///
/// ![A checkbox component in light and dark modes with Wireframe theme](component_checkbox_Wireframe)
///
/// - Version: 2.4.0 (Figma component design version)
/// - Since: 0.12.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSCheckbox: View {

    // MARK: Properties

    private let accessibilityLabel: String
    private let isError: Bool
    private let isReadOnly: Bool

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme

    @Binding var isOn: Bool

    // MARK: Initializers

    /// Creates a checkbox with only an indicator.
    ///
    /// **The design system does not allow to have both an error or read only situation and a disabled state for the component.**
    ///
    /// - Parameters:
    ///    - isOn: A binding to a property that determines wether the indicator is ticked (selected) or not (not selected)
    ///    - accessibilityLabel: The accessibility label the component must have
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    ///    - isReadOnly: True if the look and feel of the component must reflect a read only state, default set to `false`
    public init(isOn: Binding<Bool>,
                accessibilityLabel: String,
                isError: Bool = false,
                isReadOnly: Bool = false)
    {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSCheckbox should not have an empty accessibility label, think about your disabled users!")
        }
        _isOn = isOn
        self.accessibilityLabel = accessibilityLabel
        self.isError = isError
        self.isReadOnly = isReadOnly
    }

    // MARK: Body

    public var body: some View {
        InteractionButton(isReadOnly: isReadOnly) {
            $isOn.wrappedValue.toggle()
        } content: { interactionState in
            CheckboxIndicator(interactionState: interactionState, indicatorState: convertedState, isError: isError)
                .frame(minWidth: theme.checkbox.sizeMinWidth,
                       maxWidth: theme.checkbox.sizeMinWidth,
                       minHeight: theme.checkbox.sizeMinHeight,
                       maxHeight: theme.checkbox.sizeMaxHeight)
                .contentShape(Rectangle())
                .modifier(CheckboxBackgroundColorModifier(interactionState: interactionState))
        }
        .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
        .accessibilityLabel(accessibilityLabel)
        .accessibilityValue(accessibilityValue)
        .accessibilityHint(accessibilityHint)
    }

    // MARK: Computed value

    private var convertedState: OUDSCheckboxIndicatorState {
        isOn ? .selected : .unselected
    }

    // MARK: - A11Y helpers

    /// Forges a string to vocalize with *Voice Over* describing the component trait, value, state and error
    private var accessibilityValue: String {
        let traitDescription = "core_checkbox_trait_a11y".localized() // Fake trait for Voice Over vocalization
        let valueDescription = isOn ? "core_checkbox_checked_a11y".localized() : "core_checkbox_unchecked_a11y".localized()
        let stateDescription = !isEnabled || isReadOnly ? "core_common_disabled_a11y".localized() : ""
        let errorDescription = isError ? "core_common_onError_a11y".localized() : ""

        return "\(traitDescription). \(valueDescription). \(stateDescription). \(errorDescription)"
    }

    /// Forges a string to vocalize with *Voice Over* describing the component hint
    private var accessibilityHint: String {
        if !isEnabled || isReadOnly {
            ""
        } else {
            isOn
                ? "core_checkbox_hint_a11y" <- "core_checkbox_unchecked_a11y".localized()
                : "core_checkbox_hint_a11y" <- "core_checkbox_checked_a11y".localized()
        }
    }
}
