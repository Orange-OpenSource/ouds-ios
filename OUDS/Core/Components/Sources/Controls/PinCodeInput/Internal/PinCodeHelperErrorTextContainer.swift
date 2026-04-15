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

    let helperText: String?
    let status: OUDSPinCodeInput.Status

    @Environment(\.theme) private var theme

    var body: some View {
        if !text.isEmpty {
            Text(text)
                .labelDefaultMedium(theme)
                .foregroundColor(color)
                .multilineTextAlignment(.leading)
                .padding(.top, theme.textInput.spacePaddingBlockTopHelperText)
        }
    }

    private var color: MultipleColorSemanticToken {
        switch status {
        case .error:
            theme.colors.contentStatusNegative
        case .enabled:
            theme.colors.contentMuted
        }
    }

    private var text: String {
        switch status {
        case let .error(message):
            message
        case .enabled:
            helperText ?? ""
        }
    }
}
#endif
