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

/// Used to apply a border with color, width and radius associated to the appearance
struct ButtonBorderModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.colorSchemeContrast) private var colorSchemeContrast

    // MARK: Stored Properties

    let appearance: OUDSButton.Appearance
    let state: ButtonInternalState

    // MARK: Body

    func body(content: Content) -> some View {
        switch appearance {
        case .default:
            content
                .oudsBorder(
                    style: theme.borders.borderStyleDefault,
                    width: defaultWidth,
                    radius: radius,
                    color: defaultColor)
        case .strong, .brand:
            if onColoredSurface {
                content
                    .oudsBorder(
                        style: theme.borders.borderStyleDefault,
                        width: defaultWidth,
                        radius: radius,
                        color: strongColor)
            } else {
                content.clipShape(RoundedRectangle(cornerRadius: radius))
            }
        case .minimal, .negative:
            content.clipShape(RoundedRectangle(cornerRadius: radius))
        }
    }

    // MARK: Radius

    private var radius: BorderRadiusSemanticToken {
        theme.tuning.hasRoundedButtons ? theme.button.buttonBorderRadiusRounded : theme.button.buttonBorderRadiusDefault
    }

    // MARK: Default appearance

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

    // MARK: Strong appearance

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
