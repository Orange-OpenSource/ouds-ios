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

struct PinCodeHelperErrorTextContainer: View {

    let helperText: TextualContent?
    let status: OUDSPinCodeInput.Status

    @Environment(\.theme) private var theme

    var body: some View {
        if !text.isEmpty {
            view(for: text)
                .labelDefaultMedium(theme)
                .foregroundColor(color)
                .multilineTextAlignment(.leading)
                .padding(.top, theme.textInput.spacePaddingBlockTopHelperText)
        }
    }

    private var color: MultipleColorSemanticToken {
        switch status {
        case .error, .richError:
            theme.colors.contentStatusNegative
        case .enabled:
            theme.colors.contentMuted
        }
    }

    private var text: String {
        switch status {
        case let .error(message):
            message
        case let .richError(message):
            String(message.characters)
        case .enabled:
            helperText?.rawValue ?? ""
        }
    }

    private func view(for text: String) -> Text {
        switch status {
        case let .error(message):
            Text(message)
        case let .richError(message):
            Text(message)
        case .enabled:
            if let helperText {
                textView(for: helperText)
            } else {
                Text("") // Will never happen
            }
        }
    }
}
#endif
