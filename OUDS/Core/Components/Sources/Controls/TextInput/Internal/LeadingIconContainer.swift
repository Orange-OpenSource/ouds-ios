//
// Software Name: OUDSThemesContract iOS
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
            .frame(height: theme.textInput.sizeLeadingIcon, alignment: .center)
            .oudsForegroundColor(color)
            .toFlip(flip)
            .accessibilityHidden(true)
    }

    // MARK: - Helper

    private var color: MultipleColorSemanticTokens {
        switch status {
        case .enabled, .error, .loading, .readOnly:
            theme.colors.contentMuted
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
