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

    let status: OUDSTextInput.Status
    let isOutlined: Bool
    let interactionState: TextInputInteractionState
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func body(content: Content) -> some View {
        if isOutlined {
            if status == .readOnly {
                content
            } else {
                content
                    .oudsBorder(style: theme.borders.borderStyleDefault,
                                width: size,
                                radius: cornerRadius,
                                color: outlinedColor)
            }
        } else {
            if status == .readOnly {
                content
                    .oudsBorder(style: theme.borders.borderStyleDefault,
                                width: theme.textInput.textInputBorderWidthDefault,
                                radius: cornerRadius,
                                color: theme.colors.colorBorderMuted)
            } else {
                ZStack(alignment: .bottomLeading) {
                    content
                    Divider()
                        .frame(height: size)
                        .overlay(defaultColor.color(for: colorScheme))
                }
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            }
        }
    }

    // MARK: - Helpers

    private var cornerRadius: BorderRadiusSemanticToken {
        theme.tuning.hasRoundedCorners ? theme.textInput.textInputBorderRadiusRounded : theme.textInput.textInputBorderRadiusDefault
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
        case .disabled:
            return theme.colors.colorActionDisabled
        }
    }

    private var outlinedColor: MultipleColorSemanticTokens {
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
        case .disabled:
            return theme.colors.colorActionDisabled
        }
    }
}


