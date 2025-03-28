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

/// This is the indicator container of the ControlItem.
///
/// This is a container because the height of the frame can increase dynamically
/// to a `maxHeight` fixed by a specific token.
/// The indicator with a fixed size is centered in this frame.

struct ControlItemIndicatorContainer: View {

    // MARK: - Stored properties

    let interactionState: InteractionState
    let indicatorType: ControlItem.IndicatorType
    let layoutData: ControlItemLabel.LayoutData

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            switch indicatorType {
            case .switch:
                Text("TODO: Add switch indicator here")
//                OUDSSwitchIndicator(InteractionState: InteractionState(isPressed: isPressed), isOn: binding.wrappedValue)
            case .radioButton(let binding):
                RadioIndicator(interactionState: interactionState, isOn: binding.wrappedValue, isError: layoutData.isError)
            case .checkBox(let binding):
                CheckboxIndicator(interactionState: interactionState, indicatorState: binding.wrappedValue, isError: layoutData.isError)
            }
        }
        .frame(maxHeight: theme.controlItem.controlItemSizeMaxHeightAssetsContainer, alignment: .center)
    }
}
