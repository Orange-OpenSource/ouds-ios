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

/// A `ViewModifier` to apply to `OUDSCard` view so as to define an outline effect, i.e.
/// draw kind of borders around the object, or a divider.
/// The divider and outline effect can be affected by the rounded-corner flag in the theme's `Tuning`.
struct CardBordersModifier: ViewModifier {

    // MARK: Properties

    let style: OUDSCardStyle
    let interactionState: OUDSButtonInteractionState
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    func body(content: Content) -> some View {
        switch style {
        case let .filled(divider, _):
            self.divider(content: content, with: divider)
        case .outlined:
            outlined(content: content)
        case .elevated:
            content
                .background {
                    RoundedRectangle(cornerRadius: theme.cardRadius)
                        .fill(theme.colors.surfacePrimary)
                        .shadow(theme.elevations.raised)
                }
        }
    }

    // MARK: Border modifiers
    @ViewBuilder
    private func outlined(content: Content) -> some View {
        let color = switch interactionState {
        case .enabled:
            theme.colors.borderDefault
        case .hover:
            theme.colors.actionHover
        case .pressed:
            theme.colors.actionPressed
        case .disabled:
            theme.colors.actionDisabled
        case .readOnly:
            // should no appear
            theme.colors.actionDisabled
        }

        content
            .border(style: theme.borders.styleDefault,
                    width: theme.borders.widthDefault,
                    radius: theme.cardRadius,
                    color: color)
    }

    @ViewBuilder
    private func divider(content: Content, with divider: Bool) -> some View {
        if divider {
            ZStack(alignment: .bottomLeading) {
                content
                Divider()
                    .frame(height: theme.borders.widthDefault)
                    .overlay(theme.colors.borderMuted.color(for: colorScheme))
            }
            .clipShape(RoundedRectangle(cornerRadius: theme.cardRadius))
        } else {
            content.clipShape(RoundedRectangle(cornerRadius: theme.cardRadius))
        }
    }
}
