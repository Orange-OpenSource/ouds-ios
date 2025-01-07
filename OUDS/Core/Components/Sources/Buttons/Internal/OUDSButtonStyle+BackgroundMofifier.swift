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
            onColoredSurface ? theme.buttonColorBgDefaultEnabledMono : theme.buttonColorBgDefaultEnabled
        case .strong:
            onColoredSurface ? theme.buttonColorBgStrongEnabledMono : theme.colors.colorActionEnabled
        case .minimal:
            onColoredSurface ? theme.buttonColorBgMinimalEnabledMono : theme.buttonColorBgMinimalEnabled
        case .negative:
            theme.colors.colorActionNegativeEnabled
        }
    }

    private var hoverToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.buttonColorBgDefaultHoverMono : theme.buttonColorBgDefaultHover
        case .strong:
            onColoredSurface ? theme.buttonColorBgStrongHoverMono : theme.colors.colorActionHover
        case .minimal:
            onColoredSurface ? theme.buttonColorBgMinimalHoverMono : theme.buttonColorBgMinimalHover
        case .negative:
            theme.colors.colorActionNegativeHover
        }
    }

    private var pressedToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.buttonColorBgDefaultPressedMono : theme.buttonColorBgDefaultPressed
        case .strong:
            onColoredSurface ? theme.buttonColorBgStrongPressedMono : theme.colors.colorActionPressed
        case .minimal:
            onColoredSurface ? theme.buttonColorBgMinimalPressedMono : theme.buttonColorBgMinimalPressed
        case .negative:
            theme.colors.colorActionNegativePressed
        }
    }

    private var loadingToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.buttonColorBgDefaultLoadingMono : theme.buttonColorBgDefaultLoading
        case .strong:
            onColoredSurface ? theme.buttonColorBgStrongLoadingMono : theme.colors.colorActionLoading
        case .minimal:
            onColoredSurface ? theme.buttonColorBgMinimalLoadingMono : theme.buttonColorBgMinimalLoading
        case .negative:
            theme.colors.colorActionNegativeEnabled
        }
    }

    private var disbledToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.buttonColorBgDefaultDisabledMono : theme.buttonColorBgDefaultDisabled
        case .strong:
            onColoredSurface ? theme.buttonColorBgStrongDisabledMono : theme.colors.colorActionDisabled
        case .minimal:
            onColoredSurface ? theme.buttonColorBgMinimalDisabledMono : theme.buttonColorBgMinimalDisabled
        case .negative:
            theme.colors.colorActionDisabled
        }
    }
}
