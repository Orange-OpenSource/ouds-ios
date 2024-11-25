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

    enum Always: String, CaseIterable {
        case colorAlwaysBlack
        case colorAlwaysWhite
        case colorAlwaysWarning
        case colorAlwaysNegative
        case colorAlwaysPositive
        case colorAlwaysInfo
        case colorAlwaysAccent
        case colorAlwaysOnBgBlack
        case colorAlwaysOnBgWhite
        case colorAlwaysOnBgWarning
        case colorAlwaysOnBgNegative
        case colorAlwaysOnBgPositive
        case colorAlwaysOnBgInfo
        case colorAlwaysOnBgAccent

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorAlwaysBlack:
                return theme.colorAlwaysBlack
            case .colorAlwaysWhite:
                return theme.colorAlwaysWhite
            case .colorAlwaysWarning:
                return theme.colorAlwaysWarning
            case .colorAlwaysNegative:
                return theme.colorAlwaysNegative
            case .colorAlwaysPositive:
                return theme.colorAlwaysPositive
            case .colorAlwaysInfo:
                return theme.colorAlwaysInfo
            case .colorAlwaysAccent:
                return theme.colorAlwaysAccent
            case .colorAlwaysOnBgBlack:
                return theme.colorAlwaysOnBgBlack
            case .colorAlwaysOnBgWhite:
                return theme.colorAlwaysOnBgWhite
            case .colorAlwaysOnBgWarning:
                return theme.colorAlwaysOnBgWarning
            case .colorAlwaysOnBgNegative:
                return theme.colorAlwaysOnBgNegative
            case .colorAlwaysOnBgPositive:
                return theme.colorAlwaysOnBgPositive
            case .colorAlwaysOnBgInfo:
                return theme.colorAlwaysOnBgInfo
            case .colorAlwaysOnBgAccent:
                return theme.colorAlwaysOnBgAccent
            }
        }
    }
}
