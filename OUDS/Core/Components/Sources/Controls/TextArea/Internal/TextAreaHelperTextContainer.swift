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
        switch status {
        case let .error(message):
            return Text(message)
        case let .richError(message):
            return Text(message)
        case .enabled, .readOnly, .loading, .disabled:
            if isOverLimit, case .charactersMaxCount = helperText {
                return Text(tooManyCharactersText(excess: excessCount))
            }
            switch helperText {
            case let .plain(string):
                return Text(string)
            case let .rich(string):
                return Text(string)
            case .charactersMaxCount:
                return Text(remainingCharactersText(count: remainingCount))
            case .none:
                return nil
            }
        }
    }

    private var color: MultipleColorSemanticToken {
        // Over-limit forces error colour regardless of status.
        if isOverLimit { return theme.colors.contentStatusNegative }
        switch status {
        case .enabled, .readOnly, .loading:
            return theme.colors.contentMuted
        case .error, .richError:
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
