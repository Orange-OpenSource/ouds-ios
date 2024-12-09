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
import OUDSTokensSemantic

extension NamedColor {

    enum Overlay: String, CaseIterable {
        case colorOverlayDefault
        case colorOverlayDrag
        case colorOverlayEmphasized
        case colorOverlayModal

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorOverlayDefault:
                return theme.colorOverlayDefault
            case .colorOverlayDrag:
                return theme.colorOverlayDrag
            case .colorOverlayEmphasized:
                return theme.colorOverlayEmphasized
            case .colorOverlayModal:
                return theme.colorOverlayModal
            }
        }
    }
}
