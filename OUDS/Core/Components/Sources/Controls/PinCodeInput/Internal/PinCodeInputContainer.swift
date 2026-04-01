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

#if !os(watchOS) && !os(macOS) && !os(tvOS)
import OUDSFoundations
import OUDSTokensSemantic
import SwiftUI

// MARK: - Characters

/// The symbol to use to hide the written digit
let kPinCodeInputObfuscationCharacter = "●"

/// The symbol to use as placeholder for digit to fill
let kPinCodeInputPlaceholderCharacter = "-"

// MARK: - Pin Code Input Container

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
    /// If true, automatically focuses the first available field on appear
    private let autofocus: Bool

    /// To manage the focus between all fields
    @FocusState private var focusedIndex: Int?
    /// The digits written one by one by the user before being exposed through `value`
    @State private var digits: [String]

    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.theme) private var theme

    // MARK: - Black magic

    // These properties prevent double backspace processing by tracking which field was cleared and when.
    // When a backspace occurs, we mark the field index and timestamp, then skip onChange events
    // for that field within 100ms to avoid processing the same backspace twice.
    // \("˚☐˚)/ ⊹₊⟡⋆

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
         isOutlined: Bool,
         autofocus: Bool)
    {
        _value = value
        self.length = length
        self.isError = isError
        self.isOutlined = isOutlined
        self.autofocus = autofocus

        // Warning if value is longer than the expected length
        let rawValue = value.wrappedValue
        if rawValue.count > length.rawValue {
            OL.warning("The given value '\(rawValue)' for OUDSPinCodeInput has \(rawValue.count) digits but length is \(length.rawValue). Extra digits will be ignored.")
        }

        // Pre-fill digits from value, filtered to digits only and clamped to length
        let filled = rawValue
            .filter(\.isNumber)
            .prefix(length.rawValue)
            .map(String.init)

        // Pad with empty strings if value is shorter than length
        var initial = Array(repeating: "", count: length.rawValue)
        for (i, digit) in filled.enumerated() {
            initial[i] = digit
        }
        _digits = State(initialValue: initial)
    }

    // MARK: - Body

    var body: some View {
        HStack(spacing: theme.pinCodeInput.spaceColumnGapDigitInput) {
            ForEach(0 ..< length.rawValue, id: \.self) { index in
                digitField(at: index)
                    .frame(
                        minWidth: theme.pinCodeInput.sizeMinWidth,
                        maxWidth: theme.pinCodeInput.sizeMaxWidth,
                        minHeight: theme.textInput.sizeMinHeight,
                        maxHeight: theme.textInput.sizeMinHeight) // FIXME: Mandatory but nor in specs of #998, otherwise no limits
                    .background(
                        RoundedRectangle(cornerRadius: borderRadius)
                            .fill(backgroundColor(focused: focusedIndex == index)))
                    .contentShape(Rectangle())
                    .foregroundColor(foregroundColor)
                    .modifier(PinCodeInputBorderModifier(isOutlined: isOutlined, isError: isError, isFocused: focusedIndex == index))
            }
        }
        .onAppear {
            // Focus on the first empty field if:
            // - autofocus is enabled (empty value case)
            // - considering also if value was pre-filled (we always focus the first empty field in that case)
            guard autofocus else { return }
            DispatchQueue.main.async {
                if let firstEmpty = digits.firstIndex(where: { $0.isEmpty }) {
                    // Focus on the first empty field
                    focusedIndex = firstEmpty
                } else {
                    // All fields are filled, focus on the last one
                    focusedIndex = length.rawValue - 1
                }
            }
        }
    }

    // MARK: - Colors

    private var foregroundColor: Color {
        if isOutlined {
            .red
        } else if isError {
            theme.colors.surfaceStatusNegativeMuted.color(for: colorScheme)
        } else { // Not outlined, no error
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

    private var borderRadius: BorderRadiusSemanticToken {
        theme.tuning.hasRoundedPinCodeInputs ? theme.textInput.borderRadiusRounded : theme.textInput.borderRadiusDefault
    }

    private func backgroundColor(focused: Bool) -> Color {
        if isOutlined {
            .clear
        } else if isError {
            theme.colors.surfaceStatusNegativeMuted.color(for: colorScheme)
        } else if focused {
            theme.colors.actionSupportPressed.color(for: colorScheme)
        } else { // Not outlined, no error
            theme.colors.actionSupportEnabled.color(for: colorScheme)
        }
    }

    // MARK: - Digits fields

    /// Returns the string to display for a digit field:
    /// - `kPinCodeInputPlaceholderCharacter` for placeholder on not focused input
    /// - `kPinCodeInputObfuscationCharacter` for filled input
    /// - empty string for input focused without text yet
    ///
    /// - Parameter index: The index of the field
    /// - Returns: The character to display in the field
    private func displayText(for index: Int) -> String {
        if digits[index].isEmpty {
            if focusedIndex == index {
                ""
            } else {
                kPinCodeInputPlaceholderCharacter
            }
        } else {
            kPinCodeInputObfuscationCharacter
        }
    }

    private func digitField(at index: Int) -> some View {
        // Compute at this level the typography to use to be sure environment values for size class
        // are retrieved in the suitable thread at the best moment
        let uiFont = TypographyModifier.makeUIFont(
            family: nil,
            from: theme.fonts.labelDefaultLarge,
            isCompact: horizontalSizeClass == .compact || verticalSizeClass == .compact)
        return BackspaceDetectingTextField(
            text: $digits[index],
            displayText: .constant(displayText(for: index)),
            font: uiFont,
            index: index,
            onBackspace: {
                handleBackspace(at: index)
            },
            onTextInserted: { inserted in // ← nouveau
                handleTextInserted(inserted, at: index)
            })
            .foregroundColor(theme.colors.contentDefault)
            .accentColor(theme.colors.contentDefault)
            .focused($focusedIndex, equals: index)
            .padding(.vertical, theme.textInput.spacePaddingBlockDefault)
            .padding(.horizontal, theme.textInput.spacePaddingInlineDefault)
        #if os(visionOS)
            .onChange(of: digits[index]) { _, newValue in
                let timeSinceLastBackspace = Date().timeIntervalSince(lastBackspaceTime)
                if lastBackspaceIndex == index, timeSinceLastBackspace < 0.1 {
                    return
                }
                handleDigitChange(at: index, newValue: newValue)
            }
        #else
            .onChange(of: digits[index]) { newValue in
                let timeSinceLastBackspace = Date().timeIntervalSince(lastBackspaceTime)
                if lastBackspaceIndex == index, timeSinceLastBackspace < 0.1 {
                    return
                }
                handleDigitChange(at: index, newValue: newValue)
            }
        #endif
    }

    /// To handle the written data:
    /// 1. Filters the input to only allow digits (0-9)
    /// 2. If more than one digit is received (e.g. autofill), distributes them across fields
    /// 3. Moves focus to the next field when a single digit is entered
    /// 4. Updates the final value binding when all fields are filled
    ///
    /// - Parameters:
    ///    - index: The index of the field
    ///    - newValue: The new value written in the field
    private func handleDigitChange(at index: Int, newValue: String) { //  \("˚☐˚)/ ⊹₊⟡⋆
        let filtered = newValue.filter(\.isNumber)

        // Autofill / paste case: more than one digit received
        if filtered.count > 1 {
            let available = length.rawValue - index
            let toDistribute = filtered.prefix(available)

            for (offset, char) in toDistribute.enumerated() {
                digits[index + offset] = String(char)
            }

            let joined = digits.joined()
            if joined.count == length.rawValue, !digits.contains("") {
                value = joined
                focusedIndex = nil
            } else {
                value = ""
                // Focus the field right after the last filled one, if any
                let nextIndex = index + toDistribute.count
                focusedIndex = nextIndex < length.rawValue ? nextIndex : length.rawValue - 1
            }
            return
        }

        // Normal typing: single digit
        let single = String(filtered.prefix(1))

        // If filtering changed the value, update and return (triggers onChange again)
        if single != newValue {
            digits[index] = single
            return
        }

        if single.count == 1 {
            digits[index] = single

            let joined = digits.joined()
            if joined.count == length.rawValue, !digits.contains("") {
                value = joined
                focusedIndex = nil
            } else if index < length.rawValue - 1 {
                focusedIndex = index + 1
                value = ""
            } else {
                value = ""
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
    private func handleBackspace(at index: Int) { //  \("˚☐˚)/ ⊹₊⟡⋆
        let wasEmpty = digits[index].isEmpty

        DispatchQueue.main.async {
            lastBackspaceTime = Date()

            if wasEmpty {
                if index > 0 {
                    let previousIndex = index - 1
                    lastBackspaceIndex = previousIndex
                    digits[previousIndex] = ""
                    value = ""
                    focusedIndex = previousIndex
                }
            } else {
                lastBackspaceIndex = index
                digits[index] = ""
                value = ""
                focusedIndex = index
            }
        }
    }

    /// Gère toute insertion de texte : un seul chiffre (frappe normale)
    /// ou plusieurs chiffres (autofill, suggestion clavier, coller).
    ///
    /// - Parameters:
    ///   - text: La chaîne de chiffres insérée (déjà filtrée, uniquement des chiffres)
    ///   - index: L'index du champ qui a reçu l'insertion
    private func handleTextInserted(_ text: String, at index: Int) { //  \("˚☐˚)/ ⊹₊⟡⋆
        print("✅ handleTextInserted: '\(text)' at index \(index)")
        let available = length.rawValue - index
        let toDistribute = text.prefix(available)
        print("✅ distributing '\(toDistribute)' across \(toDistribute.count) fields from index \(index)")

        for (offset, char) in toDistribute.enumerated() {
            print("✅ digits[\(index + offset)] = '\(char)'")
            digits[index + offset] = String(char)
        }

        let joined = digits.joined()
        let allFilled = joined.count == length.rawValue && !digits.contains("")
        print("✅ joined: '\(joined)' | allFilled: \(allFilled)")

        if allFilled {
            value = joined
            focusedIndex = nil
        } else {
            value = ""
            let nextIndex = index + toDistribute.count
            focusedIndex = nextIndex < length.rawValue ? nextIndex : length.rawValue - 1
        }
    }
}
#endif
