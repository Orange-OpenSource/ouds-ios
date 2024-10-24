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

    enum PaddingInlineWithIcon: String, CaseIterable {
        case spacePaddingInlineWithIconNone
        case spacePaddingInlineWithIconShortest
        case spacePaddingInlineWithIconShorter
        case spacePaddingInlineWithIconShort
        case spacePaddingInlineWithIconMedium
        case spacePaddingInlineWithIconTall
        case spacePaddingInlineWithIconTaller
        case spacePaddingInlineWithIconTallest

        func token(from theme: OUDSTheme) -> SpacingSemanticToken {
            switch self {
            case .spacePaddingInlineWithIconNone:
                return theme.spacePaddingInlineWithIconNone
            case .spacePaddingInlineWithIconShortest:
                return theme.spacePaddingInlineWithIconShortest
            case .spacePaddingInlineWithIconShorter:
                return theme.spacePaddingInlineWithIconShorter
            case .spacePaddingInlineWithIconShort:
                return theme.spacePaddingInlineWithIconShort
            case .spacePaddingInlineWithIconMedium:
                return theme.spacePaddingInlineWithIconMedium
            case .spacePaddingInlineWithIconTall:
                return theme.spacePaddingInlineWithIconTall
            case .spacePaddingInlineWithIconTaller:
                return theme.spacePaddingInlineWithIconTaller
            case .spacePaddingInlineWithIconTallest:
                return theme.spacePaddingInlineWithIconTallest
            }
        }
    }
}
