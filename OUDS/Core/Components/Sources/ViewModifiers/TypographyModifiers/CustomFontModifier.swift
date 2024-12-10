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

/// A `ViewModifier` applying a custom font on a `View`
/// Note that `CustomFontModifier` expects to lad a custom external font and not any font embeded in the device.
struct CustomFontModifier: ViewModifier {

    // MARK: - Properties

    /// The font style to apply
    let token: MultipleFontCompositeRawTokens

    /// The name of the custom font family, should be registered previously in the app, like "Luciole".
    let fontFamilyName: String

    /// The size of the font to apply
    private var fontSize: CGFloat {
        sizeClass == .compact ? token.compact.size : token.regular.size
    }

    /// The line spacing to apply line height effect
    private var lineSpacing: CGFloat {
        sizeClass == .compact
        ? token.compact.lineHeight - token.compact.size
        : token.regular.lineHeight - token.regular.size
    }

    /// The weight to apply on the font, like "Bold" or "BoldItalic"
    private var weight: String {
        sizeClass == .compact ? "\(token.compact.weight.fontWeight)" : "\(token.regular.weight.fontWeight)"
    }

    @Environment(\.horizontalSizeClass) private var sizeClass // TODO: regular / compact mode util

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .font(.custom(fontFamilyName.compose(withFont: weight), size: fontSize))
            .lineSpacing(lineSpacing)
    }
}
