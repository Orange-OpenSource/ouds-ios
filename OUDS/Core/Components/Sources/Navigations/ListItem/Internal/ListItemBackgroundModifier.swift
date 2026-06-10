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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

/// A `ViewModifier` to apply to `ListItemContent` views so as to define the background
struct ListItemBackgroundModifier: ViewModifier {

    // MARK: - Properties

    let interactionState: InteractionState

    @Environment(\.theme) private var theme
    @Environment(\.oudsListItemContentStyle) private var style

    // MARK: - Body

    func body(content: Content) -> some View {
        switch style {
        case .outlined:
            content
        case let .standard(_, backgroundFlag):
            if let background = color(with: backgroundFlag) {
                content.background(background)
            } else {
                content
            }
        }
    }

    // MARK: - Helpers

    private func color(with backgroundFlag: Bool) -> MultipleColorSemanticToken? {
        switch interactionState {
        case .enabled:
            backgroundFlag ? theme.colors.actionSupportEnabled : nil
        case .disabled:
            backgroundFlag ? theme.colors.actionSupportEnabled : nil
        case .hover:
            theme.colors.actionSupportHover
        case .pressed:
            theme.colors.actionSupportPressed
        case .readOnly:
            theme.colors.actionSupportEnabled
        }
    }
}
