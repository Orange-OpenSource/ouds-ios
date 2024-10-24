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

    enum PaddingStack: String, CaseIterable {
        case spacePaddingBlockNone
        case spacePaddingBlockShorter
        case spacePaddingBlockShort
        case spacePaddingBlockMedium
        case spacePaddingBlockTall
        case spacePaddingBlockTaller
        case spacePaddingBlockTallest

        func token(from theme: OUDSTheme) -> SpacingSemanticToken {
            switch self {
            case .spacePaddingBlockNone:
                return theme.spacePaddingBlockNone
            case .spacePaddingBlockShorter:
                return theme.spacePaddingBlockShorter
            case .spacePaddingBlockShort:
                return theme.spacePaddingBlockShort
            case .spacePaddingBlockMedium:
                return theme.spacePaddingBlockMedium
            case .spacePaddingBlockTall:
                return theme.spacePaddingBlockTall
            case .spacePaddingBlockTaller:
                return theme.spacePaddingBlockTaller
            case .spacePaddingBlockTallest:
                return theme.spacePaddingBlockTallest
            }
        }
    }
}
