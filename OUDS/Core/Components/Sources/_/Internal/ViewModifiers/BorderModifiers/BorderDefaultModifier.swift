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

/// A `ViewModifier` which applies a default border to a `View` using the default semantic tokens from the current theme.
/// Uses `theme.borders.styleDefault`, `theme.borders.widthDefault`, `theme.borders.radiusDefault`
/// and `theme.colors.borderDefault`.
struct BorderDefaultModifier: ViewModifier {

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        content.border(
            style: theme.borders.styleDefault,
            width: theme.borders.widthDefault,
            radius: theme.borders.radiusDefault,
            color: theme.colors.borderDefault)
    }
}
