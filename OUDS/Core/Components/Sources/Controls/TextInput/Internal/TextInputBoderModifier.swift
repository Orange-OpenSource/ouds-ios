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

struct TextInputBoderModifier: ViewModifier {

    // MARK: - Stored properties

    let style: OUDSTextInput.Style
    let status: OUDSTextInput.Status
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsRoundedTextInput) private var rounded
    @Environment(\.isFocused) private var focused
    @State private var hover = false

    // MARK: - Body

    func body(content: Content) -> some View {
        switch style {
        case .default where status == .readOnly:
            content
                .oudsBorder(style: theme.borders.borderStyleDefault,
                            width: theme.textInput.textInputBorderWidthDefault,
                            radius: cornerRadius,
                            color: theme.colors.colorBorderMuted)
        case .default:
            ZStack(alignment: .bottom) {
                content
                Divider()
                    .frame(height: width)
                    .overlay(defaultColor.color(for: colorScheme))
            }
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        case .alternative where status == .readOnly:
            content
        case .alternative:
            content
                .oudsBorder(style: theme.borders.borderStyleDefault,
                            width: width,
                            radius: cornerRadius,
                            color: alternativeColor)
        }
    }

    // MARK: - Helper

    private var cornerRadius: BorderRadiusSemanticToken {
        rounded ? theme.textInput.textInputBorderRadiusRounded : theme.textInput.textInputBorderRadiusDefault
    }

    private var width: BorderWidthSemanticToken {
        if focused {
                return theme.textInput.textInputBorderWidthFocus
        }

        return theme.textInput.textInputBorderWidthDefault
    }

    private var defaultColor: MultipleColorSemanticTokens {
        switch status {
        case .default:
            if focused {
                return theme.textInput.textInputColorBorderFocus
            }
            if hover {
                return theme.textInput.textInputColorBorderHover
            }
            return theme.textInput.textInputColorBorderEnabled
        case .error:
            if focused {
                return theme.colors.colorActionNegativePressed
            }
            if hover {
                return theme.colors.colorActionNegativeHover
            }
            return theme.colors.colorActionNegativeEnabled
        case .loading:
            return theme.textInput.textInputColorBorderLoading
        case .readOnly:
            return theme.colors.colorBorderMuted
        case .disbaled:
            return theme.colors.colorActionDisabled
        }
    }

    private var alternativeColor: MultipleColorSemanticTokens {
        switch status {
        case .default:
            if focused {
                return theme.textInput.textInputColorBorderFocus
            }
            if hover {
                return theme.textInput.textInputColorBorderHover
            }
            return theme.textInput.textInputColorBorderEnabled
        case .error:
            if focused {
                return theme.colors.colorActionNegativeEnabled
            }
            if hover {
                return theme.colors.colorActionNegativeHover
            }
            return theme.colors.colorActionNegativePressed
        case .loading:
            return theme.textInput.textInputColorBorderLoading
        case .readOnly:
            // should not appear
            return theme.colors.colorActionDisabled
        case .disbaled:
            return theme.colors.colorActionDisabled
        }
    }
}


