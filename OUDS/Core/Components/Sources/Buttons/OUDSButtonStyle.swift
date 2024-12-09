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
import OUDSTokensSemantic
import SwiftUI

public struct OUDSButtonStyle: ButtonStyle {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.isEnabled) private var isEnable

    // MARK: Stored Properties

    /// Represents the hierarchy of an OUDS button.
    public enum Hierarchy {
        case `default`, strong, minimal, negative
    }

    let hierarchy: Hierarchy

    // MARK: Initializer

    public init(hierarchy: Hierarchy) {
        self.hierarchy = hierarchy
    }

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .modifier(ButtonBorderModifier(hierarchy: hierarchy, configuration: configuration))
            .modifier(FouregroundModifier(hierarchy: hierarchy, configuration: configuration))
            .modifier(BackgroundModifier(hierarchy: hierarchy, configuration: configuration))
    }
}

private struct FouregroundModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnable
    @Environment(\.colorScheme) private var colorScheme

    let hierarchy: OUDSButtonStyle.Hierarchy
    let configuration: ButtonStyleConfiguration

    func body(content: Content) -> some View {
        content.foregroundStyle(colorToken.color(for: colorScheme))
    }

    private var colorToken: MultipleColorSemanticTokens {
        if configuration.isPressed {
            return pressedToken
        }

        if isEnable {
            return token
        }

        return disabledToken
    }

    private var pressedToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorContentDefaultEnabled
        case .strong:
            theme.buttonColorBgDefaultEnabled
        case .minimal:
            theme.buttonColorContentMinimalEnabled
        case .negative:
            theme.colorContentOnActionNegative
        }
    }

    private var token: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorContentDefaultEnabled
        case .strong:
            theme.buttonColorBgDefaultEnabled // colorContentOnActionEnabled
        case .minimal:
            theme.buttonColorContentMinimalEnabled
        case .negative:
            theme.colorContentOnActionDisabled // colorContentOnActionNegative
        }
    }
    private var disabledToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorContentDefaultDisabled
        case .strong:
            theme.colorContentOnActionDisabled
        case .minimal:
            theme.buttonColorContentMinimalDisabled
        case .negative:
            theme.colorContentOnActionDisabled
        }
    }
}

private struct BackgroundModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnable
    @Environment(\.colorScheme) private var colorScheme

    let hierarchy: OUDSButtonStyle.Hierarchy
    let configuration: ButtonStyleConfiguration

    func body(content: Content) -> some View {
        content.background(colorToken.color(for: colorScheme))
    }

    private var colorToken: MultipleColorSemanticTokens {
        if configuration.isPressed {
            return pressedToken
        }

        if isEnable {
            return token
        }

        return disbledToken
    }

    private var pressedToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorBgDefaultPressed
        case .strong:
            theme.colorActionPressed
        case .minimal:
            theme.buttonColorBgMinimalPressed
        case .negative:
            theme.colorActionNegativePressed
        }
    }

    private var token: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorBgDefaultEnabled
        case .strong:
            theme.colorActionDisabled // TODO colorActionEnabled
        case .minimal:
            theme.buttonColorBgMinimalEnabled
        case .negative:
            theme.colorActionNegativeEnabled
        }
    }

    private var disbledToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            theme.buttonColorBgDefaultDisabled
        case .strong:
            theme.colorActionDisabled
        case .minimal:
            theme.buttonColorBgMinimalDisabled
        case .negative:
            theme.colorActionDisabled
        }
    }
}

private struct ButtonBorderModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnable

    let hierarchy: OUDSButtonStyle.Hierarchy
    let configuration: ButtonStyleConfiguration

    func body(content: Content) -> some View {
        switch hierarchy {
        case .default:
            content
                .oudsBorder(
                    style: theme.borderStyleDefault,
                    width: theme.borderWidthDefault,
                    radius: theme.borderRadiusTall, // buttonBorderRadius,
                    color: defaultColor)
        case .strong:
            content
        case .minimal:
            content
                .oudsBorder(
                    style: theme.borderStyleDefault,
                    width: minimalWidth,
                    radius: theme.buttonBorderRadius,
                    color: minimalColor)
        case .negative:
            content
        }
    }

    // MARK: Default
    private var defaultWidth: BorderWidthSemanticToken {
        if configuration.isPressed {
             return theme.buttonBorderWidthDefaultInteraction
         } else {
             return isEnable ? theme.buttonBorderWidthDefault : theme.buttonBorderWidthDefault
         }
     }

    private var defaultColor: MultipleColorSemanticTokens {
        if configuration.isPressed {
            return theme.buttonColorBorderDefaultPressed
        } else {
            return isEnable ? theme.buttonColorBorderDefaultEnabled : theme.buttonColorBorderDefaultDisabled
        }
    }

    // MARK: Minimal
    private var minimalWidth: BorderWidthSemanticToken {
        if configuration.isPressed {
            return theme.buttonBorderWidthMinimal
        } else {
            return isEnable ? theme.buttonBorderWidthMinimalInteraction : theme.buttonBorderWidthMinimalInteraction
        }
    }

    private var minimalColor: MultipleColorSemanticTokens {
        if configuration.isPressed {
             return theme.buttonColorBorderMinimalPressed
         } else {
             return isEnable ? theme.buttonColorBorderMinimalEnabled : theme.buttonColorBorderMinimalDisabled
         }
     }
}
