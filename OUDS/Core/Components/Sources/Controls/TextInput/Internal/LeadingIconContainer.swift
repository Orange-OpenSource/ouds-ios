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

struct LeadingIconContainer: View {

    let leadingIcon: Image?
    let status: OUDSTextInput.Status
    @Environment(\.theme) private var theme

    var body: some View {
        leadingIcon?
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: theme.textInput.textInputSizeLeadingIcon, alignment: .center)
            .oudsForegroundColor(color)
    }

    private var color: MultipleColorSemanticTokens {
        switch status {
        case .default, .error, .loading, .readOnly:
            return theme.colors.colorContentMuted
        case .disbaled:
            return theme.colors.colorActionDisabled
        }
    }
}
