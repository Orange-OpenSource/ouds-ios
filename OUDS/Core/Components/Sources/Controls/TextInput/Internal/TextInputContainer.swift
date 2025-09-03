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

    let layout: OUDSTextInput.Layout
    let label: String
    let text: Binding<String>
    let placeholder: OUDSTextInput.Placeholder?
    let leadingIcon: Image?
    let trailingAction: OUDSTextInput.TrailingAction?
    let status: OUDSTextInput.Status
    let style: OUDSTextInput.Style

    @Environment(\.theme) private var theme
    @FocusState private var focused: Bool
    @State var hover: Bool = false

    // MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapDefault) {

            // Leading icon container
            LeadingIconContainer(leadingIcon: leadingIcon, status: status)

            // Text container
            VStack(alignment: .leading, spacing: theme.textInput.textInputSpaceRowGapLabelInput) {
                // Label container
                if showPlaceholder, !label.isEmpty {
                    LabelContainer(label: label, status: status, interactionState: interactionState)
                }

                // Input container
                HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapInlineText) {

                    // Prefix container
                    if let prefix = placeholder?.prefix, !prefix.isEmpty, showPlaceholder {
                        Text(prefix)
                            .typeLabelDefaultLarge(theme)
                            .oudsForegroundColor(prefixSuffixColor)
                    }

                    // Input text container
                    Inputtext(label: textfieldPlaceholder,
                              text: text,
                              labelAsPlaceholder: showPlaceholder,
                              status: status,
                              interactionState: interactionState)
                        .focused($focused, equals: true)

                    // Sufix container
                    if let suffix = placeholder?.suffix, !suffix.isEmpty, showPlaceholder {
                        Text(suffix)
                            .oudsForegroundColor(prefixSuffixColor)
                    }
                }
            }

            // Trailing action container
            TrailingActionContainer(trailingAction: trailingAction, status: status, interactionState: interactionState)
        }
        .padding(.vertical, theme.textInput.textInputSpacePaddingBlockDefault)
        .padding(.leading, theme.textInput.textInputSpacePaddingInlineDefault)
        .padding(.trailing, trailing)
        .frame(minHeight: theme.textInput.textInputSizeMinHeight, alignment: .center)
        .modifier(TextInputBackgroundModifier(style: style, status: status, interactionState: interactionState))
        .modifier(TextInputBoderModifier(style: style, status: status, interactionState: interactionState))
        .onHover{ self.hover = $0 }
    }

    // MARK: - Helper

    private var showPlaceholder: Bool {
        focused || !text.wrappedValue.isEmpty || layout == .placeholder
    }

    private var textfieldPlaceholder: String {
        switch layout {
        case .label:
            focused ? "" : label
        case .placeholder:
            placeholder?.text ?? ""
        }
    }

    private var trailing: CGFloat {
        if trailingAction != nil || status == .error {
            return theme.textInput.textInputSpacePaddingInlineTrailingAction
        } else {
            return theme.textInput.textInputSpacePaddingInlineDefault
        }
    }

    private var prefixSuffixColor: MultipleColorSemanticTokens {
        status == .disbaled ? theme.colors.colorActionDisabled : theme.colors.colorContentMuted
    }

    private var interactionState: TextInputInteractionState {
        TextInputInteractionState(focused: focused, hover: hover)
    }
}
