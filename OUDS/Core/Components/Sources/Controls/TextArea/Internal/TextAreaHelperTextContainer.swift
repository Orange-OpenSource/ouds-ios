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
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

struct TextAreaHelperErrorTextContainer: View {

    // MARK: - Properties

    let helperText: OUDSTextArea.HelperText?
    let status: OUDSTextArea.Status
    let isOverLimit: Bool
    let excessCount: Int
    let remainingCount: Int

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        if let renderedText {
            renderedText
                .labelDefaultMedium(theme)
                .foregroundColor(color)
                .multilineTextAlignment(.leading)
                .padding(.top, theme.textInput.spacePaddingBlockTopHelperText)
                .padding(.horizontal, theme.textInput.spacePaddingInlineDefault)
        }
    }

    // MARK: - Helpers

    /// Returns the Text view to display, or nil when there is nothing to show.
    private var renderedText: Text? {
        // In error status, the error message replaces the helper text
        if let errorMessage = status.errorMessage {
            return textView(for: errorMessage)
        }

        guard let helperText else { return nil }

        if case .charactersMaxCount = helperText {
            return isOverLimit
                ? Text(tooManyCharactersText(excess: excessCount))
                : Text(remainingCharactersText(count: remainingCount))
        }

        return helperText.textualContent.map { textView(for: $0) }
    }

    private var color: MultipleColorSemanticToken {
        // Over-limit forces error colour regardless of status.
        if isOverLimit { return theme.colors.contentStatusNegative }
        switch status {
        case .enabled, .readOnly, .loading:
            return theme.colors.contentMuted
        case .error, .richError, .textualError:
            return theme.colors.contentStatusNegative
        case .disabled:
            return theme.colors.actionDisabled
        }
    }

    // MARK: - Attributed string builders

    /// "X characters remaining" - count is bold (weight 700), rest is regular.
    /// Uses inlinePresentationIntent = .stronglyEmphasized so the parent
    /// .labelDefaultMedium font family and size are preserved.
    private func remainingCharactersText(count: Int) -> AttributedString {
        let countString = "\(count)"
        let fullString = String(format: "core_textArea_charactersRemaining".localized(), count)
        var attributed = AttributedString(fullString)
        if let range = attributed.range(of: countString) {
            attributed[range].inlinePresentationIntent = .stronglyEmphasized
        }
        return attributed
    }

    /// "You have X characters too many." - excess count is bold, rest is regular.
    private func tooManyCharactersText(excess: Int) -> String {
        String(format: "core_textArea_charactersTooMany".localized(), excess)
    }
}
#endif
