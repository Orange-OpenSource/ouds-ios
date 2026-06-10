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
        case .outlined:
            content
                .border(style: theme.borders.styleDefault,
                        width: theme.controlItem.borderWidthDefault,
                        radius: radius,
                        color: outlinedColor)

        case let .standard(divider, _):
            if divider {
                if theme.tuning.hasRoundedListItems {
                    // TODO: #265 - To be updated
                    content
                        .shadow(theme.elevations.raised)
                } else {
                    // Divider must be inside
                    ZStack(alignment: .bottom) {
                        content
                        Divider().horizontal(force: dividerColor)
                    }
                }
            } else {
                content.clipShape(RoundedRectangle(cornerRadius: radius))
            }
        }
    }

    // MARK: - Helpers

    private var radius: BorderRadiusSemanticToken {
        theme.tuning.hasRoundedListItems ? theme.controlItem.borderRadiusRounded : theme.controlItem.borderRadiusDefault
    }

    private var outlinedColor: MultipleColorSemanticToken {
        switch interactionState {
        case .enabled:
            theme.colors.borderDefault
        case .hover:
            theme.colors.actionHover
        case .pressed:
            theme.colors.actionPressed
        case .disabled:
            theme.colors.actionDisabled
        case .readOnly:
            theme.colors.actionDisabled
        }
    }

    private var dividerColor: MultipleColorSemanticToken {
        theme.colors.borderMuted
    }
}
