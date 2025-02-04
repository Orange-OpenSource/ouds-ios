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

    private var isSelected: Binding<State>
    private let layout: Layout

    // MARK: - State

    public enum State {
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

    /// The three avaialble layouts for this component
    private enum Layout {
        /// Displays only the checkbox selectpr
        case selectorOnly

        /// Checkbox selector in leading position, icon in trailing position, like LTR mode
        case `default`(OUDSCheckboxLabel.Label)

        /// Icon in leading position, checkbox seelctor in trailing position, like RTL mode
        case inverse(OUDSCheckboxLabel.Label)
    }

    // MARK: - Initializers

    /// Creates a checkbox with no label.
    ///
    /// - Parameter isSelected: A binding to a property that determines wether the selector is ticked, unticked or preticked.
    public init(isSelected: Binding<State>) {
        self.isSelected = isSelected
        self.layout = .selectorOnly
    }

    /// Creates a checkbox with label and optional helper text, icon, divider.
    ///
    /// - Parameters:
    ///   - isSelected: A binding to a property that determines wether the selector is ticked, unticker or preticked.
    ///   - label: The main label of the switch.
    ///   - helperText: An additonal helper text.
    ///   - icon: An optional icon
    ///   - onError: It the option is on error
    ///   - divider: If true a divider is added at the bottom of the view.
    public init(isSelected: Binding<State>, label: String, helperText: String? = nil, icon: Image? = nil, onError: Bool = false, divider: Bool = false) {
        self.isSelected = isSelected
        self.layout = .default(.init(label: label, helperText: helperText, icon: icon, onError: onError, divider: divider))
    }

    // MARK: Body

    public var body: some View {
        switch layout {
        case .default(let label):
            Button("") {
                isSelected.wrappedValue.toggle()
            }
            .buttonStyle(OUDSCheckboxLabeledStyle(isSelected: isSelected.wrappedValue, label: label, inverse: false))
        case .inverse(let label):
            Button("") {
                isSelected.wrappedValue.toggle()
            }
            .buttonStyle(OUDSCheckboxLabeledStyle(isSelected: isSelected.wrappedValue, label: label, inverse: true))
        case .selectorOnly:
            Button("") {
                isSelected.wrappedValue.toggle()
            }
            .buttonStyle(OUDSCheckboxNestedStyle(isSelected: isSelected.wrappedValue))
        }
    }
}
