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

// MARK: Bullet List Label

struct BulletListLabel: View {

    // MARK: Properties

    let label: TextualContent
    let textStyle: OUDSBulletList.TextStyle
    let isBold: Bool

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    // MARK: - Body

    var body: some View {
        if isBold {
            Text(label.rawValue)
                .modifier(BulletTextModifier(textStyle: textStyle, isBold: isBold))
                .frame(maxWidth: maxWidth.dimension(for: horizontalSizeClass ?? .regular), alignment: .leading)
        } else {
            textView(for: label)
                .modifier(BulletTextModifier(textStyle: textStyle, isBold: isBold))
                .frame(maxWidth: maxWidth.dimension(for: horizontalSizeClass ?? .regular), alignment: .leading)
        }
    }

    private var maxWidth: MultipleSizeSemanticToken {
        switch textStyle {
        case .bodyLarge:
            theme.sizes.maxWidthBodyLarge
        case .bodyMedium:
            theme.sizes.maxWidthBodyMedium
        }
    }
}

// MARK: - Bullet Text Modifier

struct BulletTextModifier: ViewModifier {

    // MARK: Properties

    let textStyle: OUDSBulletList.TextStyle
    let isBold: Bool

    @Environment(\.theme) private var theme

    // MARK: Body

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
