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

struct TagAspectModifier: ViewModifier {

    let appearance: OUDSTag.Appearance
    let shape: OUDSTag.Shape
    let size: OUDSTag.Size
    let type: OUDSTag.`Type`
    @Environment(\.skeletonState) private var skeletonState
    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        if skeletonState == nil {
            content
                .modifier(TagBackgroundModifier(appearance: appearance, type: type))
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        } else {
            content.skeleton(shape: RoundedRectangle(cornerRadius: cornerRadius))
        }
    }

    private var cornerRadius: CGFloat {
        switch shape {
        case .square:
            theme.borders.radiusNone
        case .rounded:
            theme.tag.borderRadius
        }
    }
}
