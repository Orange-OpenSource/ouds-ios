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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

struct InputTagBorderModifier: ViewModifier {

    // MARK: Stored Properties

    let state: InteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .oudsBorder(
                style: theme.borders.styleDefault,
                width: width,
                radius: theme.tag.borderRadius,
                color: color)
    }

    // MARK: Private helpers

    private var width: BorderWidthSemanticToken {
        switch state {
        case .enabled, .disabled:
            theme.inputTag.borderWidthDefault
        case .hover, .pressed:
            theme.inputTag.borderWidthDefaultInteraction
        case .readOnly:
            // Should not appear
            theme.inputTag.borderWidthDefault
        }
    }

    private var color: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            theme.inputTag.colorBorderEnabled
        case .hover:
            theme.inputTag.colorBorderHover
        case .pressed:
            theme.inputTag.colorBorderPressed
        case .disabled:
            theme.colors.actionDisabled
        case .readOnly:
            // Should not appear
            theme.colors.actionDisabled
        }
    }
}
