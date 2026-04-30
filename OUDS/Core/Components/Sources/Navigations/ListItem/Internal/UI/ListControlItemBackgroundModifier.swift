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

/// A `ViewModifier` to apply to `ControlItem` views so as to define the background
struct ListControlItemBackgroundModifier: ViewModifier {

    // MARK: Stored properties

    let interactionState: InteractionState
    let mode: Mode

    enum Mode {
        case outlined
        case `default`(forceEnabledColor: Bool)
    }

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        if let color {
            content.background(color)
        } else {
            content
        }
    }

    // MARK: - Helpers

    private var color: MultipleColorSemanticToken? {
        switch mode {
        case .outlined:
            outlinedColor
        case let .default(forceEnabledColor):
            defaultColor(forceEnabledColor: forceEnabledColor)
        }
    }

    private func defaultColor(forceEnabledColor: Bool) -> MultipleColorSemanticToken? {
        switch interactionState {
        case .enabled:
            forceEnabledColor ? theme.colors.actionSupportEnabled : nil
        case .hover:
            theme.colors.actionSupportHover
        case .pressed:
            theme.colors.actionSupportPressed
        case .disabled:
            theme.colors.actionSupportEnabled
        case .readOnly:
            theme.colors.actionSupportEnabled
        }
    }

    private var outlinedColor: MultipleColorSemanticToken? {
        switch interactionState {
        case .readOnly:
            theme.colors.actionSupportDisabled
        default:
            nil
        }
    }
}
