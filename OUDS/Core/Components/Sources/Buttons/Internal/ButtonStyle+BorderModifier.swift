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
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

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
                    width: minimalWidth,
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
            return theme.button.buttonBorderWidthDefault
        case .hover:
            return theme.button.buttonBorderWidthDefaultInteraction
        case .pressed:
            return theme.button.buttonBorderWidthDefaultInteraction
        case .loading:
            return theme.button.buttonBorderWidthDefaultInteraction
        case .disabled:
            return theme.button.buttonBorderWidthDefault
        }
    }

    private var defaultColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            onColoredSurface ? theme.button.buttonColorBorderDefaultEnabledMono : theme.button.buttonColorBorderDefaultEnabled
        case .hover:
            onColoredSurface ? theme.button.buttonColorBorderDefaultHoverMono : theme.button.buttonColorBorderDefaultHover
        case .pressed:
            onColoredSurface ? theme.button.buttonColorBorderDefaultPressedMono : theme.button.buttonColorBorderDefaultPressed
        case .loading:
            onColoredSurface ? theme.button.buttonColorBorderDefaultLoadingMono : theme.button.buttonColorBorderDefaultLoading
        case .disabled:
            onColoredSurface ? theme.button.buttonColorBorderDefaultDisabledMono : theme.button.buttonColorBorderDefaultDisabled
        }
    }

    // MARK: Minimal hierarchy

    private var minimalWidth: BorderWidthSemanticToken {
        switch state {
        case .enabled:
            return theme.button.buttonBorderWidthMinimal
        case .hover:
            return theme.button.buttonBorderWidthMinimalInteraction
        case .pressed:
            return theme.button.buttonBorderWidthMinimalInteraction
        case .loading:
            return theme.button.buttonBorderWidthMinimalInteraction
        case .disabled:
            return theme.button.buttonBorderWidthMinimalInteraction
        }
    }

    private var minimalColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            onColoredSurface ? theme.button.buttonColorBorderMinimalEnabledMono : theme.button.buttonColorBorderMinimalEnabled
        case .hover:
            onColoredSurface ? theme.button.buttonColorBorderMinimalHoverMono : theme.button.buttonColorBorderMinimalHover
        case .pressed:
            onColoredSurface ? theme.button.buttonColorBorderMinimalPressedMono : theme.button.buttonColorBorderMinimalPressed
        case .loading:
            onColoredSurface ? theme.button.buttonColorBorderMinimalLoadingMono : theme.button.buttonColorBorderMinimalLoading
        case .disabled:
            onColoredSurface ? theme.button.buttonColorBorderMinimalDisabledMono : theme.button.buttonColorBorderMinimalDisabled
        }
    }

    // MARK: Strong hierarchy

    private var strongColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            theme.button.buttonColorBorderStrongEnabledMono
        case .hover:
            theme.button.buttonColorBorderStrongHoverMono
        case .pressed:
            theme.button.buttonColorBorderStrongPressedMono
        case .loading:
            theme.button.buttonColorBorderStrongLoadingMono
        case .disabled:
            theme.button.buttonColorBorderStrongDisabledMono
        }
    }
}
