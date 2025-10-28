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

/// Used to apply the right background color associated to the appearance and style
struct ButtonBackgroundModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.oudsUseMonochrome) private var useMonochrome

    // MARK: Stored Properties

    let appearance: OUDSButton.Appearance
    let state: ButtonInternalState

    // MARK: Body

    func body(content: Content) -> some View {
        if let appliedColor {
            content.oudsBackground(appliedColor)
        } else {
            content
        }
    }

    // MARK: Private helpers

    private var appliedColor: MultipleColorSemanticTokens? {
        switch state {
        case .enabled:
            enabledColor
        case .hover:
            hoverColor
        case .pressed:
            pressedColor
        case .loading:
            loadingColor
        case .disabled:
            disabledColor
        }
    }

    private var enabledColor: MultipleColorSemanticTokens? {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.buttonMonoColorBgDefaultEnabled : theme.button.buttonColorBgDefaultEnabled
        case .strong:
            useMonochrome ? theme.button.buttonMonoColorBgStrongEnabled : theme.colors.actionEnabled
        case .brand:
            theme.button.buttonColorBgBrandEnabled
        case .minimal:
            nil
        case .negative:
            theme.colors.actionNegativeEnabled
        }
    }

    private var hoverColor: MultipleColorSemanticTokens {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.buttonMonoColorBgDefaultHover : theme.button.buttonColorBgDefaultHover
        case .strong:
            useMonochrome ? theme.button.buttonMonoColorBgStrongHover : theme.colors.actionHover
        case .brand:
            useMonochrome ? theme.button.buttonMonoColorBgStrongHover : theme.colors.actionHover
        case .minimal:
            useMonochrome ? theme.button.buttonMonoColorBgMinimalHover : theme.button.buttonColorBgMinimalHover
        case .negative:
            theme.colors.actionNegativeHover
        }
    }

    private var pressedColor: MultipleColorSemanticTokens {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.buttonMonoColorBgDefaultPressed : theme.button.buttonColorBgDefaultPressed
        case .strong:
            useMonochrome ? theme.button.buttonMonoColorBgStrongPressed : theme.colors.actionPressed
        case .brand:
            useMonochrome ? theme.button.buttonMonoColorBgStrongPressed : theme.colors.actionPressed
        case .minimal:
            useMonochrome ? theme.button.buttonMonoColorBgMinimalPressed : theme.button.buttonColorBgMinimalPressed
        case .negative:
            theme.colors.actionNegativePressed
        }
    }

    private var loadingColor: MultipleColorSemanticTokens? {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.buttonMonoColorBgDefaultLoading : theme.button.buttonColorBgDefaultLoading
        case .strong:
            useMonochrome ? theme.button.buttonMonoColorBgStrongLoading : theme.colors.actionLoading
        case .brand:
            useMonochrome ? theme.button.buttonMonoColorBgStrongLoading : theme.colors.actionLoading
        case .minimal:
            nil
        case .negative:
            theme.colors.actionNegativeLoading
        }
    }

    private var disabledColor: MultipleColorSemanticTokens? {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.buttonMonoColorBgDefaultDisabled : theme.button.buttonColorBgDefaultDisabled
        case .strong:
            useMonochrome ? theme.button.buttonMonoColorBgStrongDisabled : theme.colors.actionDisabled
        case .brand:
            useMonochrome ? theme.button.buttonMonoColorBgStrongDisabled : theme.colors.actionDisabled
        case .minimal:
            nil
        case .negative:
            theme.colors.actionDisabled
        }
    }
}
