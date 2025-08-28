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
    let isError: Bool
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsRoundedTextInput) private var rounded
    @Environment(\.isEnabled) private var enabled
    @Environment(\.isFocused) private var focused
    @State private var hover = false

    // MARK: - Body

    func body(content: Content) -> some View {
        switch style {
        case .default:
            ZStack(alignment: .bottom) {
                content
                Divider()
                    .frame(height: theme.textInput.textInputBorderWidthDefault)
                    .overlay(color.color(for: colorScheme))
            }
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        case .alternative:
            content
                .oudsBorder(style: theme.borders.borderStyleDefault,
                            width: theme.textInput.textInputBorderWidthDefault,
                            radius: cornerRadius,
                            color: color)
        }
    }

    // MARK: - Helper

    private var cornerRadius: BorderRadiusSemanticToken {
        rounded ? theme.textInput.textInputBorderRadiusRounded : theme.textInput.textInputBorderRadiusDefault
    }

    private var color: MultipleColorSemanticTokens {
        if hover {
            return isError ? theme.colors.colorActionNegativeHover : theme.textInput.textInputColorBorderHover
        }

        if focused {
            return isError ? theme.colors.colorActionNegativeFocus : theme.textInput.textInputColorBorderFocus
        }

        return isError ? theme.colors.colorActionNegativeEnabled : theme.textInput.textInputColorBorderEnabled
    }
}


