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

import OUDS
import OUDSFoundations
import OUDSTokensSemantic
import SwiftUI

/// The layout for the ``ControlItem`` component as SwiftUI `ButtonStyle` to compute the internal state  ``InteractionState`` used by :
/// - the indicatpr according to ``ControlItem.IndicatorType`` to apply right tokens
/// - the label described by ``ControlItemLabel.LayoutData`` to apply right tokens on texts and icon
struct ControlItemStyle: ButtonStyle {

    // MARK: Stored properties

    let indicatorType: ControlItem.IndicatorType
    let layoutData: ControlItemLabel.LayoutData
    @State private var isHover: Bool = false
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        let interactionState = InteractionState(isEnabled: isEnabled, isHover: isHover, isPressed: configuration.isPressed, isReadOnly: layoutData.isReadOnly)
        ControlItemContent(interactionState: interactionState, indicatorType: indicatorType, layoutData: layoutData)
            .onHover { isHover in
                self.isHover = isHover
            }
    }
}
