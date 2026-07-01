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

/// A `ViewModifier` to apply to `ListItemContent` view so as to define an outline effect, i.e. draw kind of borders around the object, or a divider.
/// The divider and the ouline effetct can be affected by the rounded corner flag of the theme `Tuning`.
struct ListItemBordersModifier: ViewModifier {

    // MARK: - Properties

    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemContentStyle) private var style

    // MARK: - Body

    func body(content: Content) -> some View {
        switch style {
        case let .card(cardStyle):
            switch cardStyle {
            case .outlined:
                outlined(content: content, onInteractionOnly: false)
            case .outlinedOnInteractionOnly:
                outlined(content: content, onInteractionOnly: true)
            case let .background(divider), let .backgroundOnInteractionOnly(divider):
                self.divider(content: content, with: divider)
            }

        case let .standard(standardStyle):
            switch standardStyle {
            case let .background(divider), let .backgroundOnInteractionOnly(divider):
                self.divider(content: content, with: divider)
            }
        }
    }

    // MARK: - Rounded corners

    private var roundedCorners: Bool {
        switch style {
        case .card:
            theme.tuning.hasRoundedListItems
        case .standard:
            false
        }
    }

    private var radius: BorderRadiusSemanticToken {
        roundedCorners ? theme.controlItem.borderRadiusRounded : theme.controlItem.borderRadiusDefault
    }

    // MARK: - Border modifiers

    @ViewBuilder
    private func outlined(content: Content, onInteractionOnly: Bool) -> some View {
        let color = switch interactionState {
        case .enabled:
            onInteractionOnly ? nil : theme.colors.borderDefault
        case .hover:
            onInteractionOnly ? nil : theme.colors.actionHover
        case .pressed:
            theme.colors.actionPressed
        case .disabled:
            theme.colors.actionDisabled
        case .readOnly:
            theme.colors.actionDisabled
        }

        if let color {
            content
                .border(style: theme.borders.styleDefault,
                        width: theme.controlItem.borderWidthDefault,
                        radius: radius,
                        color: color)
        } else {
            content
        }
    }

    @ViewBuilder
    private func divider(content: Content, with divider: Bool) -> some View {
        if divider {
            if roundedCorners {
                content.shadow(theme.elevations.raised)
            } else {
                // Divider must be inside
                ZStack(alignment: .bottom) {
                    content
                    Divider().horizontal(force: theme.colors.borderMuted)
                }
            }
        } else {
            content.clipShape(RoundedRectangle(cornerRadius: radius))
        }
    }
}
