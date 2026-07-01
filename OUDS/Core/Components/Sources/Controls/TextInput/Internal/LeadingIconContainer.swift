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

struct LeadingIconContainer: View {

    // MARK: - Properties

    let leadingIcon: OUDSImage?
    let status: OUDSTextInput.Status

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        leadingIcon?.asset?
            .resizable()
            .renderingMode(leadingIcon?.renderingMode ?? .template)
            .aspectRatio(contentMode: .fit)
            .frame(height: theme.textInput.sizeLeadingIcon, alignment: .center)
            .foregroundColor(color)
            .toFlip(leadingIcon?.flipped ?? false)
            .accessibilityHidden(true)
    }

    // MARK: - Helper

    private var color: MultipleColorSemanticToken {
        switch status {
        case .enabled, .error, .richError, .loading, .readOnly:
            theme.colors.contentMuted
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
#endif
