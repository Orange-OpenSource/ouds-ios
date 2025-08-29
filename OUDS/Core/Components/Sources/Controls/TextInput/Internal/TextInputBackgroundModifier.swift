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

struct TextInputBackgroundModifier: ViewModifier {

    // MARK: - Stored properties

    let style: OUDSTextInput.Style
    let status: OUDSTextInput.Status
    @Environment(\.theme) private var theme
    @Environment(\.oudsRoundedTextInput) private var rounded
    @Environment(\.isFocused) private var focused
    @State private var hover = false

    // MARK: - Body

    func body(content: Content) -> some View {
        switch style {
        case .default:
            content
                .onHover { hover in
                    self.hover = hover
                }
                .oudsBackground(color)
        case .alternative:
            content
        }
    }

    private var color: MultipleColorSemanticTokens {
        switch status {
        case .default:
            if hover {
                return theme.colors.colorActionSupportHover
            }
            if focused {
                return theme.colors.colorActionSupportPressed
            }
            return theme.colors.colorActionSupportEnabled
        case .error:
            return theme.colors.colorSurfaceStatusNegativeMuted
        case .loading:
            return theme.colors.colorActionSupportLoading
        case .readOnly:
            return theme.colors.colorActionSupportDisabled
        case .disbaled:
            return theme.colors.colorActionSupportDisabled
        }
    }
}

