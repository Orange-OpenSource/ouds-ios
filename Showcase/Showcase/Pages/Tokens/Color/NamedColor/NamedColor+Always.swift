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
        case colorAlwaysOnBackgroundBlack
        case colorAlwaysOnBackgroundWhite
        case colorAlwaysOnBackgroundWarning
        case colorAlwaysOnBackgroundNegative
        case colorAlwaysOnBackgroundPositive
        case colorAlwaysOnBackgroundInfo
        case colorAlwaysOnBackgroundAccent

        func token(from theme: OUDSTheme) -> ColorSemanticToken {
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
            case .colorAlwaysOnBackgroundBlack:
                return theme.colorAlwaysOnBackgroundBlack
            case .colorAlwaysOnBackgroundWhite:
                return theme.colorAlwaysOnBackgroundWhite
            case .colorAlwaysOnBackgroundWarning:
                return theme.colorAlwaysOnBackgroundWarning
            case .colorAlwaysOnBackgroundNegative:
                return theme.colorAlwaysOnBackgroundNegative
            case .colorAlwaysOnBackgroundPositive:
                return theme.colorAlwaysOnBackgroundPositive
            case .colorAlwaysOnBackgroundInfo:
                return theme.colorAlwaysOnBackgroundInfo
            case .colorAlwaysOnBackgroundAccent:
                return theme.colorAlwaysOnBackgroundAccent
            }
        }
    }
}
