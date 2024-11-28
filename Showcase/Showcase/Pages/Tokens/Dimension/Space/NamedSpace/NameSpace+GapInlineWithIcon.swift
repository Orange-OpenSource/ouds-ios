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

    enum GapInlineWithIcon: String, CaseIterable, NamedSpaceToken {
        case spaceColumnGapWithIconNone
        case spaceColumnGapWithIconShortest
        case spaceColumnGapWithIconShorter
        case spaceColumnGapWithIconShort
        case spaceColumnGapWithIconMedium
        case spaceColumnGapWithIconTall

        var name: String { self.rawValue }

        func token(from theme: OUDSTheme) -> SpaceSemanticToken {
            switch self {
            case .spaceColumnGapWithIconNone:
                return theme.spaceColumnGapWithIconNone
            case .spaceColumnGapWithIconShortest:
                return theme.spaceColumnGapWithIconShortest
            case .spaceColumnGapWithIconShorter:
                return theme.spaceColumnGapWithIconShorter
            case .spaceColumnGapWithIconShort:
                return theme.spaceColumnGapWithIconShort
            case .spaceColumnGapWithIconMedium:
                return theme.spaceColumnGapWithIconMedium
            case .spaceColumnGapWithIconTall:
                return theme.spaceColumnGapWithIconTall
            }
        }
    }
}
