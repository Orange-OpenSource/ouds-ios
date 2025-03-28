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

/// The indicator of the radio.
/// Its content depends mainly to the ``InteractionState`` and from flags also.
struct RadioIndicator: View {

    // MARK: - Properties

    let interactionState: InteractionState
    let isOn: Bool
    let isError: Bool

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        ZStack(alignment: .center) {
            Color.clear
                .frame(minWidth: theme.radioButton.radioButtonSizeMinWidth,
                       maxWidth: theme.radioButton.radioButtonSizeMinWidth,
                       minHeight: theme.radioButton.radioButtonSizeMinHeight,
                       maxHeight: theme.radioButton.radioButtonSizeMaxHeight)
                .contentShape(Circle())

            indicator()
                .modifier(RadioIndicatorModifier(interactionState: interactionState, isOn: isOn, isError: isError))
        }
    }

    // MARK: - Indicator

    @ViewBuilder
    private func indicator() -> some View {
        if isOn {
            tickImage(name: "ic_radio_selected")
        } else {
            Color.clear
        }
    }

    private func tickImage(name: String) -> some View {
        Image(decorative: name, bundle: Bundle.OUDSComponents)
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .accessibilityHidden(true)
    }

    private var appliedColor: MultipleColorSemanticTokens {
        if isError {
            switch interactionState {
            case .enabled:
                return theme.colors.colorActionNegativeEnabled
            case .hover:
                return theme.colors.colorActionNegativeHover
            case .pressed:
                return theme.colors.colorActionNegativePressed
            case .disabled, .readOnly:
                OL.fatal("An OUDSRadio with a disabled state / read only mode and an error situation has been detected, which is not allowed"
                         + " Only non-error situation are allowed to have a disabled state / read only mode.")
            }
        } else {
            switch interactionState {
            case .enabled:
                return theme.colors.colorActionSelected
            case .hover:
                return theme.colors.colorActionHover
            case .pressed:
                return theme.colors.colorActionPressed
            case .disabled, .readOnly:
                return theme.colors.colorActionDisabled
            }
        }
    }
}
