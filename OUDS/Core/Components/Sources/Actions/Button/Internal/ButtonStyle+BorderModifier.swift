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

import OUDSThemesContract
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
                    style: theme.borders.styleDefault,
                    width: defaultWidth,
                    radius: radius,
                    color: defaultColor)
        case .strong:
            if onColoredSurface {
                content
                    .oudsBorder(
                        style: theme.borders.styleDefault,
                        width: defaultWidth,
                        radius: radius,
                        color: strongColor)
            } else {
                content.clipShape(RoundedRectangle(cornerRadius: radius))
            }
        case .brand:
            content.clipShape(RoundedRectangle(cornerRadius: radius))
        case .minimal, .negative:
            content.clipShape(RoundedRectangle(cornerRadius: radius))
        }
    }

    // MARK: Radius

    private var radius: BorderRadiusSemanticToken {
        theme.tuning.hasRoundedButtons ? theme.button.borderRadiusRounded : theme.button.borderRadiusDefault
    }

    // MARK: Default appearance

    private var defaultWidth: BorderWidthSemanticToken {
        switch state {
        case .enabled:
            theme.button.borderWidthDefault
        case .hover:
            theme.button.borderWidthDefaultInteraction
        case .pressed:
            theme.button.borderWidthDefaultInteraction
        case .loading:
            theme.button.borderWidthDefaultInteraction
        case .disabled:
            theme.button.borderWidthDefault
        }
    }

    private var defaultColor: MultipleColorSemanticToken {
        switch state {
        case .enabled:
            useMonochrome ? theme.button.monoColorBorderDefaultEnabled : theme.button.colorBorderDefaultEnabled
        case .hover:
            useMonochrome ? theme.button.monoColorBorderDefaultHover : theme.button.colorBorderDefaultHover
        case .pressed:
            useMonochrome ? theme.button.monoColorBorderDefaultPressed : theme.button.colorBorderDefaultPressed
        case .loading:
            if colorSchemeContrast == .increased, colorScheme == .light {
                theme.colors.contentDefault
            } else {
                useMonochrome ? theme.button.monoColorBorderDefaultLoading : theme.button.colorBorderDefaultLoading
            }
        case .disabled:
            useMonochrome ? theme.button.monoColorBorderDefaultDisabled : theme.button.colorBorderDefaultDisabled
        }
    }

    // MARK: Strong appearance

    private var strongColor: MultipleColorSemanticToken {
        switch state {
        case .enabled:
            theme.button.monoColorBorderDefaultEnabled
        case .hover:
            theme.button.monoColorBorderDefaultHover
        case .pressed:
            theme.button.monoColorBorderDefaultPressed
        case .loading:
            theme.button.monoColorBorderDefaultLoading
        case .disabled:
            theme.button.monoColorBorderDefaultDisabled
        }
    }
}
