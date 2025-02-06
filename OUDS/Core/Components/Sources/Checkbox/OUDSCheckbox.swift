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

/// The ``OUDSCheckbox`` proposes layout to add in your views some checkboxes components, even if this type of component is not iOS-native one.
///
/// ## Layouts
///
/// The component can be rendered as three different layouts:
///
/// - **selector only**: the component is nested, only its selector is displayed and nothing else, a pure checkbox
/// - **default**: the component has a leading selector, a label and optional helper texts, and an optional trailing decorative icon
/// - **inverse**: like the *default* layout but with a trailing checkbox seelctor and a leading optional image
///
/// These layours cannot be managed as they are by the user, but are defined according to what type of data are given to the component initializers.
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
/// An ``OUDSCheckbox`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look and feel is implemented for that if the `isError` flag is risen.
/// In addition, the ``OUDSCheckbox`` can be in read only mode, i.e. the user cannot interact with the component yet but this component must not be considered
/// as disabled.
/// However the design kit does not manage the case where the component is both in read only mode and in an error context, this is forbidden by design.
///
/// ## Code samples
///
/// ```swift
///     // Supposing we have an undeterminate state checkbox
///     @Published var state: OUDSCheckbox.SelectorState  = .undeterminate
///
///     // A simple checkbox, nested, selected.
///     // The nested layout will be used here.
///     OUDSCheckbox(state: $state)
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
///                  icon: Image(decorative: "ic_heart"))
///
///     // A trailing checkbox with a label, an helper text, an icon, a divider and is about an error.
///     // The inverse layout will be used here.
///     OUDSCheckbox(state: $state,
///                  labelText: "Rescue from this world!",
///                  helperText: "Put your hand in mine",
///                  icon: Image(decorative: "ic_heart"),
///                  isError: true,
///                  divider: true)
/// ```
///
/// ## Design documentation
///
/// See [unified-design-system.orange.com/472794e18/p/23f1c1-checkbox](https://unified-design-system.orange.com/472794e18/p/23f1c1-checkbox)
///
/// - Since: 0.11.0
public struct OUDSCheckbox: View {

    // MARK: - Properties

    private let layout: Layout
    @Binding var selectorState: SelectorState
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - State

    public enum SelectorState {
        /// The checkbox selector is filled, a tick is inside, the user selected it
        case selected

        /// The checkbox selector is emoty, not tick inside,
        case unselected

        /// The checkbox is like prefilled, preticked, the user does not select it yet but is not empty
        case undeterminate //  (╯° °)╯︵ ┻━┻

        /// Changes the value to the next one.
        public mutating func toggle () {
            switch self {
            case .selected:
                self = .unselected
            case .unselected:
                self = .selected
            case .undeterminate:
                self = .selected
            }
        }
    }

    // MARK: - Layout

    /// The three available layouts for this component
    private enum Layout {
        /// Displays only the checkbox selector, with a first flag saying if there is an error context and a second is in read only mode
        case selectorOnly(Bool, Bool)

        /// Checkbox selector in leading position, icon in trailing position, like LTR mode.
        /// Details are defined in the ``OUDSCheckboxLabel.Items``.
        /// Contains a flag saying if read only mode or not.
        case `default`(OUDSCheckboxLabel.Items, Bool)

        /// Icon in leading position, checkbox selector in trailing position, like RTL mode
        /// Details are defined in the ``OUDSCheckboxLabel.Items``.
        /// Contains a flag saying if read only mode or not.
        case inverse(OUDSCheckboxLabel.Items, Bool)
    }

    // MARK: - Initializers

    /// Creates a checkbox with no label.
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///    - state: A binding to a property that determines wether the selector is ticked, unticked or preticked.
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    ///    - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    public init(state: Binding<SelectorState>,
                isError: Bool = false,
                isReadOnly: Bool = false) {
        if isError && isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDSCheckbox in an error context and in read only mode")
        }
        self._selectorState = state
        self.layout = .selectorOnly(isError, isReadOnly)
    }

    /// Creates a checkbox with label and optional helper text, icon, divider.
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///   - state: A binding to a property that determines wether the selector is ticked, unticker or preticked.
    ///   - labelText: The main label text of the switch.
    ///   - helperText: An additonal helper text.
    ///   - icon: An optional icon
    ///   - isInversed: `True` of the checkbox selector must be in trailing position,` false` otherwise. Default to `false`
    ///   - isError: `True` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - divider: If `true` a divider is added at the bottom of the view.
    public init(state: Binding<SelectorState>,
                labelText: String,
                helperText: String? = nil,
                icon: Image? = nil,
                isInversed: Bool = false,
                isError: Bool = false,
                isReadOnly: Bool = false,
                divider: Bool = false) {
        if isError && isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDSCheckbox in an error context and in read only mode")
        }
        self._selectorState = state
        if isInversed {
            self.layout = .inverse(.init(label: labelText,
                                         helperText: helperText,
                                         icon: icon,
                                         isError: isError,
                                         divider: divider),
                                   isReadOnly)
        } else {
            self.layout = .default(.init(label: labelText,
                                         helperText: helperText,
                                         icon: icon,
                                         isError: isError,
                                         divider: divider),
                                   isReadOnly)
        }
    }

    // MARK: Body

    public var body: some View {
        switch layout {
        case let .default(label, isReadOnly):
            Button("") {
                if !isReadOnly {
                    $selectorState.wrappedValue.toggle()
                }
            }
            .accessibilityLabel(a11yLabel(isReadOnly: isReadOnly, isEnabled: isEnabled, labelText: label.label, helperText: label.helperText))
            .buttonStyle(OUDSCheckboxLabeledStyle(selectorState: $selectorState.wrappedValue,
                                                  items: label,
                                                  isInversed: false,
                                                  isReadOnly: isReadOnly))
        case let .inverse(label, isReadOnly):
            Button("") {
                if !isReadOnly {
                    $selectorState.wrappedValue.toggle()
                }
            }
            .accessibilityLabel(a11yLabel(isReadOnly: isReadOnly, isEnabled: isEnabled, labelText: label.label, helperText: label.helperText))
            .buttonStyle(OUDSCheckboxLabeledStyle(selectorState: $selectorState.wrappedValue,
                                                  items: label,
                                                  isInversed: true,
                                                  isReadOnly: isReadOnly))
        case let .selectorOnly(isError, isReadOnly):
            Button("") {
                if !isReadOnly {
                    $selectorState.wrappedValue.toggle()
                }
            }
            .accessibilityLabel(a11yLabel(isReadOnly: isReadOnly, isEnabled: isEnabled))
            .buttonStyle(OUDSCheckboxNestedStyle(selectorState: $selectorState.wrappedValue,
                                                 isError: isError,
                                                 isReadOnly: isReadOnly))
        }
    }
}
