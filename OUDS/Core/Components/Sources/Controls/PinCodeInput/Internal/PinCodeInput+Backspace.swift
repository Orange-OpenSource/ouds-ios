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

#if !os(watchOS) && !os(tvOS) && !os(macOS)
import OUDSTokensSemantic
import SwiftUI

// \("˚☐˚)/ ⊹₊⟡⋆

// MARK: - Backspace Detecting Text Field

/// A SwiftUI wrapper around `UITextField` that can detect backspace key presses.
///
/// SwiftUI's native `TextField` doesn't provide a way to detect when the backspace key is pressed,
/// so `UIViewRepresentable` is used to wrap a `UITextField` which can override `deleteBackward()`.
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
    let a11yLabel: String
    let a11yValue: String
    let onBackspace: () -> Void
    let onTextInserted: (String) -> Void

    /// Creates the UITextField instance.
    ///
    /// - Parameter context: The context containing the coordinator.
    /// - Returns: A configured BackspaceTextField instance.
    func makeUIView(context: Context) -> BackspaceTextField {
        let textField = BackspaceTextField()

        textField.delegate = context.coordinator
        textField.keyboardType = .numberPad
        textField.textAlignment = .center
        textField.onTextInserted = onTextInserted
        textField.onBackspace = onBackspace
        textField.fieldIndex = index
        textField.font = font

        // VoiceOver reads UIKit accessibility properties directly on the hosted UIView.
        // SwiftUI's .accessibilityLabel / .accessibilityValue modifiers have no effect on
        // UIViewRepresentable, so the values must be set here on the UITextField itself.
        textField.accessibilityLabel = a11yLabel
        textField.accessibilityValue = a11yValue

        // Set low priorities to allow the SwiftUI frame modifier to control the size
        textField.setContentHuggingPriority(.defaultLow, for: .vertical)
        textField.setContentHuggingPriority(.defaultLow, for: .horizontal)
        textField.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        textField.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)

        return textField
    }

    /// Updates the `UITextField` when the SwiftUI state changes.
    ///
    /// - Parameters:
    ///   - uiView: The UITextField to update.
    ///   - context: The context containing the coordinator.
    func updateUIView(_ uiView: BackspaceTextField, context: Context) {
        // Always refresh callbacks in case the closures captured new values after a SwiftUI re-render
        uiView.onBackspace = onBackspace
        uiView.onTextInserted = onTextInserted

        // Only update the displayed text if it actually changed, to avoid unnecessary UIKit updates
        if uiView.text != displayText {
            uiView.text = displayText
        }

        // Keep accessibility properties in sync on every SwiftUI re-render (e.g. when the digit
        // changes and the value string switches between "Empty" and the actual digit)
        uiView.accessibilityLabel = a11yLabel
        uiView.accessibilityValue = a11yValue
    }

    /// Creates the coordinator that acts as the `UITextFieldDelegate`.
    ///
    /// - Returns: A new `Coordinator` instance.
    func makeCoordinator() -> Coordinator {
        Coordinator(text: $text, index: index)
    }

    // MARK: - Coordinator

    /// Coordinator that implements `UITextFieldDelegate` to handle text field events.
    final class Coordinator: NSObject, UITextFieldDelegate {

        @Binding var text: String
        let index: Int

        init(text: Binding<String>, index: Int) {
            _text = text
            self.index = index
        }

        deinit {}

        /// Called when the text field's text is about to change.
        ///
        /// Instead of handling the text directly, digits are accumulated in the text field
        /// and dispatched after a short delay. This allows autofill to be detected:
        /// iOS sends digits one by one in rapid succession via this delegate method,
        /// and the accumulator groups them into a single callback.
        ///
        /// - Parameters:
        ///   - textField: The text field whose text is changing.
        ///   - range: The range of characters to be replaced.
        ///   - string: The replacement string (empty string means backspace).
        /// - Returns: Always returns false to prevent direct text display; display is controlled via `displayText` through `updateUIView`.
        func textField(_ textField: UITextField,
                       shouldChangeCharactersIn range: NSRange,
                       replacementString string: String) -> Bool
        {

            guard let field = textField as? BackspaceTextField else { return false }

            // Backspace: let the system handle deletion, deleteBackward() will fire the callback
            if string.isEmpty {
                return true
            }

            // Filter non-numeric characters and accumulate the digit(s)
            // The accumulator waits for a short silence before dispatching,
            // which groups autofill digits sent in rapid succession into a single call
            let digits = string.filter(\.isNumber)
            guard !digits.isEmpty else { return false }
            field.accumulate(digit: digits)

            // Prevent direct display: text rendering is handled by updateUIView via displayText
            return false
        }
    }
}

// MARK: - Backspace Text Field

/// Custom `UITextField` that detects backspace key presses and accumulates digits for autofill support.
///
/// `UITextField` provides a `deleteBackward()` method called when the user presses the backspace key.
/// We override it to trigger our custom callback.
///
/// Autofill handling:
/// iOS sends autofill digits one by one via `shouldChangeCharactersIn` in rapid succession
/// rather than as a single string. The accumulator collects these digits and dispatches them
/// together after a short silence (50ms), allowing the parent to handle them as a complete code.
@MainActor
final class BackspaceTextField: UITextField {

    /// Callback triggered when the backspace key is pressed.
    var onBackspace: (() -> Void)?

    /// The index of this field in the PIN code sequence.
    var fieldIndex: Int = -1

    /// Callback triggered when one or more digits have been inserted (manual typing or autofill).
    var onTextInserted: ((String) -> Void)?

    /// Buffer that accumulates digits arriving in rapid succession (e.g. during autofill).
    private var accumulatedDigits: String = ""

    /// Pending work item that fires after a short silence to dispatch accumulated digits.
    /// Marked as `nonisolated(unsafe)` to allow access from the nonisolated `deinit`.
    nonisolated(unsafe) private var accumulationWork: DispatchWorkItem?

    /// Accumulates a digit and schedules a dispatch after 50ms of silence.
    ///
    /// Each call resets the timer, so rapid successive calls (autofill) result in a single dispatch,
    /// while slow calls (manual typing) each dispatch individually.
    ///
    /// - Parameter digit: The digit string to accumulate.
    func accumulate(digit: String) {
        accumulatedDigits += digit

        // Cancel any previously scheduled dispatch
        accumulationWork?.cancel()

        let work = DispatchWorkItem { [weak self] in
            guard let self else { return }
            let toSend = accumulatedDigits
            accumulatedDigits = ""
            onTextInserted?(toSend)
        }

        accumulationWork = work

        // Wait 50ms after the last digit before dispatching
        // This threshold is short enough to feel instant, but long enough to group autofill digits
        // \("˚☐˚)/ ⊹₊⟡⋆
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05, execute: work)
    }

    deinit {
        // Cancel any pending dispatch on deinit
        // Captured in a local constant to avoid accessing a non-Sendable property from nonisolated deinit
        let work = accumulationWork
        DispatchQueue.main.async {
            work?.cancel()
        }
    }

    /// Intercepts text insertions from the system.
    ///
    /// In this implementation, text input is handled via `shouldChangeCharactersIn` and the
    /// accumulator rather than `insertText`, so this override is intentionally left empty.
    override func insertText(_ text: String) {
        // Intentionally empty: digit input is handled via shouldChangeCharactersIn + accumulate(digit:)
    }

    /// Called when the user presses the backspace/delete key.
    ///
    /// Clears any accumulated digits to avoid stale state, then triggers the backspace callback
    /// before letting the system handle the deletion.
    override func deleteBackward() {
        // Discard any buffered digits that haven't been dispatched yet
        accumulationWork?.cancel()
        accumulatedDigits = ""

        // Notify the parent before the system processes the deletion
        onBackspace?()
        super.deleteBackward()
    }

    /// Returns zero size to let the SwiftUI frame modifier fully control the layout.
    override var intrinsicContentSize: CGSize {
        CGSize(width: 0, height: 0)
    }

    /// Positions the cursor at the end of the text when the field becomes focused.
    override func becomeFirstResponder() -> Bool {
        let result = super.becomeFirstResponder()
        if result {
            DispatchQueue.main.async { [weak self] in
                guard let self, let text, !text.isEmpty else { return }
                let end = endOfDocument
                selectedTextRange = textRange(from: end, to: end)
            }
        }
        return result
    }
}
#endif
