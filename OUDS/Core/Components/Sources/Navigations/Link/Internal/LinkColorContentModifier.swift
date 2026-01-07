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
import OUDSThemesContract
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

struct LinkColorContentModifier: ViewModifier {

    // MARK: - Properties

    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @Environment(\.oudsSurfaceColor) private var surfaceColor

    // MARK: - Body

    func body(content: Content) -> some View {
        content.oudsForegroundStyle(appliedColor())
    }

    // MARK: - Helpers

    private func appliedColor() -> MultipleColorSemanticToken {
        let colorToApply: MultipleColorSemanticToken = switch interactionState {
        case .enabled:
            enabledColor
        case .hover:
            hoverColor
        case .pressed:
            pressedColor
        case .disabled, .readOnly:
            disabledColor
        }
        OUDSWCAG21Ratio.debugContrastRatio(colorToApply, surfaceColor)
        return colorToApply
    }

    private var enabledColor: MultipleColorSemanticToken {
        useMonochrome ? theme.link.monoColorContentEnabled : theme.link.colorContentEnabled
    }

    private var hoverColor: MultipleColorSemanticToken {
        useMonochrome ? theme.link.monoColorContentHover : theme.link.colorContentHover
    }

    private var pressedColor: MultipleColorSemanticToken {
        useMonochrome ? theme.link.monoColorContentPressed : theme.link.colorContentPressed
    }

    private var disabledColor: MultipleColorSemanticToken {
        useMonochrome ? theme.link.monoColorContentDisabled : theme.colors.actionDisabled
    }
}
