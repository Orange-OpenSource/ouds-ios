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

struct InputContainer: View {

    let text: Binding<String>
    let label: String
    let placeholder: String?
    let prefix: String?
    let suffix: String?
    let status: OUDSTextInput.Status
    let interactionState: TextInputInteractionState

    @Environment(\.theme) private var theme

    var body: some View {
        HStack(alignment: .center, spacing: theme.textInput.spaceColumnGapInlineText) {

            // Prefix container
            if let placeholder,
               let prefix,
               !prefix.isEmpty,
               (placeholder.isEmpty && interactionState == .focused) || !placeholder.isEmpty || !text.wrappedValue.isEmpty
            {
                Text(prefix)
                    .labelDefaultLarge(theme)
                    .oudsForegroundColor(prefixSuffixColor)
                    .accessibilityHidden(true)
            }

            // Input text container
            InputText(label: placeholder ?? label,
                      text: text,
                      status: status)

            // Suffix container
            if let placeholder,
               let suffix,
               !suffix.isEmpty,
               (placeholder.isEmpty && interactionState == .focused) || !placeholder.isEmpty || !text.wrappedValue.isEmpty
            {
                Text(suffix)
                    .labelDefaultLarge(theme)
                    .oudsForegroundColor(prefixSuffixColor)
                    .accessibilityHidden(true)
            }
        }
    }

    private var prefixSuffixColor: MultipleColorSemanticTokens {
        status == .disabled ? theme.colors.actionDisabled : theme.colors.contentMuted
    }
}
#endif
