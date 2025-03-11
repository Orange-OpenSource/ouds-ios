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
/// Its content depends to the ``ControlItemInternalState`` and the isOn also.
struct RadioSelector: View {

    // MARK: - Properties

    let internalState: ControlItemInternalState
    let isOn: Bool
    let isError: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    var body: some View {
        selector()
            .modifier(RadioSelectorStyle(state: internalState, isOn: isOn, isError: isError))
    }

    // MARK: - Selector

    @ViewBuilder
    private func selector() -> some View {
        if isOn {
            tickImage(name: "ic_radio_selected")
        } else {
            Color.clear
                .modifier(SelectorFrameModifier())
        }
    }

    private func tickImage(name: String) -> some View {
        Image(decorative: name, bundle: Bundle.OUDSComponents)
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .modifier(SelectorFrameModifier())
            .accessibilityHidden(true)
            .foregroundColor(appliedColor.color(for: colorScheme))
    }

    private var appliedColor: MultipleColorSemanticTokens {
        if isError {
            switch internalState {
            case .enabled:
                return theme.checkbox.checkboxColorContentErrorEnabled
            case .hover:
                return theme.checkbox.checkboxColorContentErrorHover
            case .pressed:
                return theme.checkbox.checkboxColorContentErrorPressed
            case .disabled, .readOnly:
                OL.fatal("An OUDS Radio with a disabled state / read only mode and an error situation has been detected, which is not allowed"
                         + " Only non-error situation are allowed to have a disabled state / read only mode.")
            }
        } else {
            switch internalState {
            case .enabled:
                return theme.checkbox.checkboxColorContentSelected
            case .hover:
                return theme.checkbox.checkboxColorContentHover
            case .pressed:
                return theme.checkbox.checkboxColorContentPressed
            case .disabled, .readOnly:
                return theme.checkbox.checkboxColorContentDisabled
            }
        }
    }
}

// MARK: - Selector Frame Modifier

private struct SelectorFrameModifier: ViewModifier {

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        content
            .frame(width: theme.checkbox.checkboxSizeIndicatorInnerIcon,
                   height: theme.checkbox.checkboxSizeIndicatorInnerIcon)
    }
}
