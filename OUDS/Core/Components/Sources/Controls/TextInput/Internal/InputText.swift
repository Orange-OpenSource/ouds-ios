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

#if !os(watchOS) && !os(tvOS)
import OUDSTokensSemantic
import SwiftUI

struct InputText: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let status: OUDSTextInput.Status

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.textInputAsSecureField) private var textInputAsSecureField

    // MARK: - Body

    var body: some View {
        Group {
            // Warning: For secureTextField, the native font is prefered
            // to get the right size of dots.
            if textInputAsSecureField {
                SecureField(text: text, label: textFieldLabel)
            } else {
                TextField(text: text, label: textFieldLabel)
                    .labelDefaultLarge(theme)
            }
        }
        .modifier(SecureTextFieldModifier(isSecureTextField: textInputAsSecureField))
        .multilineTextAlignment(.leading)
        .oudsForegroundColor(inputTextColor)
        .tint(cursorColor.color(for: colorScheme))
        .disabled(status == .disabled || status == .readOnly || status == .loading)
    }

    // MARK: - Helper

    private var labelColor: MultipleColorSemanticToken {
        switch status {
        case .enabled, .error, .readOnly, .loading:
            text.wrappedValue.isEmpty ? theme.colors.contentMuted : theme.colors.contentDefault
        case .disabled:
            theme.colors.actionDisabled
        }
    }

    private var cursorColor: MultipleColorSemanticToken {
        switch status {
        case .error:
            theme.colors.actionNegativePressed
        default:
            theme.colors.contentDefault
        }
    }

    private var inputTextColor: MultipleColorSemanticToken {
        switch status {
        case .enabled, .error, .loading, .readOnly:
            theme.colors.contentDefault
        case .disabled:
            theme.colors.actionDisabled
        }
    }

    private func textFieldLabel() -> some View {
        Text(label)
            .minimumScaleFactor(1.0) // Use to fix font size adaptation if long text (scroll is prefered)
            .labelDefaultLarge(theme)
            .oudsForegroundStyle(labelColor)
    }
}

// MARK: - Secure Text Field Modifier

private struct SecureTextFieldModifier: ViewModifier {

    let isSecureTextField: Bool

    func body(content: Content) -> some View {
        if isSecureTextField {
            content
                .textContentType(.password)
                .autocorrectionDisabled(true)
            #if !os(macOS)
                .textInputAutocapitalization(.never)
            #endif
        } else {
            content
        }
    }
}
#endif
