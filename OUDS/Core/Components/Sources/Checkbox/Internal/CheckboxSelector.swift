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

/// The square with the tick or not, i.e. the checkbox selector depending to the given ``OUDSCheckbox.Status``
struct CheckboxSelector: View {

    let isAlone: Bool
    let status: OUDSCheckbox.Status

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View { // TODO: #264 - Use suitable image
        if status == .selected || status == .errorSelected {
            tickImage(name: "checkmark")
        } else if status == .undeterminate || status == .errorUndeterminate {
            tickImage(name: "minus")
        } else { // .unselected and .errorUnselected cases
            Color.clear
                .modifier(SelectorFrameModifier(isAlone: isAlone))
        }
    }

    private func tickImage(name: String) -> some View {
        Image(systemName: name)
            .resizable()
            .scaledToFit()
            .modifier(SelectorFrameModifier(isAlone: isAlone))
            .accessibilityHidden(true)
    }
}

/// `ViewModifier` for the checbkox slector to define the tokens to use depending to if the checkkox is alone or not
private struct SelectorFrameModifier: ViewModifier {

    let isAlone: Bool
    @Environment(\.theme) private var theme

    // TODO: #264 - Ensure the rules for min/xax height/width are the good ones in Figma
    func body(content: Content) -> some View {
        content
            .frame(width: theme.listItem.listItemSizeIcon,
                   height: theme.listItem.listItemSizeIcon)
//        if isAlone {
//            content
//                .frame(minWidth: theme.checkRadio.checkRadioSizeMinWidthSelectorOnly,
//                       minHeight: theme.checkRadio.checkRadioSizeMinHeightSelectorOnly,
//                       maxHeight: theme.checkRadio.checkRadioSizeMaxHeightSelectorOnly)
//        } else {
//            content
//                .frame(minHeight: theme.listItem.listItemSizeIcon,
//                       maxHeight: theme.checkRadio.checkRadioSizeMaxHeightAssetsContainer)
//        }
    }
}
