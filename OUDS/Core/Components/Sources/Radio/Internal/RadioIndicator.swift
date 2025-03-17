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

/// The selector of the radio.
/// Its content depends mainly to the ``ControlItemInternalState`` and from flags also.
struct RadioIndicator: View {

    // MARK: - Properties

    let internalState: ControlItemInternalState
    let isOn: Bool
    let isError: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    var body: some View {
        indicator()
            .frame(width: theme.radioButton.radioButtonSizeIndicator, height: theme.radioButton.radioButtonSizeIndicator)
            .modifier(RadioIndicatorStyle(state: internalState, isOn: isOn, isError: isError))
    }

    // MARK: - Selector

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
            switch internalState {
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
            switch internalState {
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
