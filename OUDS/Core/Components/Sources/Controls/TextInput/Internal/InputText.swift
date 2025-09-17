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

struct InputText: View {

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
                .oudsForegroundStyle(placeholderColor)
        }
        .oudsForegroundColor(inputTextColor)
        .multilineTextAlignment(.leading)
        .tint(cursorColor.color(for: colorScheme))
        .disabled(status == .disabled || status == .readOnly || status == .loading)
    }

    // MARK: - Helper

    private var cursorColor: MultipleColorSemanticTokens {
        status == .error ? theme.colors.colorActionNegativePressed : theme.colors.colorContentDefault
    }

    private var inputTextColor: MultipleColorSemanticTokens {
        status == .disabled ? theme.colors.colorActionDisabled : theme.colors.colorContentDefault
    }

    private var placeholderColor: MultipleColorSemanticTokens {
        switch status {
        case .default:
            theme.colors.colorContentMuted
        case .error:
            placeholderErrorColor
        case .loading:
            theme.colors.colorContentMuted
        case .readOnly:
            theme.colors.colorContentMuted
        case .disabled:
            theme.colors.colorActionDisabled
        }
    }

    private var placeholderErrorColor: MultipleColorSemanticTokens {
        if labelAsPlaceholder {
            switch interactionState {
            case .idle:
                theme.colors.colorActionNegativeEnabled
            case .focused:
                theme.colors.colorActionNegativeFocus
            case .hover:
                theme.colors.colorActionNegativeHover
            }
        } else {
            theme.colors.colorContentMuted
        }
    }
}
