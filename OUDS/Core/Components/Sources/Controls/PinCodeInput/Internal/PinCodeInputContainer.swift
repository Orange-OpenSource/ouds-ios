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

#if !os(watchOS) && !os(macOS)
import OUDSTokensSemantic
import SwiftUI

struct PinCodeInputContainer: View {

    // MARK: - Properties

    /// The `Binding` exposing the final result when everything is written
    @Binding private var value: String
    /// Number of boxes / size of the code to write
    private let length: OUDSPinCodeInput.Length
    /// If there is an error context about the value of the container
    private let isError: Bool
    /// If the outline layout must be applied on the container
    private let isOutlined: Bool

    /// To manage the focus between all fields
    @FocusState private var focusedIndex: Int?
    /// The digits written one by one by the user before being exposed through `value`
    @State private var digits: [String]

    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.theme) private var theme

    // MARK: - Black magic

    // These properties prevent double backspace processing by tracking which field was cleared and when.
    // When a backspace occurs, we mark the field index and timestamp, then skip onChange events
    // for that field within 100ms to avoid processing the same backspace twice.
    // \(”˚☐˚)/ ⊹₊⟡⋆

    // swiftlint:disable implicit_optional_initialization
    /// Tracks which field index was last cleared by a backspace operation
    @State private var lastBackspaceIndex: Int? = nil
    /// Tracks when the last backspace operation occurred (used for debouncing)
    @State private var lastBackspaceTime: Date = .distantPast
    // swiftlint:enable implicit_optional_initialization

    // MARK: - Initializer

    init(_ value: Binding<String>,
         length: OUDSPinCodeInput.Length,
         isError: Bool,
         isOutlined: Bool)
    {
        _value = value
        self.length = length
        self.isError = isError
        self.isOutlined = isOutlined

        let empty = Array(repeating: "", count: length.rawValue)
        _digits = State(initialValue: empty)
    }

    // MARK: - Body

    // swiftlint:disable accessibility_trait_for_button
    var body: some View {
        HStack(spacing: theme.pinCodeInput.spaceColumnGapDigitInput) {
            ForEach(0 ..< length.rawValue, id: \.self) { index in
                digitField(at: index)
                    .frame(
                        minWidth: theme.pinCodeInput.sizeMinWidth,
                        maxWidth: theme.pinCodeInput.sizeMaxWidth,
                        minHeight: theme.textInput.sizeMinHeight,
                        maxHeight: theme.textInput.sizeMinHeight)
                    .background(
                        RoundedRectangle(cornerRadius: theme.textInput.borderRadiusDefault)
                            .fill(backgroundColor))
                    .contentShape(Rectangle())
                    .foregroundColor(foregroundColor)
                    .modifier(PinCodeInputBorderModifier(isOutlined: isOutlined, isError: isError, isFocused: focusedIndex == index))
                    .onTapGesture {
                        // Focus on the first empty field or the last one
                        if let firstEmpty = digits.firstIndex(where: { $0.isEmpty }) {
                            focusedIndex = firstEmpty
                        } else {
                            focusedIndex = length.rawValue - 1
                        }
                    }
            }
        }
        .onAppear {
            // When appeared, focus on the first field
            DispatchQueue.main.async {
                focusedIndex = 0
            }
        }
    }

    // swiftlint:enable accessibility_trait_for_button

    // MARK: - Colors

    private var foregroundColor: Color {
        if isOutlined {
            .red
        } else if isError {
            theme.colors.surfaceStatusNegativeMuted.color(for: colorScheme)
        } else { // Not oulined, no error
            theme.colors.actionSupportEnabled.color(for: colorScheme)
        }
    }

    private var backgroundColor: Color {
        if isOutlined {
            .clear
        } else if isError {
            theme.colors.surfaceStatusNegativeMuted.color(for: colorScheme)
        } else { // Not oulined, no error
            theme.colors.actionSupportEnabled.color(for: colorScheme)
        }
    }

    private var borderColor: MultipleColorSemanticToken {
        if isError {
            theme.colors.actionNegativeEnabled
        } else { // Same color of border for both outlined and not outlined layouts
            theme.textInput.colorBorderEnabled
        }
    }

    // MARK: - Digits fields

    private func digitField(at index: Int) -> some View {
        BackspaceDetectingTextField(
            text: $digits[index],
            index: index,
            onBackspace: {
                handleBackspace(at: index)
            })
            .oudsForegroundColor(theme.colors.contentDefault)
            .oudsAccentColor(theme.colors.contentDefault)
            .focused($focusedIndex, equals: index)
            .padding(.vertical, theme.textInput.spacePaddingBlockDefault)
            .padding(.horizontal, theme.textInput.spacePaddingInlineDefault)
            .accessibilityLabel("Digit \(index + 1)") // TODO: #998 - Change it
        #if os(visionOS)
            .onChange(of: digits[index]) { _, newValue in
                // IMPORTANT: Skip onChange if this is triggered by a recent backspace operation
                // This prevents double processing when:
                // 1. handleBackspace clears a digit (triggers onChange)
                // 2. Focus changes to previous field (triggers onChange again)
                // We use a 100ms window to detect if this onChange is from the same backspace

                let timeSinceLastBackspace = Date().timeIntervalSince(lastBackspaceTime)

                // If this field was just cleared by backspace within the last 100ms, skip processing
                if lastBackspaceIndex == index, timeSinceLastBackspace < 0.1 {
                    return
                }

                handleDigitChange(at: index, newValue: newValue)
            }
        #else
            .onChange(of: digits[index]) { newValue in
                // IMPORTANT: Skip onChange if this is triggered by a recent backspace operation
                // This prevents double processing when:
                // 1. handleBackspace clears a digit (triggers onChange)
                // 2. Focus changes to previous field (triggers onChange again)
                // We use a 100ms window to detect if this onChange is from the same backspace

                let timeSinceLastBackspace = Date().timeIntervalSince(lastBackspaceTime)

                // If this field was just cleared by backspace within the last 100ms, skip processing
                if lastBackspaceIndex == index, timeSinceLastBackspace < 0.1 {
                    return
                }

                handleDigitChange(at: index, newValue: newValue)
            }
        #endif
    }

    /// To handle the written data:
    /// 1. Filters the input to only allow single digits (0-9)
    /// 2. Moves focus to the next field when a digit is entered
    /// 3. Updates the final value binding when all fields are filled
    ///
    /// - Parameters:
    ///    - index: The index of the field
    ///    - newValue: The new value written in the field
    private func handleDigitChange(at index: Int, newValue: String) {
        // Filter to only allow numeric characters and take only the first one
        let filtered = String(newValue.filter(\.isNumber).prefix(1))

        // If filtering changed the value, update and return
        if filtered != newValue {
            digits[index] = filtered
            return
        }

        // If a valid single digit was entered
        if filtered.count == 1 {
            digits[index] = filtered

            // Move to next field if not on the last one
            if index < length.rawValue - 1 {
                focusedIndex = index + 1
                value = "" // Clear the final value until all fields are filled
            } else {
                // Last field filled, check if we have a complete PIN code
                let joined = digits.joined()
                if joined.count == length.rawValue {
                    // All fields filled, update the final value binding
                    value = joined
                    // Remove focus from all fields
                    focusedIndex = nil
                } else {
                    // Incomplete PIN code
                    value = ""
                }
            }
        }
    }

    /// To handle the backspace button, i.e. the keyboard feature to go back and remove
    ///
    /// It handles two scenarios:
    /// 1. If current field is empty: clear the previous field and move focus back
    /// 2. If current field has content: clear it and keep focus on current field
    ///
    /// We use DispatchQueue.main.async to defer state modifications and avoid the
    /// "Modifying state during view update" warning, since this is called from
    /// UIKit's deleteBackward() which happens during the view update cycle.
    ///
    /// - Parameter index: The index of the field
    private func handleBackspace(at index: Int) { //  \(”˚☐˚)/ ⊹₊⟡⋆
        // Capture the state before any deletion to avoid race conditions
        let wasEmpty = digits[index].isEmpty

        // Use DispatchQueue.main.async to defer state modifications and avoid warning
        DispatchQueue.main.async {
            // Mark this backspace operation with current timestamp
            // This is used in onChange to skip processing for 100ms
            lastBackspaceTime = Date()

            if wasEmpty {
                // Current field is empty, move to previous field and clear it
                if index > 0 {
                    let previousIndex = index - 1

                    // Mark the previous field as being cleared by backspace
                    // This tells onChange to skip processing for this field
                    lastBackspaceIndex = previousIndex

                    // Clear the previous field
                    digits[previousIndex] = ""
                    value = ""

                    // Move focus to the previous field
                    focusedIndex = previousIndex
                }
            } else {
                // Current field has content, clear it and stay on this field

                // Mark the current field as being cleared by backspace
                lastBackspaceIndex = index

                // Clear the current field
                digits[index] = ""
                value = ""

                // Keep focus on current field
                focusedIndex = index
            }
        }
    }
}
#endif
