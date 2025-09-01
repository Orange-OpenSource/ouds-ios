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
    let interactionState: TextInputInteractionState
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsRoundedTextInput) private var rounded

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
                    .frame(height: size)
                    .overlay(defaultColor.color(for: colorScheme))
            }
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        case .alternative where status == .readOnly:
            content
        case .alternative:
            content
                .oudsBorder(style: theme.borders.borderStyleDefault,
                            width: size,
                            radius: cornerRadius,
                            color: alternativeColor)
        }
    }

    // MARK: - Helper

    private var cornerRadius: BorderRadiusSemanticToken {
        rounded ? theme.textInput.textInputBorderRadiusRounded : theme.textInput.textInputBorderRadiusDefault
    }

    private var size: BorderWidthSemanticToken {
        switch interactionState {
        case .idle:
            return theme.textInput.textInputBorderWidthDefault
        case .focused:
            return theme.textInput.textInputBorderWidthFocus
        case .hover:
            return theme.textInput.textInputBorderWidthDefault
        }
    }

    private var defaultColor: MultipleColorSemanticTokens {
        switch status {
        case .default:
            switch interactionState {
            case .idle:
                return theme.textInput.textInputColorBorderEnabled
            case .focused:
                return theme.textInput.textInputColorBorderFocus
            case .hover:
                return theme.textInput.textInputColorBorderHover
            }

        case .error:
            switch interactionState {
            case .idle:
                return theme.colors.colorActionNegativeEnabled
            case .focused:
                return theme.colors.colorActionNegativePressed
            case .hover:
                return theme.colors.colorActionNegativeHover
            }

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
            switch interactionState {
            case .idle:
                return theme.textInput.textInputColorBorderEnabled
            case .focused:
                return theme.textInput.textInputColorBorderFocus
            case .hover:
                return theme.textInput.textInputColorBorderHover
            }
        case .error:
            switch interactionState {
            case .idle:
                return theme.colors.colorActionNegativeEnabled
            case .focused:
                return theme.colors.colorActionNegativePressed
            case .hover:
                return theme.colors.colorActionNegativeHover
            }
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


