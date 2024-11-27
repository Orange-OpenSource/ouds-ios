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

    enum PaddingInlineWithArrow: String, CaseIterable, NamedSpaceToken {
        case spacePaddingInlineWithArrowNone
        case spacePaddingInlineWithArrowShortest
        case spacePaddingInlineWithArrowShorter
        case spacePaddingInlineWithArrowShort
        case spacePaddingInlineWithArrowMedium
        case spacePaddingInlineWithArrowTall
        case spacePaddingInlineWithArrowTaller
        case spacePaddingInlineWithArrowTallest

        var name: String { self.rawValue }

        func token(from theme: OUDSTheme) -> SpaceSemanticToken {
            switch self {
            case .spacePaddingInlineWithArrowNone:
                return theme.spacePaddingInlineWithArrowNone
            case .spacePaddingInlineWithArrowShortest:
                return theme.spacePaddingInlineWithArrowShortest
            case .spacePaddingInlineWithArrowShorter:
                return theme.spacePaddingInlineWithArrowShorter
            case .spacePaddingInlineWithArrowShort:
                return theme.spacePaddingInlineWithArrowShort
            case .spacePaddingInlineWithArrowMedium:
                return theme.spacePaddingInlineWithArrowMedium
            case .spacePaddingInlineWithArrowTall:
                return theme.spacePaddingInlineWithArrowTall
            case .spacePaddingInlineWithArrowTaller:
                return theme.spacePaddingInlineWithArrowTaller
            case .spacePaddingInlineWithArrowTallest:
                return theme.spacePaddingInlineWithArrowTallest
            }
        }
    }
}
