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
import SwiftUI

extension NamedSpace {

    enum Fixed: String, CaseIterable, NamedSpaceToken {
        case spaceFixedNone
        case spaceFixedSmash
        case spaceFixedShortest
        case spaceFixedShorter
        case spaceFixedShort
        case spaceFixedMedium
        case spaceFixedTall
        case spaceFixedTaller
        case spaceFixedTallest
        case spaceFixedSpacious
        case spaceFixedHuge
        case spaceFixedJumbo

        var name: String { self.rawValue }

        func token(from theme: OUDSTheme) -> SpaceSemanticToken {
            switch self {
            case .spaceFixedNone:
                return theme.spaceFixedNone
            case .spaceFixedSmash:
                return theme.spaceFixedSmash
            case .spaceFixedShortest:
                return theme.spaceFixedShortest
            case .spaceFixedShorter:
                return theme.spaceFixedShorter
            case .spaceFixedShort:
                return theme.spaceFixedShort
            case .spaceFixedMedium:
                return theme.spaceFixedMedium
            case .spaceFixedTall:
                return theme.spaceFixedTall
            case .spaceFixedTaller:
                return theme.spaceFixedTaller
            case .spaceFixedTallest:
                return theme.spaceFixedTallest
            case .spaceFixedSpacious:
                return theme.spaceFixedSpacious
            case .spaceFixedHuge:
                return theme.spaceFixedHuge
            case .spaceFixedJumbo:
                return theme.spaceFixedJumbo
            }
        }
    }
}
