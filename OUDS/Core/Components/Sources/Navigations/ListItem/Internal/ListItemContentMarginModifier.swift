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

struct ListItemContentMarginModifier: ViewModifier {

    // MARK: - Properties

    @Environment(\.oudsEdgeToEdge) private var edgeToEdge
    @Environment(\.oudsListItemContentStyle) private var style
    @Environment(\.theme) private var theme

    // MARK: - Body

    func body(content: Content) -> some View {
        // Before add background, apply margins:
        // - if edget to edge add grid margin only if not oulined because we need to avoid to display the
        //   outlined border into the margin
        // - if not edge to edge and if there is no divider add item padding.
        // No need to add padding in other cases because already added by ListItemBordersModifier before.
        if edgeToEdge {
            if !style.isOutlined {
                content.gridMargin(.horizontal)
            } else {
                content
            }
        } else {
            if !style.hasDivider && !style.isOutlined {
                content.padding(.horizontal, theme.listItem.spacePaddingInline)
            } else {
                content
            }
        }
    }
}

