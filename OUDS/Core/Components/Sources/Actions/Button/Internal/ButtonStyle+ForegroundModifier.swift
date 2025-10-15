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

/// Used to apply the right forground color associated to the appearance and state
struct ButtonForegroundModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @Environment(\.oudsSurfaceColor) private var surfaceColor

    // MARK: Stored Properties

    let appearance: OUDSButton.Appearance
    let state: ButtonInternalState

    // MARK: Body

    func body(content: Content) -> some View {
        content.foregroundStyle(appliedColor())
    }

    // MARK: Private helpers

    private func appliedColor() -> Color {
        let colorToApply: MultipleColorSemanticTokens
        switch state {
        case .enabled:
            colorToApply = enabledColor
        case .hover:
            colorToApply = hoverColor
        case .pressed:
            colorToApply = pressedColor
        case .loading:
            // Hide the content because it is replaced by the loading indicator.
            // However the content is needed to get the size of the button in loading state.
            return Color.clear.opacity(0)
        case .disabled:
            colorToApply = disabledColor
        }
        OUDSWCAG21Ratio.debugContrastRatio(colorToApply, surfaceColor)
        return colorToApply.color(for: colorScheme)
    }

    private var enabledColor: MultipleColorSemanticTokens {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.buttonMonoColorContentDefaultEnabled : theme.button.buttonColorContentDefaultEnabled
        case .strong:
            useMonochrome ? theme.button.buttonMonoColorContentStrongEnabled : theme.colors.colorContentOnActionEnabled
        case .brand:
            theme.button.buttonColorContentBrandEnabled
        case .minimal:
            useMonochrome ? theme.button.buttonMonoColorContentMinimalEnabled : theme.button.buttonColorContentMinimalEnabled
        case .negative:
            theme.colors.colorContentOnStatusNegativeEmphasized
        }
    }

    private var hoverColor: MultipleColorSemanticTokens {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.buttonMonoColorContentDefaultHover : theme.button.buttonColorContentDefaultHover
        case .strong, .brand:
            useMonochrome ? theme.button.buttonMonoColorContentStrongHover : theme.colors.colorContentOnActionHover
        case .minimal:
            useMonochrome ? theme.button.buttonMonoColorContentMinimalHover : theme.button.buttonColorContentMinimalHover
        case .negative:
            theme.colors.colorContentOnStatusNegativeEmphasized
        }
    }

    private var pressedColor: MultipleColorSemanticTokens {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.buttonMonoColorContentDefaultPressed : theme.button.buttonColorContentDefaultPressed
        case .strong, .brand:
            useMonochrome ? theme.button.buttonMonoColorContentStrongPressed : theme.colors.colorContentOnActionPressed
        case .minimal:
            useMonochrome ? theme.button.buttonMonoColorContentDefaultPressed : theme.button.buttonColorContentDefaultPressed
        case .negative:
            theme.colors.colorContentOnStatusNegativeEmphasized
        }
    }

    private var disabledColor: MultipleColorSemanticTokens {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.buttonMonoColorContentDefaultDisabled : theme.button.buttonColorContentDefaultDisabled
        case .strong, .brand:
            useMonochrome ? theme.button.buttonMonoColorContentStrongDisabled : theme.colors.colorContentOnActionDisabled
        case .minimal:
            useMonochrome ? theme.button.buttonMonoColorContentMinimalDisabled : theme.button.buttonColorContentMinimalDisabled
        case .negative:
            theme.colors.colorContentOnActionDisabled
        }
    }
}
