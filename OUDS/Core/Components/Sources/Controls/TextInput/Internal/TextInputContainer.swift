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

struct TextInputContainer: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholder: String?
    let prefix: String?
    let suffix: String?
    let leadingIcon: Image?
    let flipIcon: Bool
    let trailingAction: OUDSTextInput.TrailingAction?
    let isOutlined: Bool
    let status: OUDSTextInput.Status
    @State var hover: Bool = false

    @FocusState private var focused: Bool

    @Environment(\.theme) private var theme

    // MARK: - Body

    // swiftlint:disable accessibility_trait_for_button
    // Not a button and a11y trait for text field defined elsewhere
    var body: some View {
        HStack(alignment: .center, spacing: theme.textInput.spaceColumnGapDefault) {
            HStack(alignment: .center, spacing: theme.textInput.spaceColumnGapDefault) {
                // Leading icon container
                LeadingIconContainer(leadingIcon: leadingIcon, flip: flipIcon, status: status)

                // ZStack here to add the label above the textField when
                // the text is empty, the placeholder is empty and not focused
                // Otherwise the label is placed at the top
                ZStack {
                    if labelPosition == .middle {
                        LabelContainer(label: label,
                                       status: status,
                                       interactionState: interactionState,
                                       position: .middle)
                    }

                    VStack(alignment: .leading, spacing: theme.textInput.spaceRowGapLabelInput) {
                        if labelPosition == .top {
                            LabelContainer(label: label,
                                           status: status,
                                           interactionState: interactionState,
                                           position: .top)
                        }

                        InputContainer(text: text,
                                       label: labelPosition == .top ? "" : label,
                                       placeholder: placeholder,
                                       prefix: prefix,
                                       suffix: suffix,
                                       status: status,
                                       interactionState: interactionState)
                            .focused($focused, equals: true)
                    }
                }
                .onTapGesture {
                    focused = true
                }
            }

            // Trailing action container
            TrailingActionContainer(trailingAction: trailingAction, status: status, interactionState: interactionState)
        }
        .padding(.vertical, theme.textInput.spacePaddingBlockDefault)
        .padding(.leading, theme.textInput.spacePaddingInlineDefault)
        .padding(.trailing, trailingPadding)
        .frame(minHeight: theme.textInput.sizeMinHeight, alignment: .leading)
        .modifier(TextInputBackgroundModifier(status: status, isOutlined: isOutlined, interactionState: interactionState))
        .modifier(TextInputBorderModifier(status: status, isOutlined: isOutlined, interactionState: interactionState))
        #if !os(watchOS) && !os(tvOS)
            .onHover { hover = $0 }
        #endif
        // swiftlint:enable accessibility_trait_for_button
    }

    // MARK: - Helpers

    private var labelPosition: LabelContainer.Position {
        if !text.wrappedValue.isEmpty || placeholder?.isEmpty == false || focused {
            .top
        } else {
            .middle
        }
    }

    private var trailingPadding: CGFloat {
        if trailingAction != nil {
            theme.textInput.spacePaddingInlineTrailingAction
        } else {
            switch status {
            case .error, .loading:
                theme.textInput.spacePaddingInlineTrailingAction
            default:
                theme.textInput.spacePaddingInlineDefault
            }
        }
    }

    private var interactionState: TextInputInteractionState {
        TextInputInteractionState(focused: focused, hover: hover)
    }
}
#endif
