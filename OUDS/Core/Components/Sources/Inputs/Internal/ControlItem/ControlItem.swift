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

/// ## Design documentation
///
/// See [#TODO]
///
/// - Since: 0.11.0
struct ControlItem: View {

    // MARK: Stored Properties

    private let selectorType: SelectorType
    private let layoutData: ControlItemLabel.LayoutData

    /// Used to define the selector to be displayed
    enum SelectorType {
        /// Selector is a switch (i.e SwiftUI.Toggle)
        case `switch`(Binding<Bool>)
        /// Selector is a radio button
        case radioButton(Binding<Bool>)
        /// Selector is a checkbox
        case checkBox(Binding<OUDSCheckboxSelectorState>)
    }

    /// Used to define the orientation of the Layout
    enum Orientation {
        ///  Selector in leading position, icon in trailing position, like LTR mode.
        case `default`
        /// Icon in leading position, selector in trailing position, like RTL mode
        case inverse
    }

    // MARK: Initializers

    /// Creates a switch with label and optional helper text, icon, divider.
    ///
    /// - Parameters:
    ///   - selectorType: The type of selector the `ContolItem` should display.
    ///   - labelText: The main label text of the switch.
    ///   - helperText: An additonal helper text, should not be empty
    ///   - icon: An optional icon
    ///   - isError: `True` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    ///   - orientation: Specify the orientation of the layout. If Default the switch at the leading position, if inverse it is on trailing.
    init(selectorType: SelectorType,
         labelText: String,
         helperText: String? = nil,
         icon: Image? = nil,
         onError: Bool = false,
         isReadOnly: Bool = false,
         divider: Bool = false,
         orientation: Self.Orientation = .default) {
        self.selectorType = selectorType
        self.layoutData = .init(labelText: labelText, helperText: helperText, icon: icon, isError: onError, isReadOnly: isReadOnly, hasDivider: divider, orientation: orientation)
    }

    // MARK: Body

    public var body: some View {
        Button("") {
            withAnimation(.easeInOut) {
                switch selectorType {
                case .switch(let binding):
                    binding.wrappedValue.toggle()
                case .radioButton(let binding):
                    binding.wrappedValue.toggle()
                case .checkBox(let binding):
                    binding.wrappedValue.toggle()
                }
            }
        }
        .buttonStyle(ControlItemStyle(selectorType: selectorType, layoutData: layoutData))
    }
}
