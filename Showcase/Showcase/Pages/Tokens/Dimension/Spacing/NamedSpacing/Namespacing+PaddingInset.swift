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

extension NamedSpacing {

    enum PaddingInset: String, CaseIterable {
        case spaceInsetNone
        case spaceInsetSmash
        case spaceInsetShortest
        case spaceInsetShorter
        case spaceInsetShort
        case spaceInsetMedium
        case spaceInsetTall
        case spaceInsetTaller
        case spaceInsetTallest
        case spaceInsetSpacious

        func token(from theme: OUDSTheme) -> SpacingSemanticToken {
            switch self {
            case .spaceInsetNone:
                return theme.spaceInsetNone
            case .spaceInsetSmash:
                return theme.spaceInsetSmash
            case .spaceInsetShortest:
                return theme.spaceInsetShortest
            case .spaceInsetShorter:
                return theme.spaceInsetShorter
            case .spaceInsetShort:
                return theme.spaceInsetShort
            case .spaceInsetMedium:
                return theme.spaceInsetMedium
            case .spaceInsetTall:
                return theme.spaceInsetTall
            case .spaceInsetTaller:
                return theme.spaceInsetTaller
            case .spaceInsetTallest:
                return theme.spaceInsetTallest
            case .spaceInsetSpacious:
                return theme.spaceInsetSpacious
            }
        }
    }
}
