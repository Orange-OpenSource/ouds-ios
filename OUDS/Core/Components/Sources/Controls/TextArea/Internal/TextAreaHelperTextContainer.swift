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

    let helperText: String?
    let status: OUDSTextArea.Status

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        if !text.isEmpty {
            Text(text)
                .labelDefaultMedium(theme)
                .foregroundColor(color)
                .multilineTextAlignment(.leading)
                .padding(.top, theme.textArea.spacePaddingBlockTopHelperText)
                .padding(.horizontal, theme.textArea.spacePaddingInlineDefault)
        }
    }

    // MARK: - Helper

    private var color: MultipleColorSemanticToken {
        switch status {
        case .enabled:
            theme.colors.contentMuted
        case .error:
            theme.colors.contentStatusNegative
        case .readOnly:
            theme.colors.contentMuted
        case .disabled:
            theme.colors.actionDisabled
        }
    }

    private var text: String {
        switch status {
        case let .error(message):
            message
        case .enabled, .readOnly, .disabled:
            helperText ?? ""
        }
    }
}
#endif
