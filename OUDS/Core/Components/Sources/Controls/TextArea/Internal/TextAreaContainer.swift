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
import SwiftUI

struct TextAreaContainer: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholder: String?
    let status: OUDSTextArea.Status
    let accessibilityHint: String?

    @State private var hover: Bool = false
    @FocusState private var focused: Bool

    @Environment(\.theme) private var theme

    // MARK: - Body

    // swiftlint:disable accessibility_trait_for_button
    // Not a button; a11y trait for text editor defined elsewhere
    var body: some View {
        VStack(alignment: .leading, spacing: theme.textInput.spaceRowGapLabelInput) {
            // Floating label at top position (above the text editor)
            if labelPosition == .top {
                TextAreaLabelContainer(label: label,
                                       status: status,
                                       interactionState: interactionState,
                                       position: .top)
            }

            // Text editor with overlaid middle-position label (placeholder style)
            ZStack(alignment: .topLeading) {
                if labelPosition == .middle {
                    TextAreaLabelContainer(label: label,
                                           status: status,
                                           interactionState: interactionState,
                                           position: .middle)
                }

                TextAreaInputText(label: placeholder ?? label,
                                  text: text,
                                  status: status)
                    .focused($focused)
            }
            .onTapGesture {
                focused = true
            }
        }
        .padding(.vertical, theme.textArea.spacePaddingBlock)
        .padding(.horizontal, theme.textInput.spacePaddingInlineDefault)
        .accessibilityLabel(accessibilityLabel)
        .accessibilityValue(accessibilityValue)
        .accessibilityHint(accessibilityHint ?? "")
        .modifier(TextAreaBackgroundModifier(status: status, interactionState: interactionState))
        .modifier(TextAreaBorderModifier(status: status, interactionState: interactionState))
        #if !os(watchOS) && !os(tvOS)
            .onHover { hover = $0 }
        #endif
        // swiftlint:enable accessibility_trait_for_button
    }

    // MARK: - Helpers

    private var labelPosition: TextAreaLabelContainer.Position {
        if !text.wrappedValue.isEmpty || placeholder?.isEmpty == false || focused {
            .top
        } else {
            .middle
        }
    }

    private var interactionState: TextAreaInteractionState {
        TextAreaInteractionState(focused: focused, hover: hover)
    }

    private var accessibilityLabel: String {
        label.isEmpty ? placeholder ?? "" : label
    }

    private var accessibilityValue: String {
        let emptyDescription = "core_textInput_empty_a11y".localized()
        let valueDescription = text.wrappedValue.isEmpty ? emptyDescription : text.wrappedValue

        let stateDescription = switch status {
        case .disabled, .readOnly:
            "core_common_disabled_a11y".localized()
        case let .error(message):
            "core_common_onError_a11y".localized() + ": \(message)"
        case .enabled:
            ""
        }

        return "\(valueDescription). \(stateDescription)"
    }
}
#endif
