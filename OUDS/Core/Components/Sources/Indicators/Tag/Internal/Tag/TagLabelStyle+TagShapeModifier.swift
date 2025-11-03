//
// Software Name: OUDSThemesContract iOS
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

struct TagShapeModifier: ViewModifier {

    // MARK: Stored properties

    let shape: OUDSTag.Shape

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }

    // MARK: Helper

    private var cornerRadius: CGFloat {
        switch shape {
        case .square:
            theme.borders.radiusNone
        case .rounded:
            theme.tag.borderRadius
        }
    }
}
