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

struct LinkTextModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let size: OUDSLink.Size

    func body(content: Content) -> some View {
        Group {
            switch size {
            case .small:
                content.typeLabelStrongMedium(theme)
            case .medium:
                content.typeLabelStrongLarge(theme)
            }
        }
        .multilineTextAlignment(.center)
    }
}
