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

import SwiftUI

/// Modelizes the layout for indicator (checkbox, radio button or switch) and list Item with additional components like labels, helper text and dividers.
/// This `View` is not exposed publicly as it is not possible to define such variable / customizable component on *Figma* side.
/// This internal component displays the leading and trailing elements and defines the layout as a SwiftUI button through the internal `InteractionButton`.
struct ControlItem<Leading: View, Trailing: View>: View {

    // MARK: - Properties

    private let layoutData: ControlItemData
    private let isSelected: Bool
    private let action: (() -> Void)?
    private let leading: () -> Leading
    private let trailing: () -> Trailing

    /// Used to define the orientation of the Layout
    enum Orientation {
        /// Indicator in leading position, icon in trailing position, like LTR mode.
        case `default`
        /// Icon in leading position, indicator in trailing position, like RTL mode
        case reversed
    }

    // MARK: - Initializers

    /// Creates a control item with the layout data model
    ///
    /// - Parameters:
    ///    - layoutData: The data of the layout
    ///    - isSelected: if the element is selected. `false` by default.
    ///    - action: An optional action to trigger when the component has been pressed
    ///    - leading: Leading content
    ///    - trailing: Trailing content
    ///
    /// **Remark: As divider and outline effect are not supposed to be displayed at the same time, the divider is not displayed if the outline effect is active.**
    init(layoutData: ControlItemData,
         isSelected: Bool = false,
         action: (() -> Void)? = nil,
         @ViewBuilder leading: @escaping () -> Leading,
         @ViewBuilder trailing: @escaping () -> Trailing)
    {
        self.layoutData = layoutData
        self.isSelected = isSelected
        self.leading = leading
        self.trailing = trailing
        self.action = action
    }

    /// Creates a control item with the layout data model where leading and trailing content are empty
    ///
    /// - Parameters:
    ///    - layoutData: The data of the layout
    ///    - isSelected: if the element is selected. `false` by default.
    ///    - action: An optional action to trigger when the component has been pressed
    init(layoutData: ControlItemData,
         isSelected: Bool = false,
         action: (() -> Void)? = nil) where Leading == EmptyView, Trailing == EmptyView
    {
        self.layoutData = layoutData
        self.isSelected = isSelected
        leading = { EmptyView() }
        trailing = { EmptyView() }
        self.action = action
    }

    // MARK: - Body

    var body: some View {
        InteractionButton(isReadOnly: layoutData.style.isReadOnly) {
            action?()
        } content: { interactionState in
            ControlItemContent(layoutData: layoutData,
                               isSelected: isSelected,
                               interactionState: interactionState,
                               leading: leading,
                               trailing: trailing)
        }
    }
}
