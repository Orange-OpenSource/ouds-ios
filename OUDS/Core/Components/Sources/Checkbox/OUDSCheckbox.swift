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

    private var isOn: Binding<Bool> // TODO: #264 Add management of three states
    private let layout: Layout

    // MARK: - Layout

    private enum Layout {
        case `default`(OUDSCheckboxLabel.Label)
        case inverse(OUDSCheckboxLabel.Label)
        case selectorOnly
    }

    // MARK: - Initializers

    /// Creates a checkbox with no label.
    ///
    /// - Parameter isOn: A binding to a property that determines wether the selector is ticked, unticked or preticked.
    public init(isOn: Binding<Bool>) {
        self.isOn = isOn
        self.layout = .selectorOnly
    }

    /// Creates a checkbox with label and optional helper text, icon, divider.
    ///
    /// - Parameters:
    ///   - isOn: A binding to a property that determines wether the selector is ticked, unticker or preticked.
    ///   - label: The main label of the switch.
    ///   - helperText: An additonal helper text.
    ///   - icon: An optional icon
    ///   - onError: It the option is on error
    ///   - divider: If true a divider is added at the bottom of the view.
    public init(isOn: Binding<Bool>, label: String, helperText: String? = nil, icon: Image? = nil, onError: Bool = false, divider: Bool = false) {
        self.isOn = isOn
        self.layout = .default(.init(label: label, helperText: helperText, icon: icon, onError: onError, divider: divider))
    }

    // MARK: Body

    public var body: some View {
        switch layout {
        case .default(let label):
            Button("") {
                isOn.wrappedValue.toggle()
            }
            .buttonStyle(OUDSCheckboxLabeledStyle(isOn: isOn.wrappedValue, label: label, inverse: false))
        case .inverse(let label):
            Button("") {
                isOn.wrappedValue.toggle()
            }
            .buttonStyle(OUDSCheckboxLabeledStyle(isOn: isOn.wrappedValue, label: label, inverse: true))
        case .selectorOnly:
            Button("") {
                isOn.wrappedValue.toggle()
            }
            .buttonStyle(OUDSCheckboxNestedStyle(isOn: isOn.wrappedValue))
        }
    }
}
