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

extension NamedSpace {

    enum PaddingInset: String, CaseIterable, NamedSpaceToken {
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

        var name: String { self.rawValue }

        func token(from theme: OUDSTheme) -> SpaceSemanticToken {
            switch self {
            case .spaceInsetNone:
                return theme.spaces.spaceInsetNone
            case .spaceInsetSmash:
                return theme.spaces.spaceInsetSmash
            case .spaceInsetShortest:
                return theme.spaces.spaceInsetShortest
            case .spaceInsetShorter:
                return theme.spaces.spaceInsetShorter
            case .spaceInsetShort:
                return theme.spaces.spaceInsetShort
            case .spaceInsetMedium:
                return theme.spaces.spaceInsetMedium
            case .spaceInsetTall:
                return theme.spaces.spaceInsetTall
            case .spaceInsetTaller:
                return theme.spaces.spaceInsetTaller
            case .spaceInsetTallest:
                return theme.spaces.spaceInsetTallest
            case .spaceInsetSpacious:
                return theme.spaces.spaceInsetSpacious
            }
        }
    }
}
