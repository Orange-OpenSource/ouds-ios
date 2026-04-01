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

import OUDSTokensSemantic
import SwiftUI

struct PinCodeHelperErrorTextContainer: View {

    let text: String
    let isError: Bool

    @Environment(\.theme) private var theme

    var body: some View {
        if !text.isEmpty {
            Text(text)
                .labelDefaultMedium(theme)
                .oudsForegroundColor(color)
                .multilineTextAlignment(.leading)
                .padding(.top, theme.textInput.spacePaddingBlockTopHelperText)
        }
    }

    private var color: MultipleColorSemanticToken {
        if isError {
            theme.colors.contentStatusNegative
        } else {
            theme.colors.contentMuted
        }
    }
}
