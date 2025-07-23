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

/// Used to apply a border with color, width and radius associated to the hierarchy
struct ButtonBorderModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.colorSchemeContrast) private var colorSchemeContrast

    // MARK: Stored Properties

    let hierarchy: OUDSButton.Hierarchy
    let state: ButtonInternalState

    // MARK: Body

    func body(content: Content) -> some View {
        switch hierarchy {
        case .default:
            content
                .oudsBorder(
                    style: theme.borders.borderStyleDefault,
                    width: defaultWidth,
                    radius: theme.button.buttonBorderRadius,
                    color: defaultColor)
        case .strong:
            if onColoredSurface {
                content
                    .oudsBorder(
                        style: theme.borders.borderStyleDefault,
                        width: defaultWidth,
                        radius: theme.button.buttonBorderRadius,
                        color: strongColor)
            } else {
                content
            }
        case .minimal:
            content
                .oudsBorder(
                    style: theme.borders.borderStyleDefault,
                    width: defaultWidth,
                    radius: theme.button.buttonBorderRadius,
                    color: minimalColor)
        case .negative:
            content
        }
    }

    // MARK: Default hierarchy

    private var defaultWidth: BorderWidthSemanticToken {
        switch state {
        case .enabled:
            theme.button.buttonBorderWidthDefault
        case .hover:
            theme.button.buttonBorderWidthDefaultInteraction
        case .pressed:
            theme.button.buttonBorderWidthDefaultInteraction
        case .loading:
            theme.button.buttonBorderWidthDefaultInteraction
        case .disabled:
            theme.button.buttonBorderWidthDefault
        }
    }

    private var defaultColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            useMonochrome ? theme.button.buttonMonoColorBorderDefaultEnabled : theme.button.buttonColorBorderDefaultEnabled
        case .hover:
            useMonochrome ? theme.button.buttonMonoColorBorderDefaultHover : theme.button.buttonColorBorderDefaultHover
        case .pressed:
            useMonochrome ? theme.button.buttonMonoColorBorderDefaultPressed : theme.button.buttonColorBorderDefaultPressed
        case .loading:
            if colorSchemeContrast == .increased, colorScheme == .light {
                theme.colors.colorContentDefault
            } else {
                useMonochrome ? theme.button.buttonMonoColorBorderDefaultLoading : theme.button.buttonColorBorderDefaultLoading
            }
        case .disabled:
            useMonochrome ? theme.button.buttonMonoColorBorderDefaultDisabled : theme.button.buttonColorBorderDefaultDisabled
        }
    }

    // MARK: Minimal hierarchy

    private var minimalColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            useMonochrome ? theme.button.buttonMonoColorBorderMinimalEnabled : theme.button.buttonColorBorderDefaultEnabled
        case .hover:
            useMonochrome ? theme.button.buttonMonoColorBorderMinimalHover : theme.button.buttonColorBorderDefaultHover
        case .pressed:
            useMonochrome ? theme.button.buttonMonoColorBorderMinimalPressed : theme.button.buttonColorBorderDefaultPressed
        case .loading:
            useMonochrome ? theme.button.buttonMonoColorBorderMinimalLoading : theme.button.buttonColorBorderDefaultLoading
        case .disabled:
            useMonochrome ? theme.button.buttonMonoColorBorderMinimalDisabled : theme.button.buttonColorBorderDefaultDisabled
        }
    }

    // MARK: Strong hierarchy

    private var strongColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            theme.button.buttonMonoColorBorderStrongEnabled
        case .hover:
            theme.button.buttonMonoColorBorderStrongHover
        case .pressed:
            theme.button.buttonMonoColorBorderStrongPressed
        case .loading:
            theme.button.buttonMonoColorBorderStrongLoading
        case .disabled:
            theme.button.buttonMonoColorBorderStrongDisabled
        }
    }
}
