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

struct TextAreaInputText: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let status: OUDSTextArea.Status
    /// Line height measured by the parent `TextAreaContainer` to avoid re-mounting `TextEditor`.
    let lineHeight: CGFloat

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    var body: some View {
        ZStack(alignment: .topLeading) {
            // Placeholder overlay shown when the text binding is empty
            if text.wrappedValue.isEmpty {
                Text(label)
                    .labelDefaultLarge(theme)
                    .foregroundStyle(placeholderColor)
                    .allowsHitTesting(false)
                    .accessibilityHidden(true)
            }

            // Native TextEditor.
            // - Internal ~8 pt padding is negated so the parent container controls spacing.
            // - minHeight = 3 lines applied directly on TextEditor so it starts at the right size.
            // - maxHeight is applied on the ZStack (not on TextEditor) so that TextEditor's internal
            //   scroll activates naturally once the content exceeds 10 lines.
            // - lineHeight is owned by the parent to avoid re-mounting TextEditor on measurement changes.
            rawTextEditor
                .labelDefaultLarge(theme)
                .foregroundColor(inputTextColor)
                .tint(cursorColor.color(for: colorScheme))
                .background(Color.clear)
                .padding(-8)
                .frame(minHeight: lineHeight * CGFloat(OUDSTextArea.minLines))
        }
        .frame(maxHeight: lineHeight * CGFloat(OUDSTextArea.maxLines))
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
        case .enabled, .error, .readOnly, .loading:
            theme.colors.contentMuted
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
        case .enabled, .error, .readOnly, .loading:
            theme.colors.contentDefault
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
#endif
