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
        Group {
            if configuration.isPressed {
                configuration.label
                    .modifier(ButtonBorderModifier(hierarchy: hierarchy, isPressed: configuration.isPressed))
                    .foregroundStyle(pressedForegroundStyle.color(for: colorScheme))
                    .background(pressedBackgroundStyle.color(for: colorScheme))
            } else {
                configuration.label
                    .modifier(ButtonBorderModifier(hierarchy: hierarchy, isPressed: configuration.isPressed))
                    .foregroundStyle(foregroundStyle.color(for: colorScheme))
                    .background(backgroundStyle.color(for: colorScheme))
            }
        }
    }

    // MARK: Private helpers
    private var pressedForegroundStyle: MultipleColorSemanticTokens {
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

    private var pressedBackgroundStyle: MultipleColorSemanticTokens {
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

    private var foregroundStyle: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            if isEnable {
                theme.buttonColorContentDefaultEnabled
            } else {
                theme.buttonColorContentDefaultDisabled
            }
        case .strong:
            if isEnable {
                theme.buttonColorBgDefaultEnabled // colorContentOnActionEnabled
            } else {
                theme.colorContentOnActionDisabled
            }
        case .minimal:
            if isEnable {
                theme.buttonColorContentMinimalEnabled
            } else {
                theme.buttonColorContentMinimalDisabled
            }
        case .negative:
            if isEnable {
                theme.colorContentOnActionDisabled // colorContentOnActionNegative
            } else {
                theme.colorContentOnActionDisabled
            }
        }
    }

    private var backgroundStyle: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            if isEnable {
                theme.buttonColorBgDefaultEnabled
            } else {
                theme.buttonColorBgDefaultDisabled
            }
        case .strong:
            if isEnable {
                theme.colorActionDisabled // TODO colorActionEnabled
            } else {
                theme.colorActionDisabled
            }
        case .minimal:
            if isEnable {
                theme.buttonColorBgMinimalEnabled
            } else {
                theme.buttonColorBgMinimalDisabled
            }
        case .negative:
            if isEnable {
                theme.colorActionNegativeEnabled
            } else {
                theme.colorActionDisabled
            }
        }
    }
}

private struct ButtonBorderModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnable

    let hierarchy: OUDSButtonStyle.Hierarchy
    let isPressed: Bool

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
         if isPressed {
             return theme.buttonBorderWidthDefaultInteraction
         } else {
             return isEnable ? theme.buttonBorderWidthDefault : theme.buttonBorderWidthDefault
         }
     }

    private var defaultColor: MultipleColorSemanticTokens {
        if isPressed {
            return theme.buttonColorBorderDefaultPressed
        } else {
            return isEnable ? theme.buttonColorBorderDefaultEnabled : theme.buttonColorBorderDefaultDisabled
        }
    }

    // MARK: Minimal
    private var minimalWidth: BorderWidthSemanticToken {
        if isPressed {
            return theme.buttonBorderWidthMinimal
        } else {
            return isEnable ? theme.buttonBorderWidthMinimalInteraction : theme.buttonBorderWidthMinimalInteraction
        }
    }

    private var minimalColor: MultipleColorSemanticTokens {
         if isPressed {
             return theme.buttonColorBorderMinimalPressed
         } else {
             return isEnable ? theme.buttonColorBorderMinimalEnabled : theme.buttonColorBorderMinimalDisabled
         }
     }
}
