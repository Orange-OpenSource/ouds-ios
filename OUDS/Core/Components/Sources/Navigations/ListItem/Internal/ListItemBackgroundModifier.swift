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

/// A `ViewModifier` to apply to `ListItemContent` views so as to define the background
struct ListItemBackgroundModifier: ViewModifier {

    // MARK: Properties

    let interactionState: OUDSButtonInteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemContentStyle) private var style

    // MARK: Body

    func body(content: Content) -> some View {
        switch style {
        case let .card(cardStyle):
            switch cardStyle {
            case .outlined:
                content
            case let .standard(_, background):
                self.background(content: content, withInteractionOnly: background == false)
            }
        case let .item(_, background):
            self.background(content: content, withInteractionOnly: background == false)
        }
    }

    // MARK: Helpers

    @ViewBuilder
    private func background(content: Content, withInteractionOnly: Bool) -> some View {
        let color = switch interactionState {
        case .enabled:
            withInteractionOnly ? nil : theme.colors.actionSupportEnabled
        case .disabled:
            withInteractionOnly ? nil : theme.colors.actionSupportDisabled
        case .hover:
            theme.colors.actionSupportHover
        case .pressed:
            theme.colors.actionSupportPressed
        case .readOnly:
            theme.colors.actionSupportEnabled
        }

        if let color {
            content.background(color)
        } else {
            content
        }
    }
}
