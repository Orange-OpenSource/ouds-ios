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

/// The checkbox component with only the selector
struct CheckboxSelector: View {

    let status: OUDSCheckbox.Status
    let action: () -> Void

    var body: some View {
        SelectorBox(status: status)
            .accessibilityAddTraits(.isButton)
            .onTapGesture {
                action()
            }
    }
}

/// The square with the tick or not, i.e. the checkbox selector depending to the given `OUDSCheckbox.Status`
private struct SelectorBox: View {

    let status: OUDSCheckbox.Status

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View { // TODO: #264 - Use suitable image
        if status == .selected || status == .errorSelected {
            tickImage(name: "checkmark")
        } else if status == .undeterminate || status == .errorUndeterminate {
            tickImage(name: "minus")
        } else {
            Color.clear
                .frame(minWidth: theme.checkRadio.checkRadioSizeMinWidthSelectorOnly,
                       maxWidth: theme.checkRadio.checkRadioSizeMinWidthSelectorOnly, // TODO: #264 - No token for maw width!
                       minHeight: theme.checkRadio.checkRadioSizeMinHeightSelectorOnly,
                       maxHeight: theme.checkRadio.checkRadioSizeMaxHeightSelectorOnly)
                .padding(4)
                .modifier(OUDSCheckboxStyle(status: status))
        }
    }

    private func tickImage(name: String) -> some View {
        Image(systemName: name)
            .resizable()
            .scaledToFit()
            .frame(minWidth: theme.checkRadio.checkRadioSizeMinWidthSelectorOnly,
                   maxWidth: theme.checkRadio.checkRadioSizeMinWidthSelectorOnly, // TODO: #264 - No token for maw width!
                   minHeight: theme.checkRadio.checkRadioSizeMinHeightSelectorOnly,
                   maxHeight: theme.checkRadio.checkRadioSizeMaxHeightSelectorOnly)
            .padding(4)
            .modifier(OUDSCheckboxStyle(status: status))
            .accessibilityHidden(true)
    }
}
