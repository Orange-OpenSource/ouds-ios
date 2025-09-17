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

    // MARK: - Properties

    let leadingIcon: Image?
    let flip: Bool
    let status: OUDSTextInput.Status

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        leadingIcon?
            .resizable()
            .renderingMode(.template)
            .aspectRatio(contentMode: .fit)
            .frame(height: theme.textInput.textInputSizeLeadingIcon, alignment: .center)
            .oudsForegroundColor(color)
            .toFlip(flip)
    }

    // MARK: - Helper

    private var color: MultipleColorSemanticTokens {
        switch status {
        case .default, .error, .loading, .readOnly:
            theme.colors.colorContentMuted
        case .disabled:
            theme.colors.colorActionDisabled
        }
    }
}
