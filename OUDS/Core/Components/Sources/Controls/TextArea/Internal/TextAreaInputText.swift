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

    let label: String
    let text: Binding<String>
    let status: OUDSTextArea.Status

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    // MARK: - Body

    var body: some View {
        ZStack(alignment: .topLeading) {
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
            // - minHeight = 3 lines; maxHeight applied on the ZStack so TextEditor's internal
            //   scroll activates naturally once the content exceeds 10 lines.
            // - lineHeight is computed from UIFontMetrics + the theme token — no GeometryReader needed.
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

    /// The scaled line height of `labelDefaultLarge` for the current Dynamic Type size and size class.
    /// Uses `UIFontMetrics` (same as `TypographyModifier`) so the value is always in sync with the
    /// actual rendered text — no `GeometryReader` or async measurement needed.
    private var lineHeight: CGFloat {
        let isCompact = horizontalSizeClass == .compact || verticalSizeClass == .compact
        let token = isCompact
            ? theme.fonts.labelDefaultLarge.compact
            : theme.fonts.labelDefaultLarge.regular
        #if os(macOS)
        return token.lineHeight
        #else
        return UIFontMetrics.default.scaledValue(for: token.lineHeight)
        #endif
    }

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
