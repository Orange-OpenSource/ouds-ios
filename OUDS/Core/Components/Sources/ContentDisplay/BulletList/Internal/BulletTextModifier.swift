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

import OUDSFoundations
import OUDSTokensSemantic
import SwiftUI

struct BulletListLabel: View {

    // MARK: - Properties

    let label: String
    let textStyle: OudsBulletList.TextStyle
    let isBold: Bool
    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    // MARK: - Body

    var body: some View {
        Text(label)
            .modifier(BulletTextModifier(textStyle: textStyle, isBold: isBold))
            .frame(maxWidth: maxWidth.dimension(for: horizontalSizeClass ?? .regular), alignment: .leading)
    }

    private var maxWidth: MultipleSizeSemanticToken {
        switch textStyle {
        case .bodyLarge:
            theme.sizes.maxWidthTypeBodyLarge
        case .bodyMedium:
            theme.sizes.maxWidthTypeBodyMedium
        }
    }
}

struct BulletTextModifier: ViewModifier {

    // MARK: - Properties

    let textStyle: OudsBulletList.TextStyle
    let isBold: Bool

    @Environment(\.theme) private var theme

    // MARK: - Body

    func body(content: Content) -> some View {
        switch textStyle {
        case .bodyLarge:
            if isBold {
                content.bodyStrongLarge(theme)
            } else {
                content.bodyDefaultLarge(theme)
            }
        case .bodyMedium:
            if isBold {
                content.bodyStrongMedium(theme)
            } else {
                content.bodyDefaultMedium(theme)
            }
        }
    }
}
