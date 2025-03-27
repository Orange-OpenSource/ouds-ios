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

// MARK: - OUDS Checkbox Item Indeterminate

/// The ``OUDSCheckboxItemIndeterminate`` proposes layouts to add in your views some checkboxes components.
/// If you want to use a checkbox with only an indicator prefer instead ``OUDSCheckboxIndeterminate``.
///
/// ## Layouts
///
/// The component can be rendered as two different layouts:
///
/// - **default**: the component has a leading indicator, a label and optional helper texts, and an optional trailing decorative icon
/// - **inverse**: like the *default* layout but with a trailing checkbox indicator and a leading optional image
///
/// ## Indicator states
///
/// The checkbox indicator has three available states:
/// - **selected**: the checkbox is filled with a tick, the user has made the action to select the checkbox
/// - **unselected**: the checkbox is empty, does not contain a tick, the user has made the action to unselect or did not select yet the checkbox
/// - **indeterminate**: mike a prefilled or preticked checkbox, the user did not do anything on it yet
///
/// If you need a checkbox with only two states to manage use instead ``OUDSCheckboxItem``.
///
/// ## Particular cases
///
/// An ``OUDSCheckboxItemIndeterminate`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look and feel is implemented for that if the `isError` flag is risen.
/// In addition, the ``OUDSCheckboxItemIndeterminate`` can be in read only mode, i.e. the user cannot interact with the component yet but this component must not be considered
/// as disabled.
///
/// ## Accessibility considerations
///
/// *Voice Over* will use several elements to describe the component: if component disabled / read only, if error context, the label and helper texts and a custom checkbox trait.
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
///     // Supposing we have an indeterminate state checkbox
///     @Published var selection: OUDSCheckboxIndicatorState = .indeterminate
///
///     // A leading checkbox with a label.
///     // The default layout will be used here.
///     OUDSCheckboxItemIndeterminate(selection: $selection, labelText: "Hello world")
///
///     // A leading checkbox with a label, but in read only mode (user cannot interact yet, but not disabled).
///     // The default layout will be used here.
///     OUDSCheckboxItemIndeterminate(selection: $selection, labelText: "Hello world", isReadOnly: true)
///
///     // A leading checkbox with a label, and an helper text.
///     // The default layout will be used here.
///     OUDSCheckboxItemIndeterminate(selection: $selection, labelText: "Bazinga!", helperText: "Doll-Dagga Buzz-Buzz Ziggety-Zag")
///
///     // A trailing checkbox with a label, an helper text and an icon.
///     // The inverse layout will be used here.
///     OUDSCheckboxItemIndeterminate(selection: $selection,
///                                   labelText: "We live in a fabled world",
///                                   helperText: "Of dreaming boys and wide-eyed girls",
///                                   isInversed: true,
///                                   icon: Image(decorative: "ic_heart"))
///
///     // A trailing checkbox with a label, an helper text, an icon, a divider and is about an error.
///     // The inverse layout will be used here.
///     OUDSCheckboxItemIndeterminate(selection: $selection,
///                                   labelText: "Rescue from this world!",
///                                   helperText: "Put your hand in mine",
///                                   icon: Image(decorative: "ic_heart"),
///                                   isInversed: true,
///                                   isError: true,
///                                  divider: true)
///
///     // A leading checkbox with a label, but disabled.
///     // The default layout will be used here.
///     OUDSCheckboxItemIndeterminate(selection: $selection, labelText: "Hello world")
///         .disabled(true)
///
///     // Never disable a read only or an error-related checkbox as it will crash
///     // This is forbidden by design!
///     OUDSCheckboxItemIndeterminate(selection: $selection, labelText: "Hello world", isError: true).disabled(true) // fatal error
///     OUDSCheckboxItemIndeterminate(selection: $selection, labelText: "Hello world", isReadyOnly: true).disabled(true) // fatal error
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/23f1c1-checkbox)
///
/// - Since: 0.12.0
public struct OUDSCheckboxItemIndeterminate: View {

    // MARK: - Properties

    private let layoutData: ControlItemLabel.LayoutData

    @Binding private var selection: OUDSCheckboxIndicatorState
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializers

    /// Creates a checkbox with label and optional helper text, icon, divider.
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///   - selection: A binding to a property that determines wether the indicator is ticked, unticker or preticked.
    ///   - labelText: The main label text of the checkbox.
    ///   - helperText: An additonal helper text, should not be empty
    ///   - icon: An optional icon
    ///   - isInversed: `true` of the checkbox indicator must be in trailing position,` false` otherwise. Default to `false`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    public init(selection: Binding<OUDSCheckboxIndicatorState>,
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

        _selection = selection
        self.layoutData = .init(
            labelText: labelText,
            additionalLabelText: nil,
            helperText: helperText,
            icon: icon,
            isOutlined: false,
            isError: isError,
            isReadOnly: isReadOnly,
            hasDivider: hasDivider,
            orientation: isInversed ? .inverse : .default)
    }

    // MARK: Body

    public var body: some View {
        Button("") {
            if !layoutData.isReadOnly {
                $selection.wrappedValue.toggle()
            }
        }
        .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
        .accessibilityLabel(a11yLabel(layoutData: layoutData))
        .accessibilityValue(selection.a11yDescription.localized())
        .accessibilityHint(a11yHint(isReadOnly: layoutData.isReadOnly, indicatorState: selection))
        .buttonStyle(ControlItemStyle(indicatorType: .checkBox($selection), layoutData: layoutData))
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state.
    /// - Parameter layoutData: All data of the layout used to forge the string.
    private func a11yLabel(layoutData: ControlItemLabel.LayoutData) -> String {
        let stateDescription: String = layoutData.isReadOnly || !isEnabled ? "core_common_disabled_a11y".localized() : ""
        let errorDescription = layoutData.isError ? "core_common_onError_a11y".localized() : ""
        let checkboxA11yTrait = "core_checkbox_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(stateDescription), \(layoutData.labelText), \(layoutData.helperText ?? "") \(errorDescription), \(checkboxA11yTrait)"
        return result
    }

    /// Forges a string to vocalize with *Voice Over* explaining the hint for the user about the component.
    /// - Parameters:
    ///    - isReadOnly: Flag saying wether or not the component is in *read only* mode
    ///    - indicatorState: To get the hint if component both not in *read only* mode and enabled
    private func a11yHint(isReadOnly: Bool, indicatorState: OUDSCheckboxIndicatorState) -> String {
        if isReadOnly || !isEnabled {
            return ""
        } else {
            return indicatorState.a11yHint
        }
    }
}
