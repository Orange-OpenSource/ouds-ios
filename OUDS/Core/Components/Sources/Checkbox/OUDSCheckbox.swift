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

/// The ``OUDSCheckbox`` proposes a layout as a nested element.
/// It also proposes a more complex layout with text, icon and divider.
///
/// ## Code samples
///
/// TODO: #254 Add code samples
///
/// ## Design documentation
///
/// See [#TODO]
///
/// - Since: 0.11.0
public struct OUDSCheckbox: View {

    // MARK: - Properties

    private var selectorState: Binding<SelectorState>
    private let layout: Layout

    // MARK: - State

    public enum SelectorState {
        /// The checkbox selector is filled, a tick is inside, the user selected it
        case selected

        /// The checkbox selector is emoty, not tick inside,
        case unselected

        /// The checkbox is like prefilled, preticked, the user does not select it yet but is not empty
        case undeterminate //  (╯° °)╯︵ ┻━┻

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
        /// Displays only the checkbox selector, wiht a flag saying if there is an error context
        case selectorOnly(Bool)

        /// Checkbox selector in leading position, icon in trailing position, like LTR mode.
        /// Details are defined in the ``OUDSCheckboxLabel.Items``.
        case `default`(OUDSCheckboxLabel.Items)

        /// Icon in leading position, checkbox selector in trailing position, like RTL mode
        /// Details are defined in the ``OUDSCheckboxLabel.Items``.
        case inverse(OUDSCheckboxLabel.Items)
    }

    // MARK: - Initializers

    /// Creates a checkbox with no label.
    ///
    /// - Parameters:
    ///    - selectorState: A binding to a property that determines wether the selector is ticked, unticked or preticked.
    ///    - onError: True if the look and feel of the component must reflect an error state, default set to `false`
    public init(selectorState: Binding<SelectorState>, onError: Bool = false) {
        self.selectorState = selectorState
        self.layout = .selectorOnly(onError)
    }

    /// Creates a checkbox with label and optional helper text, icon, divider.
    ///
    /// - Parameters:
    ///   - selectorState: A binding to a property that determines wether the selector is ticked, unticker or preticked.
    ///   - label: The main label of the switch.
    ///   - helperText: An additonal helper text.
    ///   - icon: An optional icon
    ///   - onError: True if the look and feel of the component must reflect an error state, default set to `false`
    ///   - divider: If true a divider is added at the bottom of the view.
    public init(selectorState: Binding<SelectorState>,
                label: String,
                helperText: String? = nil,
                icon: Image? = nil,
                onError: Bool = false,
                divider: Bool = false) {
        self.selectorState = selectorState
        self.layout = .default(.init(label: label, helperText: helperText, icon: icon, onError: onError, divider: divider))
    }

    // MARK: Body

    public var body: some View {
        switch layout {
        case .default(let label):
            Button("") {
                selectorState.wrappedValue.toggle()
            }
            .buttonStyle(OUDSCheckboxLabeledStyle(selectorState: selectorState.wrappedValue, items: label, isInverse: false))
        case .inverse(let label):
            Button("") {
                selectorState.wrappedValue.toggle()
            }
            .buttonStyle(OUDSCheckboxLabeledStyle(selectorState: selectorState.wrappedValue, items: label, isInverse: true))
        case .selectorOnly(let isError):
            Button("") {
                selectorState.wrappedValue.toggle()
            }
            .buttonStyle(OUDSCheckboxNestedStyle(selectorState: selectorState.wrappedValue, isError: isError))
        }
    }
}
