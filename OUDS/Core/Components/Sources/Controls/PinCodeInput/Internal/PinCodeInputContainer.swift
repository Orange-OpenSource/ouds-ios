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

// MARK: - PIN Code Input Container

struct PinCodeInputContainer: View {

    // MARK: Properties

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
    /// The digits written one by one by the user befor ebeing expsoed through `value`
    @State private var digits: [String]

    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.theme) private var theme

    // MARK: Initializer

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

    // MARK: Body

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
                    .overlay(
                        RoundedRectangle(cornerRadius: theme.textInput.borderRadiusDefault)
                            .oudsBorder(
                                style: theme.borders.styleDefault,
                                width: theme.textInput.borderWidthDefault,
                                radius: theme.textInput.borderRadiusDefault,
                                color: borderColor))
                    .contentShape(Rectangle())
                    .foregroundColor(backgroundColor)
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

    // MARK: Helpers

    private var backgroundColor: Color {
        if isOutlined {
            .clear
        } else if isError {
            theme.colors.surfaceStatusNegativeMuted.color(for: colorScheme)
        } else {
            theme.colors.actionSupportEnabled.color(for: colorScheme)
        }
    }

    private var borderColor: MultipleColorSemanticToken {
        isError ? theme.colors.actionNegativeEnabled : theme.colors.actionSupportEnabled
    }

    private func digitField(at index: Int) -> some View {
        BackspaceDetectingTextField(
            text: $digits[index],
            onBackspace: {
                handleBackspace(at: index)
            })
            .oudsForegroundColor(theme.colors.contentDefault)
            .focused($focusedIndex, equals: index)
            .padding(.vertical, theme.textInput.spacePaddingBlockDefault)
            .padding(.horizontal, theme.textInput.spacePaddingInlineDefault)
            .accessibilityLabel("Digit \(index + 1)") // TODO: #998 - Change it
            .onChange(of: digits[index]) { newValue in
                handleDigitChange(at: index, newValue: newValue)
            }
    }

    /// To handle the backspace button, i.e. the keyboard feature to go back and remove
    /// - Parameter index: The index of the field
    private func handleBackspace(at index: Int) {
        // User pressed backspace button
        if digits[index].isEmpty {
            // Current field empy, move to previous field
            if index > 0 {
                focusedIndex = index - 1
                digits[index - 1] = ""
                value = ""
            }
        } else {
            // Current field contains something, remove it
            digits[index] = ""
            value = ""
        }
    }

    /// To handle the written data
    /// - Parameters:
    ///    - index: The index of the field
    ///    - newVaue: The new value written in the field
    private func handleDigitChange(at index: Int, newValue: String) {
        let filtered = String(newValue.filter(\.isNumber).prefix(1))

        if filtered != newValue {
            digits[index] = filtered
            return
        }

        if filtered.count == 1 {
            digits[index] = filtered
            // Move to next field
            if index < length.rawValue - 1 {
                focusedIndex = index + 1
                value = ""
            } else {
                // Last field filled, binding can be updated
                let joined = digits.joined()
                if joined.count == length.rawValue {
                    value = joined
                    focusedIndex = nil
                } else {
                    value = ""
                }
            }
        }
    }
}

// MARK: - Backspace Detecting Text Field

/// As it seems SwiftUI `TextField` does not manage the keyboard input "backspace", use instead a `UIViewRepresentable`
private struct BackspaceDetectingTextField: UIViewRepresentable {

    @Binding var text: String
    let onBackspace: () -> Void

    func makeUIView(context: Context) -> BackspaceTextField {
        let textField = BackspaceTextField()
        textField.delegate = context.coordinator
        textField.keyboardType = .numberPad
        textField.textAlignment = .center
        textField.onBackspace = onBackspace

        textField.setContentHuggingPriority(.defaultLow, for: .vertical)
        textField.setContentHuggingPriority(.defaultLow, for: .horizontal)
        textField.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        textField.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)

        return textField
    }

    func updateUIView(_ uiView: BackspaceTextField, context: Context) {
        uiView.text = text
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(text: $text)
    }

    final class Coordinator: NSObject, UITextFieldDelegate {
        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            let currentText = textField.text ?? ""
            guard let stringRange = Range(range, in: currentText) else { return false }
            let updatedText = currentText.replacingCharacters(in: stringRange, with: string)

            text = updatedText

            return true
        }
    }
}

// MARK: - Backspace Text Field

/// `UITextField` with backspace management
private class BackspaceTextField: UITextField {
    var onBackspace: (() -> Void)?

    override func deleteBackward() {
        onBackspace?()
        super.deleteBackward()
    }

    override var intrinsicContentSize: CGSize {
        // Trick to not apply constraints
        CGSize(width: 0, height: 0)
    }
}
