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
    let state: InternalButtonState

    // MARK: Body

    func body(content: Content) -> some View {
        switch hierarchy {
        case .default:
            content
                .oudsBorder(
                    style: theme.borders.borderStyleDefault,
                    width: defaultWidth,
                    radius: theme.buttonBorderRadius,
                    color: defaultColor)
        case .strong:
            if onColoredSurface {
                content
                    .oudsBorder(
                        style: theme.borders.borderStyleDefault,
                        width: defaultWidth,
                        radius: theme.buttonBorderRadius,
                        color: strongColor)
            } else {
                content
            }
        case .minimal:
            content
                .oudsBorder(
                    style: theme.borders.borderStyleDefault,
                    width: minimalWidth,
                    radius: theme.buttonBorderRadius,
                    color: minimalColor)
        case .negative:
            content
        }
    }

    // MARK: Private helpers

    // MARK: Default hierarchy
    private var defaultWidth: BorderWidthSemanticToken {
        switch state {
        case .enabled:
            return theme.buttonBorderWidthDefault
        case .hover:
            return theme.buttonBorderWidthDefaultInteraction
        case .pressed:
            return theme.buttonBorderWidthDefaultInteraction
        case .loading:
            return theme.buttonBorderWidthDefaultInteraction
        case .disabled:
            return theme.buttonBorderWidthDefault
        }
    }

    private var defaultColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            onColoredSurface ? theme.buttonColorBorderDefaultEnabledMono : theme.buttonColorBorderDefaultEnabled
        case .hover:
            onColoredSurface ? theme.buttonColorBorderDefaultHoverMono : theme.buttonColorBorderDefaultHover
        case .pressed:
            onColoredSurface ? theme.buttonColorBorderDefaultPressedMono : theme.buttonColorBorderDefaultPressed
        case .loading:
            onColoredSurface ? theme.buttonColorBorderDefaultLoadingMono : theme.buttonColorBorderDefaultLoading
        case .disabled:
            onColoredSurface ? theme.buttonColorBorderDefaultDisabledMono : theme.buttonColorBorderDefaultDisabled
        }
    }

    // MARK: Minimal hierarchy
    private var minimalWidth: BorderWidthSemanticToken {
        switch state {
        case .enabled:
            return theme.buttonBorderWidthMinimal
        case .hover:
            return theme.buttonBorderWidthMinimalInteraction
        case .pressed:
            return theme.buttonBorderWidthMinimalInteraction
        case .loading:
            return theme.buttonBorderWidthMinimalInteraction
        case .disabled:
            return theme.buttonBorderWidthMinimalInteraction
        }
    }

    private var minimalColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            onColoredSurface ? theme.buttonColorBorderMinimalEnabledMono : theme.buttonColorBorderMinimalEnabled
        case .hover:
            onColoredSurface ? theme.buttonColorBorderMinimalHoverMono : theme.buttonColorBorderMinimalHover
        case .pressed:
            onColoredSurface ? theme.buttonColorBorderMinimalPressedMono : theme.buttonColorBorderMinimalPressed
        case .loading:
            onColoredSurface ? theme.buttonColorBorderMinimalLoadingMono : theme.buttonColorBorderMinimalLoading
        case .disabled:
            onColoredSurface ? theme.buttonColorBorderMinimalDisabledMono : theme.buttonColorBorderMinimalDisabled
        }
    }

    // MARK: Strong hierarchy
    private var strongColor: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            theme.buttonColorBorderStrongEnabledMono
        case .hover:
            theme.buttonColorBorderStrongHoverMono
        case .pressed:
            theme.buttonColorBorderStrongPressedMono
        case .loading:
            theme.buttonColorBorderStrongLoadingMono
        case .disabled:
            theme.buttonColorBorderStrongDisabledMono
        }
    }
}
