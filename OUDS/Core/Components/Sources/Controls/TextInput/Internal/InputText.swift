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

struct InputText: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let status: OUDSTextInput.Status
    let interactionState: TextInputInteractionState

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    var body: some View {
        TextField(text: text) {
            Text(label)
                .minimumScaleFactor(1.0) // Use to fix font size adaptation if long text (scroll is prefered)
                .labelDefaultLarge(theme)
                .oudsForegroundStyle(theme.colors.contentMuted)
        }
        .oudsForegroundColor(inputTextColor)
        .multilineTextAlignment(.leading)
        .tint(cursorColor.color(for: colorScheme))
        .disabled(status == .disabled || status == .readOnly || status == .loading)
    }

    // MARK: - Helper

    private var cursorColor: MultipleColorSemanticTokens {
        switch status {
        case .error:
            theme.colors.actionNegativePressed
        default:
            theme.colors.contentDefault
        }
    }

    private var inputTextColor: MultipleColorSemanticTokens {
        status == .disabled ? theme.colors.actionDisabled : theme.colors.contentDefault
    }

    private var placeholderColor: MultipleColorSemanticTokens {
        switch status {
        case .enabled, .error, .loading, .readOnly:
            theme.colors.contentMuted
        case .disabled:
            theme.colors.actionDisabled
        }
    }
}
#endif
