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

    enum GapStack: String, CaseIterable, NamedSpaceToken {
        case spaceRowGapNone
        case spaceRowGapShortest
        case spaceRowGapShorter
        case spaceRowGapShort
        case spaceRowGapMedium
        case spaceRowGapTall

        var name: String { self.rawValue }

        func token(from theme: OUDSTheme) -> SpaceSemanticToken {
            switch self {
            case .spaceRowGapNone:
                return theme.spaces.spaceRowGapNone
            case .spaceRowGapShortest:
                return theme.spaces.spaceRowGapShortest
            case .spaceRowGapShorter:
                return theme.spaces.spaceRowGapShorter
            case .spaceRowGapShort:
                return theme.spaces.spaceRowGapShort
            case .spaceRowGapMedium:
                return theme.spaces.spaceRowGapMedium
            case .spaceRowGapTall:
                return theme.spaces.spaceRowGapTall
            }
        }
    }
}
