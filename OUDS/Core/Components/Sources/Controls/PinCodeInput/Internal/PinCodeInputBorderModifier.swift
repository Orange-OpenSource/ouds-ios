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

#if !os(watchOS) && !os(macOS)
import OUDSTokensSemantic
import SwiftUI

/// `ViewModifier` to draw borders on text fields in `OUDSPinCodeInput`` component
struct PinCodeInputBorderModifier: ViewModifier {

    let isOutlined: Bool
    let isError: Bool
    let isFocused: Bool

    @Environment(\.theme) private var theme

    func body(content: Content) -> some View {
        if !isOutlined {
            content
                .overlay(
                    Rectangle()
                        .frame(height: borderWidth)
                        .oudsForegroundColor(borderColor),
                    alignment: .bottom)
        } else {
            content
                .oudsBorder(style: theme.borders.styleDefault,
                            width: borderWidth,
                            radius: theme.textInput.borderRadiusDefault,
                            color: borderColor)
        }
    }

    // MARK: - Helpers

    private var borderColor: MultipleColorSemanticToken {
        if isError {
            return theme.colors.actionNegativeEnabled
        }
        if isFocused {
            return theme.textInput.colorBorderFocus
        }
        return theme.textInput.colorBorderEnabled
    }

    private var borderWidth: BorderWidthSemanticToken {
        isFocused ? theme.textInput.borderWidthFocus : theme.textInput.borderWidthDefault
    }
}
#endif
