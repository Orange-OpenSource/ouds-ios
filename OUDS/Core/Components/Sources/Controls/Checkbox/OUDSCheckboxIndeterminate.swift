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

// MARK: - OUDS Checkbox Indeterminate

/// The ``OUDSCheckboxIndeterminate`` proposes layout to add in your views a lonely checkbox, without labels, texts nor icons components.
/// If you want to use a checkbox with additional texts and icon, prefer instead ``OUDSCheckboxItem``.
///
/// ## Indicator states
///
/// The checkbox indicator has three available states:
/// - **selected**: the checkbox is filled with a tick, the user has made the action to select the checkbox
/// - **unselected**: the checkbox is empty, does not contain a tick, the user has made the action to unselect or did not select yet the checkbox
/// - **indeterminate**: like a prefilled or preticked checkbox, the user did not do anything on it yet
///
/// In you are looking for a checkbox with only two possible values, refer to ``OUDSCheckbox``.
///
/// ## Particular cases
///
/// An ``OUDSCheckboxIndeterminate`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look-and-feel is implemented for that if the `isError` flag is risen.
///
/// ## Accessibility considerations
///
/// Note also the component must be instanciated with a string parameter used as accessibility label.
/// It is a good pratice (at least) to define a label for a component without text for accessibility reasons. This label will be vocalized by *Voice Over*.
/// The vocalization tool will also use, after the label, a description of the component (if disabled, if error context), and a fake trait for checkbox.
///
/// ## Cases forbidden by design
///
/// **The design system does not allow to have both an error situation and a disabled component.**
///
/// ## Code samples
///
/// ```swift
///     // Supposing we have an indeterminate state checkbox
///     @Published var selection: OUDSCheckboxIndicatorState = .indeterminate
///
///     // A simple checkbox, no error, not in read only mode
///     OUDSCheckboxIndeterminate(selection: $selection, accessibilityLabel: "The cake is a lie")
///
///     // A simple checkbox, but is an error context
///     OUDSCheckboxIndeterminate(selection: $selection, accessibilityLabel: "The cake is a lie"), isError: true)
///
///     // Never disable an error-related checkbox as it will crash
///     // This is forbidden by design!
///     OUDSCheckboxIndeterminate(selection: $selection, accessibilityLabel: "The cake is a lie"), isError: true).disabled(true) // fatal error
/// ```
///
/// ## Suggestions
///
/// According to the [documentation](https://unified-design-system.orange.com/472794e18/p/23f1c1-checkbox/b/6578e5/t/3dd013a529),
/// the checkbox by default must be used in unselected state.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/23f1c1-checkbox)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A checkbox component in light and dark mode with Orange theme](component_checkbox_Orange)
///
/// ### Orange Business Tools
///
/// ![A checkbox component in light and dark mode with Orange Business Tools theme](component_checkbox_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A checkbox component in light and dark mode with Sosh theme](component_checkbox_Sosh)
///
/// ### Wireframe
///
/// ![A checkbox component in light and dark mode with Wireframe theme](component_checkbox_Wireframe)
///
/// - Version: 2.4.0 (Figma component design version)
/// - Since: 0.12.0
@available(iOS 15, macOS 15, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSCheckboxIndeterminate: View {

    // MARK: - Properties

    private let a11yLabel: String
    private let isError: Bool
    private let isReadOnly: Bool

    @Binding var selection: OUDSCheckboxIndicatorState
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme

    // MARK: - Initializers

    /// Creates a checkbox with only an indicator.
    ///
    /// **The design system does not allow to have both an error situation and a disabled state for the component.**
    ///
    /// - Parameters:
    ///    - selection: A binding to a property that determines wether the indicator is ticked, unticked or preticked.
    ///    - accessibilityLabel: The accessibility label the component must have
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    ///    - isReadOnly: True if the look and feel of the component must reflect a read only state, default set to `false`
    public init(selection: Binding<OUDSCheckboxIndicatorState>,
                accessibilityLabel: String,
                isError: Bool = false,
                isReadOnly: Bool = false)
    {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSCheckbox should not have an empty accessibility label, think about your disabled users!")
        }
        _selection = selection
        a11yLabel = accessibilityLabel
        self.isError = isError
        self.isReadOnly = isReadOnly
    }

    // MARK: Body

    public var body: some View {
        InteractionButton(isReadOnly: isReadOnly) {
            $selection.wrappedValue.toggle()
        } content: { interactionState in
            CheckboxIndicator(interactionState: interactionState, indicatorState: $selection.wrappedValue, isError: isError)
                .frame(minWidth: theme.checkbox.sizeMinWidth,
                       maxWidth: theme.checkbox.sizeMinWidth,
                       minHeight: theme.checkbox.sizeMinHeight,
                       maxHeight: theme.checkbox.sizeMaxHeight)
                .modifier(CheckboxBackgroundColorModifier(interactionState: interactionState))
        }
        .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
        .accessibilityLabel(a11yLabel(isDisabled: !isEnabled))
        .accessibilityValue(selection.a11yDescription.localized())
        .accessibilityHint(isEnabled && !isReadOnly ? selection.a11yHint : "")
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state
    /// - Parameter isDisabled: True if component is disabled, false otherwise
    private func a11yLabel(isDisabled: Bool) -> String {
        let stateDescription = isDisabled || isReadOnly ? "core_common_disabled_a11y".localized() : ""
        let errorDescription = isError ? "core_common_onError_a11y".localized() : ""
        let checkboxA11yTrait = "core_checkbox_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(a11yLabel), \(stateDescription) \(errorDescription) \(checkboxA11yTrait)"
        return result
    }
}
