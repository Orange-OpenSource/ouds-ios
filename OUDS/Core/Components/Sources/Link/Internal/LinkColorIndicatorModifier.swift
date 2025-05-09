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

struct LinkColorIndicatorModifier: ViewModifier {

    // MARK: - Proeprties

    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsUseMonochrome) private var useMonochrome

#if DEBUG
    @Environment(\.oudsSurfaceColor) private var surfaceColor
#endif

    // MARK: - Body

    func body(content: Content) -> some View {
        content.oudsForegroundStyle(appliedColor())
    }

    // MARK: - Helpers

    private func appliedColor() -> MultipleColorSemanticTokens {
        let colorToApply: MultipleColorSemanticTokens
        switch interactionState {
        case .enabled:
            colorToApply = enabledColor
        case .hover:
            colorToApply = hoverColor
        case .pressed:
            colorToApply = pressedColor
        case .disabled, .readOnly:
            colorToApply = disabledColor
        }
#if DEBUG
        colorToApply.debugWCAG21ContrastRatio(surfaceColor)
#endif
        return colorToApply
    }

    private var enabledColor: MultipleColorSemanticTokens {
        useMonochrome ? theme.link.linkColorContentEnabledMono : theme.link.linkColorArrowEnabled
    }

    private var hoverColor: MultipleColorSemanticTokens {
        useMonochrome ? theme.link.linkColorContentHoverMono : theme.link.linkColorArrowHover
    }

    private var pressedColor: MultipleColorSemanticTokens {
        useMonochrome ? theme.link.linkColorContentPressedMono : theme.link.linkColorArrowPressed
    }

    private var disabledColor: MultipleColorSemanticTokens {
        useMonochrome ? theme.link.linkColorContentDisabledMono : theme.colors.colorActionDisabled
    }
}
