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

struct ControlItemIndicator: View {

    // MARK: - Stored properties

    let indicatorType: ControlItem.IndicatorType
    let layoutData: ControlItemLabel.LayoutData
    let internalState: ControlItemInternalState

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            switch indicatorType {
            case .switch:
                // TODO: #405 - Add switch indicator
                Text("TODO: Add switch indicator here")
//                OUDSSwitchIndicator(internalState: internalState(isPressed: isPressed), isOn: binding.wrappedValue)
            case .radioButton(let binding):
                RadioIndicator(internalState: internalState, isOn: binding.wrappedValue, isError: layoutData.isError)
            case .checkBox(let binding):
                CheckboxIndicator(internalState: internalState, indicatorState: binding.wrappedValue, isError: layoutData.isError)
            }
        }
        .frame(maxHeight: theme.controlItem.controlItemSizeMaxHeightAssetsContainer, alignment: .center)
    }
}
