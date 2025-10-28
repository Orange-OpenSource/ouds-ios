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

struct TextInputBorderModifier: ViewModifier {

    // MARK: - Properties

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
                    .oudsBorder(style: theme.borders.styeDefault,
                                width: size,
                                radius: cornerRadius,
                                color: outlinedColor)
            }
        } else {
            if status == .readOnly {
                content
                    .oudsBorder(style: theme.borders.styeDefault,
                                width: theme.textInput.textInputBorderWidthDefault,
                                radius: cornerRadius,
                                color: theme.colors.borderMuted)
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
        theme.tuning.hasRoundedTextInputs ? theme.textInput.textInputBorderRadiusRounded : theme.textInput.textInputBorderRadiusDefault
    }

    private var size: BorderWidthSemanticToken {
        switch interactionState {
        case .idle:
            theme.textInput.textInputBorderWidthDefault
        case .focused:
            theme.textInput.textInputBorderWidthFocus
        case .hover:
            theme.textInput.textInputBorderWidthDefault
        }
    }

    private var defaultColor: MultipleColorSemanticTokens {
        switch status {
        case .enabled:
            switch interactionState {
            case .idle:
                theme.textInput.textInputColorBorderEnabled
            case .focused:
                theme.textInput.textInputColorBorderFocus
            case .hover:
                theme.textInput.textInputColorBorderHover
            }

        case .error:
            switch interactionState {
            case .idle:
                theme.colors.actionNegativeEnabled
            case .focused:
                theme.colors.actionNegativePressed
            case .hover:
                theme.colors.actionNegativeHover
            }

        case .loading:
            theme.textInput.textInputColorBorderLoading

        case .readOnly:
            theme.colors.borderMuted

        case .disabled:
            theme.colors.actionDisabled
        }
    }

    private var outlinedColor: MultipleColorSemanticTokens {
        switch status {
        case .enabled:
            switch interactionState {
            case .idle:
                theme.textInput.textInputColorBorderEnabled
            case .focused:
                theme.textInput.textInputColorBorderFocus
            case .hover:
                theme.textInput.textInputColorBorderHover
            }
        case .error:
            switch interactionState {
            case .idle:
                theme.colors.actionNegativeEnabled
            case .focused:
                theme.colors.actionNegativePressed
            case .hover:
                theme.colors.actionNegativeHover
            }
        case .loading:
            theme.textInput.textInputColorBorderLoading
        case .readOnly:
            theme.colors.actionDisabled // Should not appear
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
