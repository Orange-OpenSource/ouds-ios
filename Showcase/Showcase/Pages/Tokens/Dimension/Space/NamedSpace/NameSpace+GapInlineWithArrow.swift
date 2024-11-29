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

    enum GapInlineWithArrow: String, CaseIterable, NamedSpaceToken {
        case spaceColumnGapWitharrowNone
        case spaceColumnGapWitharrowShortest
        case spaceColumnGapWitharrowShorter
        case spaceColumnGapWitharrowShort
        case spaceColumnGapWitharrowMedium
        case spaceColumnGapWitharrowTall

        var name: String { self.rawValue }

        func token(from theme: OUDSTheme) -> SpaceSemanticToken {
            switch self {
            case .spaceColumnGapWitharrowNone:
                return theme.spaceColumnGapWithArrowNone
            case .spaceColumnGapWitharrowShortest:
                return theme.spaceColumnGapWithArrowShortest
            case .spaceColumnGapWitharrowShorter:
                return theme.spaceColumnGapWithArrowShorter
            case .spaceColumnGapWitharrowShort:
                return theme.spaceColumnGapWithArrowShort
            case .spaceColumnGapWitharrowMedium:
                return theme.spaceColumnGapWithArrowMedium
            case .spaceColumnGapWitharrowTall:
                return theme.spaceColumnGapWithArrowTall
            }
        }
    }
}
