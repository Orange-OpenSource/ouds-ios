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

    enum GapInline: String, CaseIterable {
        case spaceColumnGapNone
        case spaceColumnGapShorter
        case spaceColumnGapShort
        case spaceColumnGapMedium
        case spaceColumnGapTall
        case spaceColumnGapTaller

        func token(from theme: OUDSTheme) -> SpacingSemanticToken {
            switch self {
            case .spaceColumnGapNone:
                return theme.spaceColumnGapNone
            case .spaceColumnGapShorter:
                return theme.spaceColumnGapShorter
            case .spaceColumnGapShort:
                return theme.spaceColumnGapShort
            case .spaceColumnGapMedium:
                return theme.spaceColumnGapMedium
            case .spaceColumnGapTall:
                return theme.spaceColumnGapTall
            case .spaceColumnGapTaller:
                return theme.spaceColumnGapTaller
            }
        }
    }
}
