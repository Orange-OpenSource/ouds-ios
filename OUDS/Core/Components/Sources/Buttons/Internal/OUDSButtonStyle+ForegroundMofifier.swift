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

/// Used to apply the right forgeround color associated to the hierarchy and state
struct ButtonForegroundModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored Properties

    let hierarchy: OUDSButtonStyle.Hierarchy
    let state: InternalButtonState
    let onColoredSurface: Bool

    // MARK: Body

    func body(content: Content) -> some View {
        content.foregroundStyle(colorToken)
    }

    // MARK: Private helpers

    private var colorToken: Color {
        switch state {
        case .enabled:
            enabledToken.color(for: colorScheme)
        case .hover:
            hoverToken.color(for: colorScheme)
        case .pressed:
            pressedToken.color(for: colorScheme)
        case .loading:
            // Hide the content because it is replaced by the loading indicator.
            // However the content is nedded to get the size the button in loading state.
            Color.clear.opacity(0)
        case .disabled:
            disabledToken.color(for: colorScheme)
        }
    }

    private var enabledToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.buttonColorContentDefaultEnabledMono : theme.buttonColorContentDefaultEnabled
        case .strong:
            onColoredSurface ? theme.buttonColorContentStrongEnabledMono : theme.colors.colorContentOnActionEnabled
        case .minimal:
            onColoredSurface ? theme.buttonColorContentMinimalEnabledMono : theme.buttonColorContentMinimalEnabled
        case .negative:
            theme.colors.colorContentOnActionNegative
        }
    }

    private var hoverToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.buttonColorContentDefaultHoverMono : theme.buttonColorContentDefaultHover
        case .strong:
            onColoredSurface ? theme.buttonColorContentStrongHoverMono : theme.colors.colorContentOnActionHover
        case .minimal:
            onColoredSurface ? theme.buttonColorContentMinimalHoverMono : theme.buttonColorContentMinimalHover
        case .negative:
            theme.colors.colorContentOnActionNegative
        }
    }

    private var pressedToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.buttonColorContentDefaultPressedMono : theme.buttonColorContentDefaultPressed
        case .strong:
            onColoredSurface ? theme.buttonColorContentStrongPressedMono : theme.colors.colorContentOnActionPressed
        case .minimal:
            onColoredSurface ? theme.buttonColorContentDefaultPressedMono : theme.buttonColorContentDefaultPressed
        case .negative:
            theme.colors.colorContentOnActionNegative
        }
    }

    private var disabledToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.buttonColorContentDefaultDisabledMono : theme.buttonColorContentDefaultDisabled
        case .strong:
            onColoredSurface ? theme.buttonColorContentStrongDisabledMono : theme.colors.colorContentOnActionDisabled
        case .minimal:
            onColoredSurface ? theme.buttonColorContentMinimalDisabledMono : theme.buttonColorContentMinimalDisabled
        case .negative:
            theme.colors.colorContentOnActionDisabled
        }
    }
}
