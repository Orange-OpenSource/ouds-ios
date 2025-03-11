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

/// Modelizes the layout for a checkbox, radio buton or switch with additional components like labels, icons and dividers.
/// This `View` is not exposed publicly as it is not possible to define such variable / customizable component on *Figma* side.
/// This internal component displays the selector and defines the layout as a SwiftUI button.
struct ControlItem: View {

    // MARK: Stored Properties

    private let selectorType: SelectorType
    private let layoutData: ControlItemLabel.LayoutData

    // MARK: Enums

    /// Used to define the selector to be displayed
    enum SelectorType {
        /// Selector is a switch (i.e `SwiftUI.Toggle`)
        case `switch`(Binding<Bool>)
        /// Selector is a radio button
        case radioButton(Binding<Bool>)
        /// Selector is a checkbox
        case checkBox(Binding<OUDSCheckboxSelectorState>)
    }

    /// Used to define the orientation of the Layout
    enum Orientation {
        /// Selector in leading position, icon in trailing position, like LTR mode.
        case `default`
        /// Icon in leading position, selector in trailing position, like RTL mode
        case inverse
    }

    // MARK: Initializer

    /// Creates a control item with label and optional helper text, icon, divider.
    ///
    /// - Parameters:
    ///   - selectorType: The type of selector the `ContolItem` should display.
    ///   - labelText: The main label text of the item.
    ///   - additionalLabelText: An additional label text of the item.
    ///   - helperText: An additonal helper text, should not be empty
    ///   - icon: An optional icon
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: `true` if component is in read only mode, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    ///   - orientation: Specify the orientation of the layout. If `default` the selector is at the leading position, if `inverse` it is on trailing.
    init(selectorType: SelectorType,
         labelText: String,
         helperText: String? = nil,
         additionalLabelText: String? = nil,
         icon: Image? = nil,
         onError: Bool = false,
         isReadOnly: Bool = false,
         divider: Bool = false,
         orientation: Self.Orientation = .default) {
        self.selectorType = selectorType
        self.layoutData = .init(labelText: labelText,
                                additionalLabelText: additionalLabelText,
                                helperText: helperText,
                                icon: icon,
                                isError: onError,
                                isReadOnly: isReadOnly,
                                hasDivider: divider,
                                orientation: orientation)
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
