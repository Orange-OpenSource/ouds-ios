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

import OUDS
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

struct LinkColorContentModifier: ViewModifier {

    // MARK: - Properties

    let state: LinkInternalState

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    // MARK: - Body

    func body(content: Content) -> some View {
        content.foregroundStyle(appliedColor)
    }

    // MARK: - Helpers

    private var appliedColor: Color {
        switch state {
        case .enabled:
            enabledColor.color(for: colorScheme)
        case .hover:
            hoverColor.color(for: colorScheme)
        case .pressed:
            pressedColor.color(for: colorScheme)
        case .disabled:
            disabledColor.color(for: colorScheme)
        }
    }

    private var enabledColor: MultipleColorSemanticTokens {
        onColoredSurface ? theme.link.linkColorContentEnabledMono : theme.link.linkColorContentEnabled
    }

    private var hoverColor: MultipleColorSemanticTokens {
        onColoredSurface ? theme.link.linkColorContentHoverMono : theme.link.linkColorContentHover
    }

    private var pressedColor: MultipleColorSemanticTokens {
        onColoredSurface ? theme.link.linkColorContentPressedMono : theme.link.linkColorContentPressed
    }

    private var disabledColor: MultipleColorSemanticTokens {
        onColoredSurface ? theme.link.linkColorContentDisabledMono : theme.colors.colorActionDisabled
    }
}
