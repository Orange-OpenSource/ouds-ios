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

import OUDSTokensSemantic
import SwiftUI

struct TextInputContainer: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholder: OUDSTextInput.Placeholder?
    let leadingIcon: Image?
    let flipIcon: Bool
    let trailingAction: OUDSTextInput.TrailingAction?
    let isOutlined: Bool
    let status: OUDSTextInput.Status
    @State var hover: Bool = false

    @FocusState private var focused: Bool

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapDefault) {
            HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapDefault) {
                // Leading icon container
                LeadingIconContainer(leadingIcon: leadingIcon, flip: flipIcon, status: status)

                // Text container
                VStack(alignment: .leading, spacing: theme.textInput.textInputSpaceRowGapLabelInput) {
                    // Label container
                    if showLabelInContainer {
                        LabelContainer(label: label, status: status, interactionState: interactionState)
                            .accessibilityHidden(true)
                    }

                    // Input container
                    HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapInlineText) {

                        // Prefix container
                        if let placeholder,
                           let prefix = placeholder.prefix,
                           !prefix.isEmpty, !placeholder.text.isEmpty
                        {
                            Text(prefix)
                                .typeLabelDefaultLarge(theme)
                                .oudsForegroundColor(prefixSuffixColor)
                                .accessibilityHidden(true)
                        }

                        // Input text container
                        InputText(label: textfieldLabel,
                                  text: text,
                                  labelAsPlaceholder: textfieldLabel == label,
                                  status: status,
                                  interactionState: interactionState)
                            .focused($focused, equals: true)

                        // Suffix container
                        if let placeholder,
                           let suffix = placeholder.suffix,
                           !suffix.isEmpty, !placeholder.text.isEmpty
                        {
                            Text(suffix)
                                .typeLabelDefaultLarge(theme)
                                .oudsForegroundColor(prefixSuffixColor)
                                .accessibilityHidden(true)
                        }
                    }
                }
            }

            // Trailing action container
            TrailingActionContainer(trailingAction: trailingAction, status: status, interactionState: interactionState)
        }
        .padding(.vertical, theme.textInput.textInputSpacePaddingBlockDefault)
        .padding(.leading, theme.textInput.textInputSpacePaddingInlineDefault)
        .padding(.trailing, trailingPadding)
        .frame(minHeight: theme.textInput.textInputSizeMinHeight, alignment: .leading)
        .modifier(TextInputBackgroundModifier(status: status, isOutlined: isOutlined, interactionState: interactionState))
        .modifier(TextInputBorderModifier(status: status, isOutlined: isOutlined, interactionState: interactionState))
        .onHover { hover = $0 }
    }

    // MARK: - Helpers

    private var showPlaceholder: Bool {
        focused || !text.wrappedValue.isEmpty
    }

    private var showLabelInContainer: Bool {
        !label.isEmpty && (focused || (!focused && (placeholder?.text.isEmpty == false) || !text.wrappedValue.isEmpty))
    }

    private var textfieldLabel: String {
        guard let placeholder, !placeholder.text.isEmpty else {
            return focused ? "" : label
        }
        return placeholder.text
    }

    private var trailingPadding: CGFloat {
        if trailingAction != nil || status == .error || status == .loading {
            theme.textInput.textInputSpacePaddingInlineTrailingAction
        } else {
            theme.textInput.textInputSpacePaddingInlineDefault
        }
    }

    private var prefixSuffixColor: MultipleColorSemanticTokens {
        status == .disabled ? theme.colors.colorActionDisabled : theme.colors.colorContentMuted
    }

    private var interactionState: TextInputInteractionState {
        TextInputInteractionState(focused: focused, hover: hover)
    }
}
