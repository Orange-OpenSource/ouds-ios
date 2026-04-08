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
#if canImport(UIKit)
import UIKit
#endif

struct TextAreaContainer: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholder: String?
    /// Pre-computed by `OUDSTextArea` from the normalised text count — single source of truth.
    let isOverLimit: Bool
    /// Pre-computed by `OUDSTextArea` from the normalised text count — single source of truth.
    let excessCount: Int
    let status: OUDSTextArea.Status
    let isOutlined: Bool
    let accessibilityHint: String?

    @State private var hover: Bool = false
    @FocusState private var focused: Bool

    @Environment(\.theme) private var theme

    // MARK: - Body

    // swiftlint:disable accessibility_trait_for_button
    // Not a button; a11y trait for text editor defined elsewhere
    var body: some View {
        HStack(alignment: .top, spacing: theme.spaces.fixedNone) {
            // Main content: label + text editor
            VStack(alignment: .leading, spacing: theme.textInput.spaceRowGapLabelInput) {
                // Floating label at top position (above the text editor)
                if labelPosition == .top {
                    TextAreaLabelContainer(label: label,
                                           status: status,
                                           interactionState: interactionState,
                                           isOverLimit: isOverLimit,
                                           position: .top)
                }

                // Text editor with overlaid middle-position label (placeholder style)
                ZStack(alignment: .topLeading) {
                    if labelPosition == .middle {
                        TextAreaLabelContainer(label: label,
                                               status: status,
                                               interactionState: interactionState,
                                               isOverLimit: isOverLimit,
                                               position: .middle)
                    }

                    TextAreaInputText(label: placeholder ?? label,
                                      text: text,
                                      status: status)
                        .focused($focused)
                }
                .allowsHitTesting(status != .readOnly && status != .disabled)
                .onTapGesture {
                    guard status != .readOnly, status != .disabled else { return }
                    focused = true
                }
            }
            .accessibilityLabel(accessibilityLabel)
            .accessibilityValue(accessibilityValue)
            .accessibilityHint(accessibilityHint ?? "")

            // Trailing indicator: error icon or loading spinner
            TextAreaTrailingContainer(status: status,
                                      interactionState: interactionState,
                                      isOverLimit: isOverLimit)
                .padding(.top, theme.textArea.spacePaddingBlock)
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

    /// Trailing padding is reduced when the trailing container is visible (error / loading / over limit).
    private var trailingPadding: CGFloat {
        switch status {
        case .error, .loading:
            theme.textInput.spacePaddingInlineTrailingAction
        default:
            isOverLimit ? theme.textInput.spacePaddingInlineTrailingAction : theme.textInput.spacePaddingInlineDefault
        }
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
