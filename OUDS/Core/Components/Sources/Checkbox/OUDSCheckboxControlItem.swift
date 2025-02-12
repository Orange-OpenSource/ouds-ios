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

/// The ``OUDSCheckboxControlItem`` proposes layouts to add in your views some checkboxes components.
///
/// ## Layouts
///
/// The component can be rendered as two different layouts:
///
/// - **default**: the component has a leading selector, a label and optional helper texts, and an optional trailing decorative icon
/// - **inverse**: like the *default* layout but with a trailing checkbox seelctor and a leading optional image
///
/// If you want to use a checkbox with only the selector, prefer instead ``OUDSCheckboxOnly``.
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
/// An ``OUDSCheckboxControlItem`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look and feel is implemented for that if the `isError` flag is risen.
/// In addition, the ``OUDSCheckboxControlItem`` can be in read only mode, i.e. the user cannot interact with the component yet but this component must not be considered
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
///     @Published var state: OUDSCheckbox.SelectorState  = .undeterminate
///
///     // A leading checkbox with a label.
///     // The default layout will be used here.
///     OUDSCheckbox(state: $state, labelText: "Hello world")
///
///     // A leading checkbox with a label, but in read only mode (user cannot interact yet, but not disabled).
///     // The default layout will be used here.
///     OUDSCheckbox(state: $state, labelText: "Hello world", isReadOnly: true)
///
///     // A leading checkbox with a label, and an helper text.
///     // The default layout will be used here.
///     OUDSCheckbox(state: $state, labelText: "Bazinga!", helperText: "Doll-Dagga Buzz-Buzz Ziggety-Zag")
///
///     // A trailing checkbox with a label, an helper text and an icon.
///     // The inverse layout will be used here.
///     OUDSCheckbox(state: $state,
///                  labelText: "We live in a fabled world",
///                  helperText: "Of dreaming boys and wide-eyed girls",
///                  isInversed: true,
///                  icon: Image(decorative: "ic_heart"))
///
///     // A trailing checkbox with a label, an helper text, an icon, a divider and is about an error.
///     // The inverse layout will be used here.
///     OUDSCheckbox(state: $state,
///                  labelText: "Rescue from this world!",
///                  helperText: "Put your hand in mine",
///                  icon: Image(decorative: "ic_heart"),
///                  isInversed: true,
///                  isError: true,
///                  divider: true)
///
///     // A leading checkbox with a label, but disabled.
///     // The default layout will be used here.
///     OUDSCheckbox(state: $state, labelText: "Hello world")
///         .disabled(true)
///
///     // Never disable a read only or an error-related checkbox as it will crash
///     // This is forbidden by design!
///     OUDSCheckbox(state: $state, labelText: "Hello world", isError: true).disabled(true) // fatal error
///     OUDSCheckbox(state: $state, labelText: "Hello world", isReadyOnly: true).disabled(true) // fatal error
/// ```
///
/// ## Design documentation
///
/// See [unified-design-system.orange.com/472794e18/p/23f1c1-checkbox](https://unified-design-system.orange.com/472794e18/p/23f1c1-checkbox)
///
/// - Since: 0.11.0
public struct OUDSCheckboxControlItem: View {

    // MARK: - Properties

    @Binding var selectorState: OUDSCheckboxSelectorState

    private let labelText: String
    private let helperText: String?
    private let icon: Image?
    private let isError: Bool
    private let isInversed: Bool
    private let isReadOnly: Bool
    private let hasDivider: Bool

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
        self._selectorState = state
        self.labelText = labelText
        self.helperText = helperText
        self.icon = icon
        self.isError = isError
        self.isInversed = isInversed
        self.isReadOnly = isReadOnly
        self.hasDivider = hasDivider
    }

    // MARK: Body

    public var body: some View {
        OUDSCheckbox(state: $selectorState,
                     labelText: labelText,
                     helperText: helperText,
                     icon: icon,
                     isInversed: isInversed,
                     isError: isError,
                     isReadOnly: isReadOnly,
                     hasDivider: hasDivider)
    }
}
