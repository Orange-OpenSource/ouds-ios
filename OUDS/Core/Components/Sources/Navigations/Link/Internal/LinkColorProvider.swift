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

enum LinkColorProvider {

    static func colorContent(from theme: OUDSTheme, with interactionState: OUDSButtonInteractionState, useMonochrome: Bool) -> MultipleColorSemanticToken {
        switch interactionState {
        case .enabled:
            useMonochrome ? theme.link.monoColorContentEnabled : theme.link.colorContentEnabled
        case .hover:
            useMonochrome ? theme.link.monoColorContentHover : theme.link.colorContentHover
        case .pressed:
            useMonochrome ? theme.link.monoColorContentPressed : theme.link.colorContentPressed
        case .disabled, .readOnly:
            useMonochrome ? theme.link.monoColorContentDisabled : theme.colors.actionDisabled
        }
    }
}
