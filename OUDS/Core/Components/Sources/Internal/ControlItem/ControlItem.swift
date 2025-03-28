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

/// Modelizes the layout for a checkbox, radio button or switch with additional components like labels, icons and dividers.
/// This `View` is not exposed publicly as it is not possible to define such variable / customizable component on *Figma* side.
/// This internal component displays the indicator and defines the layout as a SwiftUI button through the internal `InteractionButton`.
struct ControlItem: View {

    // MARK: Stored Properties

    private let indicatorType: IndicatorType
    private let layoutData: ControlItemLabel.LayoutData

    // MARK: Enums

    /// Used to define the indicator to be displayed
    enum IndicatorType {
        /// Indicator is a switch (i.e `SwiftUI.Toggle`)
        case `switch`(Binding<Bool>)
        /// Indicator is a radio button
        case radioButton(Binding<Bool>)
        /// Indicator is a checkbox
        case checkBox(Binding<OUDSCheckboxIndicatorState>)
    }

    /// Used to define the orientation of the Layout
    enum Orientation {
        /// Indicator in leading position, icon in trailing position, like LTR mode.
        case `default`
        /// Icon in leading position, indicator in trailing position, like RTL mode
        case inverse
    }

    // MARK: Initializers

    /// Creates a control item with the layout data model
    ///
    /// - Parameters:
    ///     - indicatorType: The type of indicator set in the control item
    ///     - layoutData: The data of the layout
    ///
    /// **Remark: As divider and outline effect are not suppose to be displayed a the same time, the divider is not displayed if the outline effect is active.
    init(indicatorType: IndicatorType, layoutData: ControlItemLabel.LayoutData) {
        self.indicatorType = indicatorType
        self.layoutData = layoutData
    }

    /// Creates a control item with label and optional helper text, icon, divider.
    ///
    /// - Parameters:
    ///   - indicatorType: The type of indicator the `ContolItem` should display.
    ///   - labelText: The main label text of the item.
    ///   - additionalLabelText: An additional label text of the item.
    ///   - helperText: An additonal helper text, should not be empty
    ///   - icon: An optional icon
    ///   - isOutlined: If the component has lines around it like kind of borders (`true`)
    ///   - isOnError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: `true` if component is in read only mode, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    ///   - orientation: Specify the orientation of the layout. If `default` the indicator is at the leading position, if `inverse` it is on trailing.
    ///
    /// **Remark: As divider and outline effect are not suppose to be displayed a the same time, the divider is not displayed if the outline effect is active.
    init(indicatorType: IndicatorType,
         labelText: String,
         helperText: String? = nil,
         additionalLabelText: String? = nil,
         icon: Image? = nil,
         isOutlined: Bool = false,
         isOnError: Bool = false,
         isReadOnly: Bool = false,
         hasDivider: Bool = false,
         orientation: Self.Orientation = .default) {
        self.init(indicatorType: indicatorType,
                  layoutData: .init(labelText: labelText,
                                    additionalLabelText: additionalLabelText,
                                    helperText: helperText,
                                    icon: icon,
                                    isOutlined: isOutlined,
                                    isError: isOnError,
                                    isReadOnly: isReadOnly,
                                    hasDivider: hasDivider,
                                    orientation: orientation))
    }

    // MARK: Body

    public var body: some View {
        InteractionButton(isReadOnly: layoutData.isReadOnly) {
            withAnimation(.easeInOut) {
                switch indicatorType {
                case .switch(let binding):
                    binding.wrappedValue.toggle()
                case .radioButton(let binding):
                    binding.wrappedValue.toggle()
                case .checkBox(let binding):
                    binding.wrappedValue.toggle()
                }
            }
        } content: { interactionState in
            ControlItemContent(interactionState: interactionState, indicatorType: indicatorType, layoutData: layoutData)
        }
    }
}
