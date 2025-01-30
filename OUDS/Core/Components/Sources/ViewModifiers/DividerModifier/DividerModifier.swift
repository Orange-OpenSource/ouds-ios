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

import OUDSTokensSemantic
import SwiftUI

/// A `ViewModifier` which will apply a specific divider under a `View` using color semantic token.
public struct DividerModifier: ViewModifier {

    // MARK: - Stored properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    let show: Bool

    // MARK: - Initializer

    public init(show: Bool) {
        self.show = show
    }

    // MARK: - Body

    public func body(content: Content) -> some View {
        if show {
            VStack(spacing: 0) {
                content
                Divider().foregroundStyle(theme.colors.colorBorderDefault.color(for: colorScheme))
            }
        } else {
            content
        }
    }
}
