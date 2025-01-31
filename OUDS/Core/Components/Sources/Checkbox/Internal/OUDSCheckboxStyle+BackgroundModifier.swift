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

import OUDS
import OUDSFoundations
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

// TODO: #264 - Add doc
struct CheckboxSelectorBackgroundModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSCheckbox.Status
    let state: OUDSCheckbox.State

    // MARK: - Environment

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    func body(content: Content) -> some View {
        content.background(appliedColor)
    }

    // MARK: - Private helpers

    private var appliedColor: Color {
        switch state {
        case .hover:
            return theme.listItem.listItemColorBgHover.color(for: colorScheme)
        case .pressed:
            return theme.listItem.listItemColorBgPressed.color(for: colorScheme)
        default:
            return Color.clear
        }
    }
}
