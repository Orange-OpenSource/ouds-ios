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

    enum GapStackWithIcon: String, CaseIterable {
        case spaceRowGapWithIconNone
        case spaceRowGapWithIconShortest
        case spaceRowGapWithIconShorter
        case spaceRowGapWithIconShort
        case spaceRowGapWithIconMedium
        case spaceRowGapWithIconTall

        func token(from theme: OUDSTheme) -> SpaceSemanticToken {
            switch self {
            case .spaceRowGapWithIconNone:
                return theme.spaceRowGapWithIconNone
            case .spaceRowGapWithIconShortest:
                return theme.spaceRowGapWithIconShortest
            case .spaceRowGapWithIconShorter:
                return theme.spaceRowGapWithIconShorter
            case .spaceRowGapWithIconShort:
                return theme.spaceRowGapWithIconShort
            case .spaceRowGapWithIconMedium:
                return theme.spaceRowGapWithIconMedium
            case .spaceRowGapWithIconTall:
                return theme.spaceRowGapWithIconTall
            }
        }
    }
}
