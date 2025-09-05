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

struct Inputtext: View {

    // MARK: - Stored properties

    let label: String
    let text: Binding<String>
    let labelAsPlaceholder: Bool
    let status: OUDSTextInput.Status
    let interactionState: TextInputInteractionState

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    var body: some View {
        TextField(text: text) {
            Text(label)
                .minimumScaleFactor(1.0) // Use to fix font size adaptation if long text (scroll is prefered)
                .typeLabelDefaultLarge(theme)
                .oudsForegroundStyle(color)
        }
        .multilineTextAlignment(.leading)
        .tint(cursorColor.color(for: colorScheme))
        .disabled(status == .disbaled || status == .readOnly || status == .loading)
    }

    // MARK: - Helper

    private var cursorColor: MultipleColorSemanticTokens {
        status == .error ? theme.colors.colorActionNegativePressed : theme.colors.colorContentDefault
    }

    private var color: MultipleColorSemanticTokens {
        switch status {
        case .default:
            return theme.colors.colorContentMuted
        case .error:
            return errorColor
        case .loading:
            return theme.colors.colorContentMuted
        case .readOnly:
            return theme.colors.colorContentMuted
        case .disbaled:
            return theme.colors.colorActionDisabled
        }
    }

    private var errorColor: MultipleColorSemanticTokens {
        if labelAsPlaceholder {
            return theme.colors.colorContentMuted
        } else {
            switch interactionState {
            case .idle:
                return theme.colors.colorActionNegativeEnabled
            case .focused:
                return theme.colors.colorActionNegativeFocus
            case .hover:
                return theme.colors.colorActionNegativeHover
            }
        }
    }
}
