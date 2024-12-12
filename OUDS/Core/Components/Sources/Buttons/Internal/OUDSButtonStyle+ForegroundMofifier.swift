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
    @Environment(\.buttonOnColoredSurface) private var buttonOnColoredSurface

    // MARK: Stored Properties

    let hierarchy: OUDSButtonStyle.Hierarchy
    let state: InternalButtonState

    // MARK: Body

    func body(content: Content) -> some View {
        content.foregroundStyle(colorToken.color(for: colorScheme))
    }

    // MARK: Private helpers

    private var colorToken: MultipleColorSemanticTokens {
        switch state {
        case .enabled, .loading:
            return token
        case .hover:
            return hoverToken
        case .pressed:
            return pressedToken
        case .disabled:
            return disabledToken
        }
    }

    private var hoverToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            buttonOnColoredSurface ? theme.buttonColorContentDefaultHoverMono : theme.buttonColorContentDefaultHover
        case .strong:
            buttonOnColoredSurface ? theme.buttonColorContentStrongHoverMono : theme.colorContentOnActionHover
        case .minimal:
            buttonOnColoredSurface ? theme.buttonColorContentMinimalHoverMono : theme.buttonColorContentMinimalHover
        case .negative:
            buttonOnColoredSurface ? theme.colorContentOnActionNegative : theme.colorContentOnActionNegative
        }
    }

    private var pressedToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            buttonOnColoredSurface ? theme.buttonColorContentDefaultPressedMono : theme.buttonColorContentDefaultPressed
        case .strong:
            buttonOnColoredSurface ? theme.buttonColorContentStrongPressedMono : theme.colorContentOnActionPressed
        case .minimal:
            buttonOnColoredSurface ? theme.buttonColorContentDefaultPressedMono : theme.buttonColorContentDefaultPressed
        case .negative:
            theme.colorContentOnActionNegative
        }
    }

    private var token: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            buttonOnColoredSurface ? theme.buttonColorContentDefaultEnabledMono : theme.buttonColorContentDefaultEnabled
        case .strong:
            buttonOnColoredSurface ? theme.colorContentOnActionEnabled : theme.buttonColorContentStrongEnabledMono
        case .minimal:
            buttonOnColoredSurface ? theme.buttonColorContentMinimalEnabledMono : theme.buttonColorContentMinimalEnabled
        case .negative:
            theme.colorContentOnActionNegative
        }
    }

    private var disabledToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            buttonOnColoredSurface ? theme.buttonColorContentDefaultDisabledMono : theme.buttonColorContentDefaultDisabled
        case .strong:
            buttonOnColoredSurface ? theme.buttonColorContentStrongDisabledMono : theme.colorContentOnActionDisabled
        case .minimal:
            buttonOnColoredSurface ? theme.buttonColorContentMinimalDisabledMono : theme.buttonColorContentMinimalDisabled
        case .negative:
            theme.colorContentOnActionDisabled
        }
    }
}
