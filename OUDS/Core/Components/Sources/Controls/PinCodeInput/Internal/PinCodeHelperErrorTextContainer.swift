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

    let helperText: OUDSTextualContent?
    let status: OUDSPinCodeInput.Status

    @Environment(\.theme) private var theme

    var body: some View {
        if !text.isEmpty {
            textView()
                .labelDefaultMedium(theme)
                .foregroundColor(color)
                .multilineTextAlignment(.leading)
                .padding(.top, theme.textInput.spacePaddingBlockTopHelperText)
        }
    }

    private var color: MultipleColorSemanticToken {
        status.errorMessage != nil ? theme.colors.contentStatusNegative : theme.colors.contentMuted
    }

    // In error status, the error message replaces the helper text
    private var content: OUDSTextualContent? {
        status.errorMessage ?? helperText
    }

    private var text: String {
        content?.rawValue ?? ""
    }

    private func textView() -> Text {
        if let content {
            textView(for: content)
        } else {
            Text("") // Will never happen
        }
    }
}
#endif
