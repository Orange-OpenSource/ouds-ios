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
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    // MARK: Stored Properties

    let hierarchy: OUDSButton.Hierarchy
    let state: InternalButtonState

    // MARK: Body

    func body(content: Content) -> some View {
        content.background(colorToken.color(for: colorScheme))
    }

    // MARK: Private helpers

    private var colorToken: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            return enabledToken
        case .hover:
            return hoverToken
        case .pressed:
            return pressedToken
        case .loading:
            return loadingToken
        case .disabled:
            return disbledToken
        }
    }

    private var enabledToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.button.buttonColorBgDefaultEnabledMono : theme.button.buttonColorBgDefaultEnabled
        case .strong:
            onColoredSurface ? theme.button.buttonColorBgStrongEnabledMono : theme.colors.colorActionEnabled
        case .minimal:
            onColoredSurface ? theme.button.buttonColorBgMinimalEnabledMono : theme.button.buttonColorBgMinimalEnabled
        case .negative:
            theme.colors.colorActionNegativeEnabled
        }
    }

    private var hoverToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.button.buttonColorBgDefaultHoverMono : theme.button.buttonColorBgDefaultHover
        case .strong:
            onColoredSurface ? theme.button.buttonColorBgStrongHoverMono : theme.colors.colorActionHover
        case .minimal:
            onColoredSurface ? theme.button.buttonColorBgMinimalHoverMono : theme.button.buttonColorBgMinimalHover
        case .negative:
            theme.colors.colorActionNegativeHover
        }
    }

    private var pressedToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.button.buttonColorBgDefaultPressedMono : theme.button.buttonColorBgDefaultPressed
        case .strong:
            onColoredSurface ? theme.button.buttonColorBgStrongPressedMono : theme.colors.colorActionPressed
        case .minimal:
            onColoredSurface ? theme.button.buttonColorBgMinimalPressedMono : theme.button.buttonColorBgMinimalPressed
        case .negative:
            theme.colors.colorActionNegativePressed
        }
    }

    private var loadingToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.button.buttonColorBgDefaultLoadingMono : theme.button.buttonColorBgDefaultLoading
        case .strong:
            onColoredSurface ? theme.button.buttonColorBgStrongLoadingMono : theme.colors.colorActionLoading
        case .minimal:
            onColoredSurface ? theme.button.buttonColorBgMinimalLoadingMono : theme.button.buttonColorBgMinimalLoading
        case .negative:
            theme.colors.colorActionNegativeEnabled
        }
    }

    private var disbledToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.button.buttonColorBgDefaultDisabledMono : theme.button.buttonColorBgDefaultDisabled
        case .strong:
            onColoredSurface ? theme.button.buttonColorBgStrongDisabledMono : theme.colors.colorActionDisabled
        case .minimal:
            onColoredSurface ? theme.button.buttonColorBgMinimalDisabledMono : theme.button.buttonColorBgMinimalDisabled
        case .negative:
            theme.colors.colorActionDisabled
        }
    }
}
