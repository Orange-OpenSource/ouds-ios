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
import SwiftUI
#if canImport(UIKit)
import UIKit
#endif

struct TextAreaContainer: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholder: String?
    let isOverLimit: Bool
    let excessCount: Int
    let status: OUDSTextArea.Status
    let isOutlined: Bool
    let accessibilityHint: String?

    @State private var hover: Bool = false
    @FocusState private var focused: Bool

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    /// Observed so the view re-renders when the user changes Dynamic Type size.
    @Environment(\.sizeCategory) private var sizeCategory

    // MARK: - Body

    // swiftlint:disable accessibility_trait_for_button
    // Not a button; a11y trait for text editor defined elsewhere
    var body: some View {
        HStack(alignment: .top, spacing: theme.textInput.spaceColumnGapDefault) {
            // Main content: label + text editor
            VStack(alignment: .leading, spacing: theme.textInput.spaceRowGapLabelInput) {
                // Label is always at the top in small typography — same pattern as OUDSTextInput.
                TextAreaLabelContainer(label: label,
                                       isSmallLabel: isSmallLabel,
                                       status: status,
                                       interactionState: interactionState,
                                       isOverLimit: isOverLimit)

                TextAreaInputText(label: placeholder ?? "",
                                  text: text,
                                  status: status)
                    .focused($focused)
                    .allowsHitTesting(status != .readOnly && status != .disabled)
                    .onTapGesture {
                        guard status != .readOnly, status != .disabled else { return }
                        focused = true
                    }
            }
            .frame(minHeight: theme.textArea.sizeMinHeightInput)
            .accessibilityLabel(accessibilityLabel)
            .accessibilityValue(accessibilityValue)
            .accessibilityHint(accessibilityHint ?? "")

            // Trailing indicator: error icon or loading spinner.
            // The top offset aligns the icon with the first line of the TextEditor:
            // it skips past the label (labelDefaultSmall line height) and the gap between
            // label and editor (spaceRowGapLabelInput).
            TextAreaTrailingContainer(status: status,
                                      interactionState: interactionState,
                                      isOverLimit: isOverLimit)
                .padding(.top, labelLineHeight + theme.textInput.spaceRowGapLabelInput)
        }
        .padding(.vertical, theme.textArea.spacePaddingBlock)
        .padding(.leading, theme.textInput.spacePaddingInlineDefault)
        .padding(.trailing, trailingPadding)
        .modifier(TextAreaBackgroundModifier(status: status,
                                             interactionState: interactionState,
                                             isOverLimit: isOverLimit,
                                             isOutlined: isOutlined))
        .modifier(TextAreaBorderModifier(status: status,
                                         interactionState: interactionState,
                                         isOverLimit: isOverLimit,
                                         isOutlined: isOutlined))
        #if !os(watchOS) && !os(tvOS)
        .onHover { hover = $0 }
        #endif
        // swiftlint:enable accessibility_trait_for_button
    }

    // MARK: - Helpers

    /// The rendered line height of `labelDefaultSmall` for the current Dynamic Type size and size class.
    /// Used to offset the trailing icon so it aligns with the first line of the TextEditor,
    /// skipping past the label above it.
    private var labelLineHeight: CGFloat {
        let isCompact = horizontalSizeClass == .compact || verticalSizeClass == .compact
        let token = isCompact
            ? theme.fonts.labelDefaultSmall.compact
            : theme.fonts.labelDefaultSmall.regular
        #if os(macOS)
        let family = theme.fontFamily
        let size = token.size
        let font: NSFont = {
            if let family,
               let f = NSFont(name: kApplePostScriptFontNames[orKey: PSFNMK(family, Font.Weight(weight: token.weight))], size: size)
            {
                return f
            }
            return NSFont.systemFont(ofSize: size, weight: Font.Weight(weight: token.weight).nativeFontWeight)
        }()
        return NSLayoutManager().defaultLineHeight(for: font)
        #else
        let scaledSize = UIFontMetrics.default.scaledValue(for: token.size)
        let font: UIFont = {
            if let family = theme.fontFamily,
               let f = UIFont(name: kApplePostScriptFontNames[orKey: PSFNMK(family, Font.Weight(weight: token.weight))], size: scaledSize)
            {
                return f
            }
            return UIFont.systemFont(ofSize: scaledSize, weight: Font.Weight(weight: token.weight).nativeFontWeight)
        }()
        return font.lineHeight
        #endif
    }

    private var interactionState: TextAreaInteractionState {
        TextAreaInteractionState(focused: focused, hover: hover)
    }

    private var isSmallLabel: Bool {
        !text.wrappedValue.isEmpty || placeholder?.isEmpty == false || interactionState == .focused
    }

    /// Always use the reduced trailing padding so the HStack width never changes between statuses.
    /// The trailing container always reserves the same fixed-width slot (visible or invisible).
    private var trailingPadding: CGFloat {
        theme.textInput.spacePaddingInlineTrailingAction
    }

    private var accessibilityLabel: String {
        label.isEmpty ? placeholder ?? "" : label
    }

    private var accessibilityValue: String {
        let emptyDescription = "core_textInput_empty_a11y".localized()
        let valueDescription = text.wrappedValue.isEmpty ? emptyDescription : text.wrappedValue

        let stateDescription = if isOverLimit {
            String(format: "core_textArea_charactersTooMany".localized(), excessCount)
        } else {
            switch status {
            case .disabled, .readOnly:
                "core_common_disabled_a11y".localized()
            case let .error(message):
                "core_common_onError_a11y".localized() + ": \(message)"
            case .loading:
                "core_common_loading_a11y".localized()
            case .enabled:
                ""
            }
        }

        return "\(valueDescription). \(stateDescription)"
    }
}
#endif
