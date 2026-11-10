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

struct ListItemOutlinedExtraMarginModifier: ViewModifier {

    // MARK: Properties

    @Environment(\.isEdgeToEdge) private var edgeToEdge
    @Environment(\.oudsListItemContentStyle) private var style

    // MARK: Body

    func body(content: Content) -> some View {
        // Add grid margin if edge to edge and outlined
        // because we need to avoid to display the outlined
        // border into the margin
        if edgeToEdge, style.isOutlined {
            content.gridMargin(.horizontal)
        } else {
            content
        }
    }
}
