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

/// Displays an helper message below ``ListItemContent`` text.
/// and updates text color according to the ``OUDSButtonInteractionState``.
struct ListItemHelperTextContainer: View {

    // MARK: Properties

    let text: TextualContent?
    let interactionState: OUDSButtonInteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        if let text, !text.isEmpty {
            textView(for: text)
                .labelDefaultMedium(theme)
                .foregroundColor(color)
                .multilineTextAlignment(.leading)
                .padding(.top, theme.listItem.spacePaddingBlockTopHelperText)
                .padding(.horizontal, theme.listItem.spacePaddingInline)
        }
    }

    // MARK: Helper

    private var color: MultipleColorSemanticToken {
        interactionState == .disabled ? theme.colors.actionDisabled : theme.colors.contentMuted
    }
}
