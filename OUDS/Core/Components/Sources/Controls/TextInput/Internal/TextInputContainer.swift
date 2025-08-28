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

struct TextInputConatiner: View {

    // MARK: - Properties

    let layout: OUDSTextInput.Layout
    let label: String
    let text: Binding<String>
    let placeholder: OUDSTextInput.Placeholder?
    let leadingIcon: Image?
    let trailingAction: OUDSTextInput.TrailingAction?
    let isError: Bool
    let style: OUDSTextInput.Style

    @Environment(\.theme) private var theme
    @FocusState private var focused: Bool

    // MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapDefault) {

            // Leading icon container
            leadingIcon?
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: theme.textInput.textInputSizeLeadingIcon, alignment: .center)

            // Text container
            VStack(alignment: .leading, spacing: theme.textInput.textInputSpaceRowGapLabelInput) {
                // Label caontainer
                if showPlaceholder, !label.isEmpty {
                    Text(label)
                        .typeLabelDefaultSmall(theme)
                        .fixedSize(horizontal: true, vertical: false)
                }

                // Input container
                HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapInlineText) {

                    // Prefix container
                    if let prefix = placeholder?.prefix, !prefix.isEmpty, showPlaceholder {
                        Text(prefix)
                            .typeLabelDefaultLarge(theme)
                    }

                    // Input text container
                    TextField(textfieldPlaceholder, text: text)
                        .minimumScaleFactor(1.0) // Use to fix font size adaptation if long text (scroll is prefered)
                        .typeLabelDefaultLarge(theme)
                        .focused($focused, equals: true)

                    // Sufix container
                    if let suffix = placeholder?.suffix, !suffix.isEmpty, showPlaceholder {
                        Text(suffix)
                            .typeLabelDefaultLarge(theme)
                    }
                }
            }

            // Trailing action container
            if let trailingAction {
                OUDSButton(icon: trailingAction.icon,
                           accessibilityLabel: trailingAction.accessibilityLabel,
                           hierarchy: .minimal,
                           action: trailingAction.action)
            }
        }
        .padding(.vertical, theme.textInput.textInputSpacePaddingBlockDefault)
        .padding(.leading, leading)
        .padding(.trailing, trailing)
        .frame(minWidth: theme.textInput.textInputSizeMinWidth,
               maxWidth: theme.textInput.textInputSizeMaxWidth,
               minHeight: theme.textInput.textInputSizeMinHeight,
               alignment: .center)
        .modifier(TextInputBackgroundModifier(style: style, isError: isError))
        .modifier(TextInputBoderModifier(style: style, isError: isError))
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

    private var leading: SpaceSemanticToken {
        // TODO: textInputSpacePaddingInlineStart is missing
        // leadingIcon == nil ? theme.textInput.textInputSpacePaddingInlineDefault : theme.textInput.textInputSpacePaddingInlineStart
        theme.textInput.textInputSpacePaddingInlineDefault
    }

    private var trailing: CGFloat {
        leadingIcon == nil ? theme.textInput.textInputSpacePaddingInlineDefault : theme.textInput.textInputSpacePaddingInlineTrailingAction
    }
}

struct TextInputBackgroundModifier: ViewModifier {

    // MARK: - Stored properties

    let style: OUDSTextInput.Style
    let isError: Bool
    @Environment(\.theme) private var theme
    @Environment(\.oudsRoundedTextInput) private var rounded
    @Environment(\.isEnabled) private var enabled
    @Environment(\.isFocused) private var focused
    @State private var hover = false

    // MARK: - Body

    func body(content: Content) -> some View {
        switch style {
        case .default:
            content
                .onHover { hover in
                    self.hover = hover
                }
                .oudsBackground(color)
        case .alternative:
            content
        }
    }

    private var color: MultipleColorSemanticTokens {
        if !enabled{
            return isError ? theme.colors.colorSurfaceStatusNegativeMuted : theme.colors.colorActionDisabled
        }
        if hover {
            return isError ? theme.colors.colorSurfaceStatusNegativeMuted : theme.colors.colorActionSupportHover
        }
        if focused {
            return isError ? theme.colors.colorSurfaceStatusNegativeMuted : theme.colors.colorActionSupportFocus
        }
        return isError ? theme.colors.colorSurfaceStatusNegativeMuted : theme.colors.colorActionSupportHover
    }
}

