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
import OUDSFoundations
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

struct LinkColorIndicatorModifier: ViewModifier {

    // MARK: - Proeprties

    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @Environment(\.oudsSurfaceColor) private var surfaceColor

    // MARK: - Body

    func body(content: Content) -> some View {
        content.oudsForegroundStyle(appliedColor())
    }

    // MARK: - Helpers

    private func appliedColor() -> MultipleColorSemanticTokens {
        let colorToApply: MultipleColorSemanticTokens = switch interactionState {
        case .enabled:
            enabledColor
        case .hover:
            hoverColor
        case .pressed:
            pressedColor
        case .disabled, .readOnly:
            disabledColor
        }
        OUDSWCAG21Ratio.debugContrastRatio(colorToApply, surfaceColor, .nonTextual)
        return colorToApply
    }

    private var enabledColor: MultipleColorSemanticTokens {
        useMonochrome ? theme.link.linkMonoColorContentEnabled : theme.link.linkColorChevronEnabled
    }

    private var hoverColor: MultipleColorSemanticTokens {
        useMonochrome ? theme.link.linkMonoColorContentHover : theme.link.linkColorChevronHover
    }

    private var pressedColor: MultipleColorSemanticTokens {
        useMonochrome ? theme.link.linkMonoColorContentPressed : theme.link.linkColorChevronPressed
    }

    private var disabledColor: MultipleColorSemanticTokens {
        useMonochrome ? theme.link.linkMonoColorContentDisabled : theme.colors.colorActionDisabled
    }
}
