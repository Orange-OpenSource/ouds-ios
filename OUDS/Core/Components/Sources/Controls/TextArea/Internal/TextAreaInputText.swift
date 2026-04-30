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
#if canImport(UIKit)
import UIKit
#endif

struct TextAreaInputText: View {

    // MARK: - Properties

    let placeholder: String
    let text: Binding<String>
    let status: OUDSTextArea.Status

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    var body: some View {
        ZStack(alignment: .topLeading) {
            // Placeholder shown when empty — uses the full TypographyModifier so the text
            // size and visual weight match what the user will type.
            if text.wrappedValue.isEmpty {
                Text(placeholder)
                    .labelDefaultLarge(theme)
                    .foregroundStyle(placeholderColor)
                    .allowsHitTesting(false)
                    .accessibilityHidden(true)
            }

            // Native TextEditor.
            // - .padding cancels UITextView's 8pt top/bottom inset and 5pt leading lineFragmentPadding.
            // - min/maxHeight come directly from the text area size tokens — no Dynamic Type scaling
            //   arithmetic needed, keeping the frame stable across style and status changes.
            rawTextEditor
                .labelDefaultLarge(theme)
                .foregroundColor(inputTextColor)
                .tint(cursorColor.color(for: colorScheme))
                .background(Color.clear)
                .padding(EdgeInsets(top: -8, leading: -5, bottom: -8, trailing: 0))
                .frame(minHeight: theme.textArea.sizeMinHeightInput)
                .frame(maxHeight: theme.textArea.sizeMaxHeightInput)
        }
    }

    // MARK: - Private helpers

    @ViewBuilder
    private var rawTextEditor: some View {
        let editor = TextEditor(text: status == .disabled || status == .readOnly ? .constant(text.wrappedValue) : text)
        if #available(iOS 16, macOS 13, *) {
            editor.scrollContentBackground(.hidden)
        } else {
            editor
        }
    }

    private var placeholderColor: MultipleColorSemanticToken {
        switch status {
        case .enabled, .error, .richError, .readOnly, .loading:
            theme.colors.contentMuted
        case .disabled:
            theme.colors.actionDisabled
        }
    }

    private var cursorColor: MultipleColorSemanticToken {
        switch status {
        case .error, .richError:
            theme.colors.actionNegativePressed
        default:
            theme.colors.contentDefault
        }
    }

    private var inputTextColor: MultipleColorSemanticToken {
        switch status {
        case .enabled, .error, .richError, .readOnly, .loading:
            theme.colors.contentDefault
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
#endif
