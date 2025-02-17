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

// MARK: - OUDS Checkbox Item

/// The ``OUDSCheckboxItem`` proposes layouts to add in your views some checkboxes components.
///
/// ## Layouts
///
/// The component can be rendered as two different layouts:
///
/// - **default**: the component has a leading selector, a label and optional helper texts, and an optional trailing decorative icon
/// - **inverse**: like the *default* layout but with a trailing checkbox seelctor and a leading optional image
///
/// If you want to use a checkbox with only the selector, prefer instead ``OUDSCheckbox``.
///
/// ## Selector states
///
/// The checkbox selector has three available states:
/// - **selected**: the checkbox is filled with a tick, the user has made the action to select the checkbox
/// - **unselected**: the checkbox is empty, does not contain a tick, the user has made the action to unselect or did not select yet the checkbox
/// - **undeterminate**: mike a prefilled or preticked checkbox, the user did not do anything on it yet
///
/// ## Particular cases
///
/// An ``OUDSCheckboxItem`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look and feel is implemented for that if the `isError` flag is risen.
/// In addition, the ``OUDSCheckboxItem`` can be in read only mode, i.e. the user cannot interact with the component yet but this component must not be considered
/// as disabled.
///
/// ## Forbidden by design
///
/// **The design system does not allow to have both an error situation and a read only component.**
/// **The design system does not allow to have both an error situation and a disabled component.**
/// **The design system does not allow to have both a read only and a disabled component.**
///
/// ## Code samples
///
/// ```swift
///     // Supposing we have an undeterminate state checkbox
///     @Published var state: OUDSCheckboxSelectorState  = .undeterminate
///
///     // A leading checkbox with a label.
///     // The default layout will be used here.
///     OUDSCheckboxItem(state: $state, labelText: "Hello world")
///
///     // A leading checkbox with a label, but in read only mode (user cannot interact yet, but not disabled).
///     // The default layout will be used here.
///     OUDSCheckboxItem(state: $state, labelText: "Hello world", isReadOnly: true)
///
///     // A leading checkbox with a label, and an helper text.
///     // The default layout will be used here.
///     OUDSCheckboxItem(state: $state, labelText: "Bazinga!", helperText: "Doll-Dagga Buzz-Buzz Ziggety-Zag")
///
///     // A trailing checkbox with a label, an helper text and an icon.
///     // The inverse layout will be used here.
///     OUDSCheckboxItem(state: $state,
///                      labelText: "We live in a fabled world",
///                      helperText: "Of dreaming boys and wide-eyed girls",
///                      isInversed: true,
///                      icon: Image(decorative: "ic_heart"))
///
///     // A trailing checkbox with a label, an helper text, an icon, a divider and is about an error.
///     // The inverse layout will be used here.
///     OUDSCheckboxItem(state: $state,
///                      labelText: "Rescue from this world!",
///                      helperText: "Put your hand in mine",
///                      icon: Image(decorative: "ic_heart"),
///                      isInversed: true,
///                      isError: true,
///                      divider: true)
///
///     // A leading checkbox with a label, but disabled.
///     // The default layout will be used here.
///     OUDSCheckboxItem(state: $state, labelText: "Hello world")
///         .disabled(true)
///
///     // Never disable a read only or an error-related checkbox as it will crash
///     // This is forbidden by design!
///     OUDSCheckboxItem(state: $state, labelText: "Hello world", isError: true).disabled(true) // fatal error
///     OUDSCheckboxItem(state: $state, labelText: "Hello world", isReadyOnly: true).disabled(true) // fatal error
/// ```
///
/// ## Design documentation
///
/// See [unified-design-system.orange.com/472794e18/p/23f1c1-checkbox](https://unified-design-system.orange.com/472794e18/p/23f1c1-checkbox)
///
/// - Since: 0.12.0
public struct OUDSCheckboxItem: View {

    // MARK: - Properties

    private let layoutData: ControlItemLabel.LayoutData
    @Binding private var selectorState: OUDSCheckboxSelectorState

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializers

    /// Creates a checkbox with label and optional helper text, icon, divider.
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///   - state: A binding to a property that determines wether the selector is ticked, unticker or preticked.
    ///   - labelText: The main label text of the switch.
    ///   - helperText: An additonal helper text, should not be empty
    ///   - icon: An optional icon
    ///   - isInversed: `True` of the checkbox selector must be in trailing position,` false` otherwise. Default to `false`
    ///   - isError: `True` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    public init(state: Binding<OUDSCheckboxSelectorState>,
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
        self.layoutData = .init(
            labelText: labelText,
            helperText: helperText,
            icon: icon,
            isError: isError,
            isReadOnly: isReadOnly,
            hasDivider: hasDivider,
            orientation: isInversed ? .inverse : .default)
    }

    // MARK: Body

    public var body: some View {
        Button("") {
            if !layoutData.isReadOnly {
                $selectorState.wrappedValue.toggle()
            }
        }
        .accessibilityLabel(a11yLabel(isReadOnly: layoutData.isReadOnly, isEnabled: isEnabled, labelText: layoutData.labelText, helperText: layoutData.helperText))
        .buttonStyle(ControlItemStyle(selectorType: .checkBox($selectorState), layoutData: layoutData))
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state
    /// - Parameters:
    ///    - isReadOnly: True if component is in read only mode, false otherwise
    ///    - isEnabled: True if component is enabled, false otherwise
    ///    - labelText: The text of the label if any
    ///    - helperText: The text of the helper if any
    private func a11yLabel(isReadOnly: Bool, isEnabled: Bool, labelText: String? = nil, helperText: String? = nil) -> String {
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
