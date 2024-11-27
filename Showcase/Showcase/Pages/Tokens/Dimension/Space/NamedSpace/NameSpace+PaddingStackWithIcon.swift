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

    enum PaddingStackWithIcon: String, CaseIterable, NamedSpaceToken {
        case spacePaddingBlockWithIconNone
        case spacePaddingBlockWithIconShorter
        case spacePaddingBlockWithIconShort
        case spacePaddingBlockWithIconMedium
        case spacePaddingBlockWithIconTall
        case spacePaddingBlockWithIconTaller

        var name: String { self.rawValue }

        func token(from theme: OUDSTheme) -> SpaceSemanticToken {
            switch self {
            case .spacePaddingBlockWithIconNone:
                return theme.spacePaddingBlockWithIconNone
            case .spacePaddingBlockWithIconShorter:
                return theme.spacePaddingBlockWithIconShorter
            case .spacePaddingBlockWithIconShort:
                return theme.spacePaddingBlockWithIconShort
            case .spacePaddingBlockWithIconMedium:
                return theme.spacePaddingBlockWithIconMedium
            case .spacePaddingBlockWithIconTall:
                return theme.spacePaddingBlockWithIconTall
            case .spacePaddingBlockWithIconTaller:
                return theme.spacePaddingBlockWithIconTaller
            }
        }
    }
}
