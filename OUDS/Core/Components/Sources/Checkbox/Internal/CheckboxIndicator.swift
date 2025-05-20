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

/// The indicator of the checkbox.
/// Its content depends to the ``InteractionState`` and the ``OUDSCheckboxIndicatorState`` also.
struct CheckboxIndicator: View {

    // MARK: - Properties

    let interactionState: InteractionState
    let indicatorState: OUDSCheckboxIndicatorState
    let isError: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    var body: some View {
        indicator()
            .modifier(CheckboxIndicatorModifier(interactionState: interactionState,
                                                indicatorState: indicatorState,
                                                isError: isError))
    }

    // MARK: - Indicator

    @ViewBuilder
    private func indicator() -> some View {
        if indicatorState == .selected {
            tickImage(name: "ic_form_tick")
        } else if indicatorState == .indeterminate {
            tickImage(name: "ic_form_dash")
        } else { // .unselected
            Color.clear
        }
    }

    private func tickImage(name: String) -> some View {
        Image(decorative: name, bundle: Bundle.OUDSComponents)
            .resizable()
            .scaledToFit()
            .accessibilityHidden(true)
            .oudsForegroundColor(appliedColor)
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
                OL.fatal("An OUDS Checkbox with a disabled state / read only mode and an error situation has been detected, which is not allowed"
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
