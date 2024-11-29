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

/// A `ViewModifier` which will apply the system `Font` in a component `View` using a `MultipleTypographyCompositeRawTokens`
/// Note that `FontModifier` use default system font but nothing for others fonts embeded in device
struct FontModifier: ViewModifier {

    // MARK: - Properties

    // TODO: How to manage other fonts on device?

    let token: MultipleTypographyCompositeRawTokens

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

    /// The weight to apply on the font.
    private var weight: Font.Weight {
        sizeClass == .compact ? token.compact.weight.fontWeight : token.regular.weight.fontWeight
    }

    @Environment(\.horizontalSizeClass) private var sizeClass

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .font(.system(size: fontSize, weight: weight))
            .lineSpacing(lineSpacing)
    }
}
