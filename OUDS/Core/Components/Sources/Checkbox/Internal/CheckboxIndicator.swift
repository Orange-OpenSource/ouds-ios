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
/// This `View` manages also the high contrast mode in light color scheme so as to use a dedicated color for indicator.
struct CheckboxIndicator: View {

    // MARK: - Properties

    let interactionState: InteractionState
    let indicatorState: OUDSCheckboxIndicatorState
    let isError: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.colorSchemeContrast) private var colorSchemeContrast

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
            tickImage(name: "ic_checkbox_selected")
        } else if indicatorState == .indeterminate {
            tickImage(name: "ic_checkbox_undeterminate")
        } else { // .unselected
            Color.clear
        }
    }

    private func tickImage(name: String) -> some View {
        Image(decorative: name, bundle: theme.resourcesBundle)
            .resizable()
            .scaledToFit()
            .accessibilityHidden(true)
            .oudsForegroundColor(appliedColor)
    }

    private var appliedColor: MultipleColorSemanticTokens {
        // Error case
        if isError {
            switch interactionState {
            case .enabled:
                theme.colors.colorActionNegativeEnabled
            case .hover:
                theme.colors.colorActionNegativeHover
            case .pressed:
                theme.colors.colorActionNegativePressed
            case .disabled, .readOnly:
                OL.fatal("An OUDS Checkbox with a disabled state / read only mode and an error situation has been detected, which is not allowed"
                    + " Only non-error situation are allowed to have a disabled state / read only mode.")
            }

            // Not error case
        } else {
            switch interactionState {
            case .enabled:
                if colorSchemeContrast == .increased, colorScheme == .light {
                    theme.colors.colorContentDefault
                } else {
                    theme.colors.colorActionSelected
                }
            case .hover:
                theme.colors.colorActionHover
            case .pressed:
                theme.colors.colorActionPressed
            case .disabled, .readOnly:
                theme.colors.colorActionDisabled
            }
        }
    }
}
