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

/// Used to apply the right forground color associated to the hierarchy and state
struct ButtonForegroundModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsUseMonochrome) private var useMonochrome

#if DEBUG
    @Environment(\.oudsSurfaceColor) private var surfaceColor
#endif

    // MARK: Stored Properties

    let hierarchy: OUDSButton.Hierarchy
    let state: ButtonInternalState

    // MARK: Body

    func body(content: Content) -> some View {
        content.foregroundStyle(appliedColor())
    }

    // MARK: Private helpers

    private func appliedColor() -> Color {
        let colorTokenToApply: MultipleColorSemanticTokens
        switch state {
        case .enabled:
            colorTokenToApply = enabledColor
        case .hover:
            colorTokenToApply = hoverColor
        case .pressed:
            colorTokenToApply = pressedColor
        case .loading:
            // Hide the content because it is replaced by the loading indicator.
            // However the content is needed to get the size of the button in loading state.
            return Color.clear.opacity(0)
        case .disabled:
            colorTokenToApply = disabledColor
        }
#if DEBUG
        colorTokenToApply.debugWCAG21ContrastRatio(surfaceColor)
#endif
        return colorTokenToApply.color(for: colorScheme)
    }

    private var enabledColor: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            useMonochrome ? theme.button.buttonColorContentDefaultEnabledMono : theme.button.buttonColorContentDefaultEnabled
        case .strong:
            useMonochrome ? theme.button.buttonColorContentStrongEnabledMono : theme.colors.colorContentOnActionEnabled
        case .minimal:
            useMonochrome ? theme.button.buttonColorContentMinimalEnabledMono : theme.button.buttonColorContentMinimalEnabled
        case .negative:
            theme.colors.colorContentOnStatusEmphasizedAlt
        }
    }

    private var hoverColor: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            useMonochrome ? theme.button.buttonColorContentDefaultHoverMono : theme.button.buttonColorContentDefaultHover
        case .strong:
            useMonochrome ? theme.button.buttonColorContentStrongHoverMono : theme.colors.colorContentOnActionHover
        case .minimal:
            useMonochrome ? theme.button.buttonColorContentMinimalHoverMono : theme.button.buttonColorContentMinimalHover
        case .negative:
            theme.colors.colorContentOnStatusEmphasizedAlt
        }
    }

    private var pressedColor: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            useMonochrome ? theme.button.buttonColorContentDefaultPressedMono : theme.button.buttonColorContentDefaultPressed
        case .strong:
            useMonochrome ? theme.button.buttonColorContentStrongPressedMono : theme.colors.colorContentOnActionPressed
        case .minimal:
            useMonochrome ? theme.button.buttonColorContentDefaultPressedMono : theme.button.buttonColorContentDefaultPressed
        case .negative:
            theme.colors.colorContentOnStatusEmphasizedAlt
        }
    }

    private var disabledColor: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            useMonochrome ? theme.button.buttonColorContentDefaultDisabledMono : theme.button.buttonColorContentDefaultDisabled
        case .strong:
            useMonochrome ? theme.button.buttonColorContentStrongDisabledMono : theme.colors.colorContentOnActionDisabled
        case .minimal:
            useMonochrome ? theme.button.buttonColorContentMinimalDisabledMono : theme.button.buttonColorContentMinimalDisabled
        case .negative:
            theme.colors.colorContentOnActionDisabled
        }
    }
}
