//
// Software Name: OUDSThemesContract iOS
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
                    .oudsBorder(style: theme.borders.styleDefault,
                                width: size,
                                radius: cornerRadius,
                                color: outlinedColor)
            }
        } else {
            if status == .readOnly {
                content
                    .oudsBorder(style: theme.borders.styleDefault,
                                width: theme.textInput.borderWidthDefault,
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
        theme.tuning.hasRoundedTextInputs ? theme.textInput.borderRadiusRounded : theme.textInput.borderRadiusDefault
    }

    private var size: BorderWidthSemanticToken {
        switch interactionState {
        case .idle:
            theme.textInput.borderWidthDefault
        case .focused:
            theme.textInput.borderWidthFocus
        case .hover:
            theme.textInput.borderWidthDefault
        }
    }

    private var defaultColor: MultipleColorSemanticTokens {
        switch status {
        case .enabled:
            switch interactionState {
            case .idle:
                theme.textInput.colorBorderEnabled
            case .focused:
                theme.textInput.colorBorderFocus
            case .hover:
                theme.textInput.colorBorderHover
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
            theme.textInput.colorBorderLoading

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
                theme.textInput.colorBorderEnabled
            case .focused:
                theme.textInput.colorBorderFocus
            case .hover:
                theme.textInput.colorBorderHover
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
            theme.textInput.colorBorderLoading
        case .readOnly:
            theme.colors.actionDisabled // Should not appear
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
