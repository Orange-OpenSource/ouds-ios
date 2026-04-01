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

// \(”˚☐˚)/ ⊹₊⟡⋆

// MARK: - Backspace Detecting Text Field

/// A SwiftUI wrapper around UITextField that can detect backspace key presses.
///
/// SwiftUI's native TextField doesn't provide a way to detect when the backspace key is pressed,
/// so we use UIViewRepresentable to wrap a UITextField which can override deleteBackward().
///
/// Architecture:
/// - BackspaceDetectingTextField (UIViewRepresentable): SwiftUI ↔ UIKit bridge
/// - Coordinator (UITextFieldDelegate): Handles text field events
/// - BackspaceTextField (UITextField): Custom UITextField that detects backspace
struct BackspaceDetectingTextField: UIViewRepresentable {

    @Binding var text: String
    @Binding var displayText: String
    let font: UIFont
    let index: Int
    let onBackspace: () -> Void

    /// Creates the UITextField instance
    ///
    /// - Parameter context: The context containing the coordinator
    /// - Returns: A configured BackspaceTextField instance
    func makeUIView(context: Context) -> BackspaceTextField {
        let textField = BackspaceTextField()
        textField.delegate = context.coordinator
        textField.keyboardType = .numberPad
        textField.textAlignment = .center

        // Store the callback in the text field so it can call it when backspace is pressed
        textField.onBackspace = onBackspace
        textField.fieldIndex = index

        textField.font = font

        // Set low priorities to allow the frame modifier to control the size
        textField.setContentHuggingPriority(.defaultLow, for: .vertical)
        textField.setContentHuggingPriority(.defaultLow, for: .horizontal)
        textField.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        textField.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)

        return textField
    }

    /// Updates the UITextField when the SwiftUI state changes
    ///
    /// - Parameters:
    ///   - uiView: The UITextField to update
    ///   - context: The context containing the coordinator
    func updateUIView(_ uiView: BackspaceTextField, context: Context) {
        // Update the text field's callback (in case the closure captured values changed)
        uiView.onBackspace = onBackspace

        // Only update the text if it's different to avoid unnecessary updates
        if uiView.text != displayText {
            uiView.text = displayText
        }
    }

    /// Creates the coordinator that acts as the UITextFieldDelegate
    ///
    /// - Returns: A new Coordinator instance
    func makeCoordinator() -> Coordinator {
        Coordinator(text: $text, index: index)
    }

    /// Coordinator that implements UITextFieldDelegate to handle text field events
    final class Coordinator: NSObject, UITextFieldDelegate {
        @Binding var text: String
        let index: Int

        init(text: Binding<String>, index: Int) {
            _text = text
            self.index = index
        }

        deinit {}

        /// Called when the text field's text is about to change
        /// - Parameters:
        ///   - textField: The text field
        ///   - range: The range of characters to be replaced
        ///   - string: The replacement string (empty for backspace)
        /// - Returns: true to allow the change, false to reject it
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            // Detect backspace/deletion (empty string replacement)
            if string.isEmpty {
                // IMPORTANT: DO NOT update the text binding here!
                // This prevents double onChange calls:
                // 1. If we set text = "" here, it triggers onChange
                // 2. Then handleBackspace also sets digits[index] = "", triggering onChange again
                // Instead, we let handleBackspace be the single source of truth for backspace operations
                return true
            }

            // Filter to only allow numeric characters and take only the first one
            let filtered = String(string.filter(\.isNumber).prefix(1))

            DispatchQueue.main.async { [weak self] in
                guard let self else { return }
                if !filtered.isEmpty {
                    // Update the binding with the real digit
                    text = filtered
                }
            }

            // false: prevent direct display of text ; it will be updated with updateUIView using displayText
            return false
        }
    }
}

// MARK: - Backspace Text Field

/// Custom UITextField that can detect when the backspace key is pressed
///
/// UITextField provides a deleteBackward() method that is called when the user presses
/// the backspace/delete key. We override this to trigger our custom callback.
final class BackspaceTextField: UITextField {

    /// Callback to execute when backspace is pressed
    var onBackspace: (() -> Void)?
    /// The index of this field in the PIN code (used for debugging)
    var fieldIndex: Int = -1

    deinit {}

    /// Called when the user presses the backspace/delete key
    ///
    /// We call our custom callback before calling super to ensure our logic
    /// runs before the system's default backspace handling.
    override func deleteBackward() {
        // Call the callback when backspace is pressed
        // The callback (handleBackspace) will handle state updates on the main thread
        onBackspace?()

        // Call super to allow the system to handle the deletion
        // This ensures the UITextField's internal state is updated correctly
        super.deleteBackward()
    }

    /// Override `intrinsicContentSize` to return zero
    ///
    /// This is a trick to prevent the UITextField` from applying its own size constraints.
    /// Instead, we let the SwiftUI frame modifier control the size.
    override var intrinsicContentSize: CGSize {
        CGSize(width: 0, height: 0)
    }

    /// To put the cursor in the field after any symbol
    override func becomeFirstResponder() -> Bool {
        let result = super.becomeFirstResponder()

        if result {
            DispatchQueue.main.async { [weak self] in
                guard let self else { return }

                // Positionner le curseur à la fin du texte
                if let text, !text.isEmpty {
                    let endPosition = endOfDocument
                    selectedTextRange = textRange(from: endPosition, to: endPosition)
                }
            }
        }

        return result
    }
}
#endif
