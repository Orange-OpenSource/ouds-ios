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
import OUDSTokensSemantic
import SwiftUI

/// The selector of the chebckox
struct OUDSCheckboxSelectorButton: View {

    // MARK: - Properties

    let internalState: InternalCheckboxState
    let isSelected: OUDSCheckbox.State

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    /*
     HStack(alignment: .center) {
         HStack(alignment: .center) {
             cursor
         }
         .frame(width: cursorWidth, height: cursorHeight, alignment: .center)
         .background(corsorBackgroundColor)
         .clipShape(Capsule())
         .shadow(elevation: theme.elevations.elevationRaised.elevation(for: colorScheme))
     }
     .padding(.horizontal, spacePadding)
     .frame(width: trackrWidth, height: trackHeight, alignment: cursorHorizontalAlignment)
     .background(trackColor)
     .clipShape(Capsule())
     */
    var body: some View {
        if isSelected == .selected {
            tickImage(name: "checkmark")
        } else if isSelected == .undeterminate {
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

private struct SelectorFrameModifier: ViewModifier {

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        content
            .frame(width: theme.listItem.listItemSizeIcon,
                   height: theme.listItem.listItemSizeIcon)
    }
}
