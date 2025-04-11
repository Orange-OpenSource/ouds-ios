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
    @Environment(\.oudsUseMonochrome) private var useMonochrome

    // MARK: Stored Properties

    let hierarchy: OUDSButton.Hierarchy
    let state: ButtonInternalState

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsBackground(appliedColor)
    }

    // MARK: Private helpers

    private var appliedColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            return enabledColor
        case .hover:
            return hoverColor
        case .pressed:
            return pressedColor
        case .loading:
            return loadingColor
        case .disabled:
            return disabledColor
        }
    }

    private var enabledColor: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            useMonochrome ? theme.button.buttonColorBgDefaultEnabledMono : theme.button.buttonColorBgDefaultEnabled
        case .strong:
            useMonochrome ? theme.button.buttonColorBgStrongEnabledMono : theme.colors.colorActionEnabled
        case .minimal:
            useMonochrome ? theme.button.buttonColorBgMinimalEnabledMono : theme.button.buttonColorBgMinimalEnabled
        case .negative:
            theme.colors.colorActionNegativeEnabled
        }
    }

    private var hoverColor: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            useMonochrome ? theme.button.buttonColorBgDefaultHoverMono : theme.button.buttonColorBgDefaultHover
        case .strong:
            useMonochrome ? theme.button.buttonColorBgStrongHoverMono : theme.colors.colorActionHover
        case .minimal:
            useMonochrome ? theme.button.buttonColorBgMinimalHoverMono : theme.button.buttonColorBgMinimalHover
        case .negative:
            theme.colors.colorActionNegativeHover
        }
    }

    private var pressedColor: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            useMonochrome ? theme.button.buttonColorBgDefaultPressedMono : theme.button.buttonColorBgDefaultPressed
        case .strong:
            useMonochrome ? theme.button.buttonColorBgStrongPressedMono : theme.colors.colorActionPressed
        case .minimal:
            useMonochrome ? theme.button.buttonColorBgMinimalPressedMono : theme.button.buttonColorBgMinimalPressed
        case .negative:
            theme.colors.colorActionNegativePressed
        }
    }

    private var loadingColor: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            useMonochrome ? theme.button.buttonColorBgDefaultLoadingMono : theme.button.buttonColorBgDefaultLoading
        case .strong:
            useMonochrome ? theme.button.buttonColorBgStrongLoadingMono : theme.colors.colorActionLoading
        case .minimal:
            useMonochrome ? theme.button.buttonColorBgMinimalLoadingMono : theme.button.buttonColorBgMinimalLoading
        case .negative:
            theme.colors.colorActionNegativeLoading
        }
    }

    private var disabledColor: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            useMonochrome ? theme.button.buttonColorBgDefaultDisabledMono : theme.button.buttonColorBgDefaultDisabled
        case .strong:
            useMonochrome ? theme.button.buttonColorBgStrongDisabledMono : theme.colors.colorActionDisabled
        case .minimal:
            useMonochrome ? theme.button.buttonColorBgMinimalDisabledMono : theme.button.buttonColorBgMinimalDisabled
        case .negative:
            theme.colors.colorActionDisabled
        }
    }
}
