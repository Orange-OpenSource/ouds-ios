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

struct TextAreaHelperTextContainer: View {

    // MARK: - Properties

    let helperText: OUDSTextArea.HelperText?
    let status: OUDSTextArea.Status

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        // On error status the error message always takes priority over the helper text.
        // On other statuses, render the helper text if provided.
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

    /// Returns the `Text` view to display, or `nil` when there is nothing to show.
    ///
    /// - `.error` status: plain `Text` with the error message.
    /// - `.plain`: plain `Text` with the caller-supplied string.
    /// - `.charactersRemaining`: `Text` built from an `AttributedString` where the integer
    ///   count is **bold** and the surrounding localised copy stays regular weight.
    private var renderedText: Text? {
        switch status {
        case let .error(message):
            Text(message)

        case .enabled, .readOnly, .disabled:
            switch helperText {
            case let .plain(string):
                Text(string)
            case let .charactersRemaining(count):
                Text(attributedRemainingText(count: count))
            case .none:
                nil
            }
        }
    }

    private var color: MultipleColorSemanticToken {
        switch status {
        case .enabled, .readOnly:
            theme.colors.contentMuted
        case .error:
            theme.colors.contentStatusNegative
        case .disabled:
            theme.colors.actionDisabled
        }
    }

    // MARK: - Attributed string builder

    /// Builds an `AttributedString` for the remaining-characters sentence where the integer
    /// count is rendered with a **bold** font weight and the surrounding text stays regular.
    private func attributedRemainingText(count: Int) -> AttributedString {
        let countString = "\(count)"
        let fullString = String(format: "core_textArea_charactersRemaining".localized(), count)

        var attributed = AttributedString(fullString)

        // Apply bold only to the numeric portion.
        if let range = attributed.range(of: countString) {
            attributed[range].font = .body.bold()
        }

        return attributed
    }
}
#endif
