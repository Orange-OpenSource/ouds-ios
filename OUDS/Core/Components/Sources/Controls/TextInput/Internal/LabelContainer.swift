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

struct LabelContainer: View {

    // MARK: - Properties

    let label: String
    let status: OUDSTextInput.Status
    let interactionState: TextInputInteractionState

    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        Text(label)
            .labelDefaultSmall(theme)
            .oudsForegroundColor(color)
            .frame(maxWidth: .infinity, alignment: .leading)
    }

    // MARK: Helper

    private var color: MultipleColorSemanticTokens {
        switch status {
        case .enabled, .loading, .readOnly:
            theme.colors.contentMuted
        case .error:
            switch interactionState {
            case .idle:
                theme.colors.actionNegativeEnabled
            case .focused:
                theme.colors.actionNegativeFocus
            case .hover:
                theme.colors.actionNegativeHover
            }
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
