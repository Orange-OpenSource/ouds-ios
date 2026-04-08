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

    /// Height of a single line of body text, measured from a hidden reference view.
    @State private var lineHeight: CGFloat = 20

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    var body: some View {
        ZStack(alignment: .topLeading) {
            // Hidden single-line text used to measure the current line height,
            // so min/max heights stay correct across Dynamic Type sizes.
            Text("A")
                .labelDefaultLarge(theme)
                .lineLimit(1)
                .fixedSize()
                .hidden()
                .background(
                    GeometryReader { geo in
                        Color.clear.preference(key: LineHeightPreferenceKey.self,
                                               value: geo.size.height)
                    })
                .onPreferenceChange(LineHeightPreferenceKey.self) { lineHeight = $0 }

            // Placeholder overlay shown when the text binding is empty.
            if text.wrappedValue.isEmpty {
                Text(label)
                    .labelDefaultLarge(theme)
                    .foregroundStyle(placeholderColor)
                    .allowsHitTesting(false)
                    .accessibilityHidden(true)
            }

            // Native TextEditor.
            // - Internal ~8 pt padding is negated so the parent container controls spacing.
            // - min height = 3 lines, max height = 10 lines; beyond 10 lines the editor scrolls.
            rawTextEditor
                .labelDefaultLarge(theme)
                .foregroundColor(inputTextColor)
                .tint(cursorColor.color(for: colorScheme))
                .background(Color.clear)
                .padding(-8)
                .frame(minHeight: lineHeight * CGFloat(OUDSTextArea.minLines),
                       maxHeight: lineHeight * CGFloat(OUDSTextArea.maxLines))
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
        case .enabled, .error, .readOnly:
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
        case .enabled, .error, .readOnly:
            theme.colors.contentDefault
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}

// MARK: - Preference key

private struct LineHeightPreferenceKey: PreferenceKey {

    static let defaultValue: CGFloat = 20

    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
#endif
