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

/// Used to apply the right background color associated to the hierarchy and style
struct ButtonBackgroundModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.buttonOnColoredSurface) private var buttonOnColoredSurface

    // MARK: Stored Properties

    let hierarchy: OUDSButtonStyle.Hierarchy
    let state: InternalButtonState

    // MARK: Body

    func body(content: Content) -> some View {
        content.background(colorToken.color(for: colorScheme))
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
            return disbledToken
        }
    }

    private var pressedToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            buttonOnColoredSurface ? theme.buttonColorBgDefaultPressedMono : theme.buttonColorBgDefaultPressed
        case .strong:
            buttonOnColoredSurface ? theme.buttonColorBgStrongPressedMono : theme.colorActionPressed
        case .minimal:
            buttonOnColoredSurface ? theme.buttonColorBgMinimalPressedMono : theme.buttonColorBgMinimalPressed
        case .negative:
            theme.colorActionNegativePressed
        }
    }

    private var token: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            buttonOnColoredSurface ? theme.buttonColorBgDefaultEnabledMono : theme.buttonColorBgDefaultEnabled
        case .strong:
            buttonOnColoredSurface ? theme.buttonColorBgStrongEnabledMono : theme.colorActionEnabled
        case .minimal:
            buttonOnColoredSurface ? theme.buttonColorBgMinimalEnabledMono : theme.buttonColorBgMinimalEnabled
        case .negative:
            theme.colorActionNegativeEnabled
        }
    }

    private var disbledToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            buttonOnColoredSurface ? theme.buttonColorBgDefaultDisabledMono : theme.buttonColorBgDefaultDisabled
        case .strong:
            buttonOnColoredSurface ? theme.buttonColorBgStrongDisabledMono : theme.colorActionDisabled
        case .minimal:
            buttonOnColoredSurface ? theme.buttonColorBgMinimalDisabledMono : theme.buttonColorBgMinimalDisabled
        case .negative:
            theme.colorActionDisabled
        }
    }

    private var hoverToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            buttonOnColoredSurface ? theme.buttonColorBgDefaultHoverMono : theme.buttonColorBgDefaultHover
        case .strong:
            buttonOnColoredSurface ? theme.buttonColorBgStrongHoverMono : theme.colorActionHover
        case .minimal:
            buttonOnColoredSurface ? theme.buttonColorBgMinimalHoverMono : theme.buttonColorBgMinimalHover
        case .negative:
            theme.colorActionNegativeHover
        }
    }
}
