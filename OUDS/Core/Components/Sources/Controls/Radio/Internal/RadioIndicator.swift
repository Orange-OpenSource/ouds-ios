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
        indicator()
            .modifier(RadioIndicatorModifier(interactionState: interactionState,
                                             isOn: isOn,
                                             isError: isError))
    }

    // MARK: - Indicator

    @ViewBuilder
    private func indicator() -> some View {
        if isOn {
            tickImage(name: "ic_radio-button_selected")
        } else {
            Color.clear
        }
    }

    private func tickImage(name: String) -> some View {
        Image(decorative: name, bundle: theme.resourcesBundle)
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .accessibilityHidden(true)
    }
}
