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

    enum Scaled: String, CaseIterable {
        case spaceScaledNone
        case spaceScaledSmash
        case spaceScaledShortest
        case spaceScaledShorter
        case spaceScaledShort
        case spaceScaledMedium
        case spaceScaledTall
        case spaceScaledTaller
        case spaceScaledTallest
        case spaceScaledSpacious

        func token(from theme: OUDSTheme) -> MultipleSpaceSemanticTokens {
            switch self {
            case .spaceScaledNone:
                return theme.spaces.spaceScaledNone
            case .spaceScaledSmash:
                return theme.spaces.spaceScaledSmash
            case .spaceScaledShortest:
                return theme.spaces.spaceScaledShortest
            case .spaceScaledShorter:
                return theme.spaces.spaceScaledShorter
            case .spaceScaledShort:
                return theme.spaces.spaceScaledShort
            case .spaceScaledMedium:
                return theme.spaces.spaceScaledMedium
            case .spaceScaledTall:
                return theme.spaces.spaceScaledTall
            case .spaceScaledTaller:
                return theme.spaces.spaceScaledTaller
            case .spaceScaledTallest:
                return theme.spaces.spaceScaledTallest
            case .spaceScaledSpacious:
                return theme.spaces.spaceScaledSpacious
            }
        }
    }
}
