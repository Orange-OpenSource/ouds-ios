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
import SwiftUI

/// `ViewModifier` to use to define pading to given `edges` using the OUDS current horizontal size class
struct GridMarginModifier: ViewModifier {

    let edges: Edge.Set

    @Environment(\.theme) private var theme
    @Environment(\.oudsHorizontalSizeClass) private var oudsHorizontalSizeClass

    func body(content: Content) -> some View {
        content.padding(edges, theme.gridMargin(for: oudsHorizontalSizeClass))
    }
}
