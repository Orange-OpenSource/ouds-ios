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

/// Modelizes the layout for a checkbox, radio button or switch with additional components like labels, icons and dividers.
/// This `View` is not exposed publicly as it is not possible to define such variable / customizable component on *Figma* side.
/// This internal component displays the indicator and defines the layout as a SwiftUI button through the internal `InteractionButton`.
struct ControlItemIndicator: View {

    // MARK: Stored Properties

    private let type: `Type`
    private let layoutData: ControlItemData
    private let icon: Image?
    private let flipIcon: Bool
    private let action: (() -> Void)?

    /// Used to define the selector to be displayed
    enum `Type` {
        /// Indicator is a switch (i.e `SwiftUI.Toggle`)
        case `switch`(Binding<Bool>)
        /// Indicator is a radio button
        case radioButton(Binding<Bool>)
        /// Indicator is a checkbox
        case checkBox(Binding<OUDSCheckboxIndicatorState>)
    }

    @Environment(\.theme) private var theme

    // MARK: Initializers

    /// Creates a control item indicator with the layout data model
    ///
    /// - Parameters:
    ///    - type: The type of indicator set in the control item
    ///    - layoutData: The data of the layout
    ///    - action: An optional action to trigger when the component has been pressed
    ///
    /// **Remark: As divider and outline effect are not supposed to be displayed at the same time, the divider is not displayed if the outline effect is active.**
    init(type: Type,
         layoutData: ControlItemData,
         icon: Image? = nil,
         flipIcon: Bool = false,
         action: (() -> Void)? = nil)
    {
        self.type = type
        self.layoutData = layoutData
        self.icon = icon
        self.flipIcon = flipIcon
        self.action = action
    }

    // MARK: Body

    var body: some View {
        InteractionButton(isReadOnly: layoutData.style.isReadOnly) {
            #if os(iOS)
            VibrationsManager.success()
            #endif
            switch type {
            case let .switch(binding):
                withAnimation(.timingCurve(0.2, 0, 0, 1, duration: 0.150)) {
                    binding.wrappedValue.toggle()
                }
            case let .radioButton(binding):
                binding.wrappedValue.toggle()
            case let .checkBox(binding):
                binding.wrappedValue.toggle()
            }
            action?()
        } content: { interactionState in
            ControlItemContent(layoutData: layoutData,
                               isSelected: isSelected,
                               interactionState: interactionState)
            {
                HStack(alignment: .center, spacing: 0) {
                    switch type {
                    case let .switch(binding):
                        SwitchIndicator(interactionState: interactionState, isOn: binding)
                    case let .radioButton(binding):
                        RadioIndicator(interactionState: interactionState, isOn: binding.wrappedValue, isError: layoutData.style.isError)
                    case let .checkBox(binding):
                        CheckboxIndicator(interactionState: interactionState, indicatorState: binding.wrappedValue, isError: layoutData.style.isError)
                    }
                }
            } trailing: {
                ControlItemIconContainer(interactionState: interactionState,
                                         icon: icon,
                                         flipIcon: flipIcon,
                                         isError: layoutData.style.isError)
            }
            .frame(minHeight: theme.controlItem.sizeAssetSmall, alignment: .center)
        }
    }

    // MARK: Computed properties

    private var isSelected: Bool {
        switch type {
        case let .switch(isOn), let .radioButton(isOn):
            isOn.wrappedValue
        case let .checkBox(selectionState):
            selectionState.wrappedValue == .selected
        }
    }
}
