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

/// The selector of the chebckox.
/// Its content depends to the ``OUDSInternalCheckboxState`` and the ``OUDSCheckbox.SelectorState`` also.
struct OUDSCheckboxSelectorButton: View {

    // MARK: - Properties

    let internalState: OUDSInternalCheckboxState
    let selectorState: OUDSCheckbox.SelectorState
    let isError: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    var body: some View {
        selector()
            .modifier(OUDSCheckboxSelectorButtonStyle(state: internalState, selectorState: selectorState, isError: isError))
    }

    // MARK: - Selector

    @ViewBuilder
    private func selector() -> some View {
        if selectorState == .selected {
            tickImage(name: "checkmark")
        } else if selectorState == .undeterminate {
            tickImage(name: "minus")
        } else { // .unselected
            Color.clear
                .modifier(SelectorFrameModifier())
        }
    }

    private func tickImage(name: String) -> some View {
        Image(systemName: name)
            .resizable()
            .scaledToFit()
            .modifier(SelectorFrameModifier())
            .accessibilityHidden(true)
    }
}

// MARK: - Selector Frame Modifier

private struct SelectorFrameModifier: ViewModifier {

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        content
            .frame(width: theme.listItem.listItemSizeIcon,
                   height: theme.listItem.listItemSizeIcon)
    }
}
