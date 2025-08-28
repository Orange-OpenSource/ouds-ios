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

struct LabelContainer: View {

    // MARK: - Properties

    let label: String
    let isError: Bool
    let showingPlaceholder: Bool
    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.isFocused) private var focused
    @State private var hover = false

    // MARK: - Body

    var body: some View {
        if showingPlaceholder {
            content.typeLabelDefaultSmall(theme)
        } else {
            content.typeLabelDefaultLarge(theme)
        }
    }

    // MARK: Helper

    private var content: some View {
        Text(label)
            .oudsForegroundColor(color)
            .frame(maxWidth: .infinity, maxHeight: theme.textInput.textInputSizeLabelMaxHeight, alignment: .leading)
            .onHover { hover = $0 }

    }

    private var color: MultipleColorSemanticTokens {
        if isError {
            if hover {
                return theme.colors.colorActionNegativeHover
            }
            if focused {
                return theme.colors.colorActionNegativeFocus
            }
            
            return theme.colors.colorActionNegativeEnabled
        } else {
            return isEnabled ? theme.colors.colorContentMuted: theme.colors.colorActionDisabled
        }
    }
}
