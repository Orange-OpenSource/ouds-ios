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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

struct CardBackgroundModifier: ViewModifier {

    // MARK: Stored properties

    let style: OUDSCardStyle
    let interactionState: OUDSButtonInteractionState
    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        if let color {
            content.background(color)
        } else {
            content.background(.clear)
        }
    }

    // MARK: Helper

    private var color: MultipleColorSemanticToken? {
        switch style {
        case let .filled(_, useDefaultBackground), let .elevated(useDefaultBackground):
            if useDefaultBackground {
                switch interactionState {
                case .enabled:
                    theme.colors.actionSupportEnabled
                case .hover:
                    theme.colors.actionSupportHover
                case .pressed:
                    theme.colors.actionSupportPressed
                case .disabled:
                    theme.colors.actionSupportDisabled
                case .readOnly:
                    // should not appear
                    theme.colors.actionSupportDisabled
                }
            } else {
                nil
            }
        case .outlined:
            nil
        }
    }
}
