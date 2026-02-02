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

struct HelperErrorTextContainer: View {

    // MARK: - Properties

    let helperText: String?
    let status: OUDSTextInput.Status

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        if !text.isEmpty {
            Text(text)
                .labelDefaultMedium(theme)
                .oudsForegroundColor(color)
                .padding(.top, theme.textInput.spacePaddingBlockTopHelperText)
                .padding(.horizontal, theme.textInput.spacePaddingInlineDefault)
        }
    }

    // MARK: - Helper

    private var color: MultipleColorSemanticToken {
        switch status {
        case .enabled:
            theme.colors.contentMuted
        case .error:
            theme.colors.contentStatusNegative
        case .loading: // Should not appear
            theme.colors.contentMuted
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
        case .enabled, .readOnly, .disabled, .loading:
            helperText ?? ""
        }
    }
}
#endif
