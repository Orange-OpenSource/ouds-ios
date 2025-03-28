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

import SwiftUI

struct LinkSizeIconModifier: ViewModifier {

    // MARK: - Properties

    let size: OUDSLink.Size

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func body(content: Content) -> some View {
        content.frame(width: width, height: height)
    }

    // MARK: - Helpers

    private var width: Double {
        switch size {
        case .small:
            theme.link.linkSizeIconSmall
        case .medium:
            theme.link.linkSizeIconMedium
        }
    }

    private var height: Double {
        switch size {
        case .small:
            theme.link.linkSizeIconSmall
        case .medium:
            theme.link.linkSizeIconMedium
        }
    }
}
