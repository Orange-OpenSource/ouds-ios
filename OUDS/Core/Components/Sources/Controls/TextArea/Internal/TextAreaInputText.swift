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
import OUDSFoundations
import OUDSTokensRaw
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
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

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
            // - .padding(.vertical, -8) cancels UITextView's 8pt top/bottom internal inset only;
            //   horizontal is left at 0 (UITextView already has no horizontal inset) so the text
            //   leading edge aligns with the label above and helper text below.
            // - minHeight = 3 lines; maxHeight on the ZStack activates TextEditor's internal scroll.
            rawTextEditor
                .labelDefaultLarge(theme)
                .foregroundColor(inputTextColor)
                .tint(cursorColor.color(for: colorScheme))
                .background(Color.clear)
                .padding(EdgeInsets(top: -8, leading: -5, bottom: -8, trailing: 0))
                .frame(minHeight: scaledLineHeight * computedMinLines)
                .frame(maxHeight: scaledLineHeight * computedMaxLines)
        }
    }

    // MARK: - Private helpers

    /// Defines the minimum number of lines for the text area
    private var computedMinLines: CGFloat {
        let tokenMinHeight = theme.textArea.sizeMinHeightInput
        let tokenLineHeight = adaptiveFontToken.lineHeight
        return tokenMinHeight / tokenLineHeight
    }

    /// Defines the maximum number of lines for the text area (before scroll)
    private var computedMaxLines: CGFloat {
        let tokenMaxHeight = theme.textArea.sizeMaxHeightInput
        let tokenLineHeight = adaptiveFontToken.lineHeight
        return tokenMaxHeight / tokenLineHeight
    }

    /// Scaled the line height
    private var scaledLineHeight: CGFloat {
        UIFontMetrics.default.scaledValue(for: adaptiveFontToken.lineHeight)
    }

    /// The font token for the current size class — mirrors `TypographyModifier.adaptiveFontToken`.
    private var adaptiveFontToken: FontCompositeSemanticToken {
        let isCompact = horizontalSizeClass == .compact || verticalSizeClass == .compact
        return isCompact
            ? theme.fonts.labelDefaultLarge.compact
            : theme.fonts.labelDefaultLarge.regular
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
