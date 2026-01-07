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
        let colorToApply: MultipleColorSemanticToken
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

    private var enabledColor: MultipleColorSemanticToken {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.monoColorContentDefaultEnabled : theme.button.colorContentDefaultEnabled
        case .strong:
            useMonochrome ? theme.button.monoColorContentStrongEnabled : theme.colors.contentOnActionEnabled
        case .brand:
            theme.button.colorContentBrandEnabled
        case .minimal:
            useMonochrome ? theme.button.monoColorContentMinimalEnabled : theme.button.colorContentMinimalEnabled
        case .negative:
            theme.colors.contentOnStatusNegativeEmphasized
        }
    }

    private var hoverColor: MultipleColorSemanticToken {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.monoColorContentDefaultHover : theme.button.colorContentDefaultHover
        case .strong:
            useMonochrome ? theme.button.monoColorContentStrongHover : theme.colors.contentOnActionHover
        case .brand:
            theme.button.colorContentBrandHover
        case .minimal:
            useMonochrome ? theme.button.monoColorContentMinimalHover : theme.button.colorContentMinimalHover
        case .negative:
            theme.colors.contentOnStatusNegativeEmphasized
        }
    }

    private var pressedColor: MultipleColorSemanticToken {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.monoColorContentDefaultPressed : theme.button.colorContentDefaultPressed
        case .strong:
            useMonochrome ? theme.button.monoColorContentStrongPressed : theme.colors.contentOnActionPressed
        case .brand:
            theme.button.colorContentBrandPressed
        case .minimal:
            useMonochrome ? theme.button.monoColorContentDefaultPressed : theme.button.colorContentDefaultPressed
        case .negative:
            theme.colors.contentOnStatusNegativeEmphasized
        }
    }

    private var disabledColor: MultipleColorSemanticToken {
        switch appearance {
        case .default:
            useMonochrome ? theme.button.monoColorContentDefaultDisabled : theme.button.colorContentDefaultDisabled
        case .strong:
            useMonochrome ? theme.button.monoColorContentStrongDisabled : theme.colors.contentOnActionDisabled
        case .brand:
            theme.colors.contentOnActionDisabled
        case .minimal:
            useMonochrome ? theme.button.monoColorContentMinimalDisabled : theme.button.colorContentMinimalDisabled
        case .negative:
            theme.colors.contentOnActionDisabled
        }
    }
}
