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

    let label: String
    let text: Binding<String>
    let status: OUDSTextArea.Status

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    /// Observed so the view re-renders when the user changes Dynamic Type size.
    @Environment(\.sizeCategory) private var sizeCategory

    // MARK: - Body

    var body: some View {
        ZStack(alignment: .topLeading) {
            // Placeholder shown when empty — uses the full TypographyModifier so the text
            // size and visual weight match what the user will type.
            if text.wrappedValue.isEmpty {
                Text(label)
                    .labelDefaultLarge(theme)
                    .foregroundStyle(placeholderColor)
                    .allowsHitTesting(false)
                    .accessibilityHidden(true)
            }

            // Native TextEditor.
            // - Uses .font(Font(adaptativeFont)) directly instead of .labelModerateLarge(theme)
            //   so that TypographyModifier's .padding(.vertical, lineSpacing/2) is NOT added —
            //   keeping the text cursor at the same vertical origin as the label and helper text.
            // - .padding(.vertical, -8) cancels UITextView's 8pt top/bottom internal inset only;
            //   horizontal is left at 0 (UITextView already has no horizontal inset) so the text
            //   leading edge aligns with the label above and helper text below.
            // - minHeight = 3 lines; maxHeight on the ZStack activates TextEditor's internal scroll.
            rawTextEditor
                .font(Font(adaptativeFont))
                .foregroundColor(inputTextColor)
                .tint(cursorColor.color(for: colorScheme))
                .background(Color.clear)
                .padding(EdgeInsets(top: -8, leading: -5, bottom: -8, trailing: 0))
                .frame(minHeight: lineHeight * computedMinLines)
        }
        .frame(maxHeight: lineHeight * computedMaxLines) // Start scrolls for the (maxLine + 1)th line
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
        return (tokenMaxHeight / tokenLineHeight) + 1
    }

    /// The actual line height UITextView uses to render each line of text.
    /// Uses UIFont.lineHeight directly — the exact value the native text engine uses —
    /// so that minHeight/maxHeight frame constraints match the real rendered line count.
    private var lineHeight: CGFloat {
        #if os(macOS)
        adaptativeFont.boundingRectForFont.height
        #else
        adaptativeFont.lineHeight
        #endif
    }

    /// The font token for the current size class — mirrors `TypographyModifier.adaptiveFontToken`.
    private var adaptiveFontToken: FontCompositeSemanticToken {
        let isCompact = horizontalSizeClass == .compact || verticalSizeClass == .compact
        return isCompact
            ? theme.fonts.labelModerateLarge.compact
            : theme.fonts.labelModerateLarge.regular
    }

    /// A native font from the token — mirrors `TypographyModifier.adaptativeFont`.
    /// Applied to the TextEditor directly so no extra vertical padding is introduced.
    private var adaptativeFont: NativeFont {
        let token = adaptiveFontToken
        #if os(macOS)
        let scaledSize = token.size
        #else
        let scaledSize = UIFontMetrics.default.scaledValue(for: token.size)
        #endif
        if let family = theme.fontFamily {
            let postScriptName = kApplePostScriptFontNames[orKey: PSFNMK(family, Font.Weight(weight: token.weight))]
            if let customFont = NativeFont(name: postScriptName, size: scaledSize) {
                return customFont
            }
        }
        return NativeFont.systemFont(ofSize: scaledSize,
                                     weight: Font.Weight(weight: token.weight).nativeFontWeight)
    }

    #if os(macOS)
    private typealias NativeFont = NSFont
    #else
    private typealias NativeFont = UIFont
    #endif

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
