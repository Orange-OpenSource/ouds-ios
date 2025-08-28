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

struct HelperTextContainer: View {

    // MARK: - Properties

    let helperText: String
    let isError: Bool
    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Body

    var body: some View {
        Text(helperText)
            .typeLabelDefaultMedium(theme)
            .oudsForegroundColor(color)
            .padding(.top, theme.textInput.textInputSpacePaddingBlockTopHelperText)
            .padding(.horizontal, theme.textInput.textInputSpacePaddingInlineDefault)
    }

    // MARK: - Helper

    private var color: MultipleColorSemanticTokens {
        if isError {
            theme.colors.colorContentStatusNegative
        } else {
            isEnabled ? theme.colors.colorContentMuted : theme.colors.colorActionDisabled
        }
    }
}

