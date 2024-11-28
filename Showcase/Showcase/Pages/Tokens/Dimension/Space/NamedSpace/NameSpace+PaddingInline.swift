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

    enum PaddingInline: String, CaseIterable, NamedSpaceToken {
        case spacePaddingInlineNone
        case spacePaddingInlineShorter
        case spacePaddingInlineShort
        case spacePaddingInlineMedium
        case spacePaddingInlineTall
        case spacePaddingInlineTaller
        case spacePaddingInlineTallest

        var name: String { self.rawValue }

        func token(from theme: OUDSTheme) -> SpaceSemanticToken {
            switch self {
            case .spacePaddingInlineNone:
                return theme.spacePaddingInlineNone
            case .spacePaddingInlineShorter:
                return theme.spacePaddingInlineShorter
            case .spacePaddingInlineShort:
                return theme.spacePaddingInlineShort
            case .spacePaddingInlineMedium:
                return theme.spacePaddingInlineMedium
            case .spacePaddingInlineTall:
                return theme.spacePaddingInlineTall
            case .spacePaddingInlineTaller:
                return theme.spacePaddingInlineTaller
            case .spacePaddingInlineTallest:
                return theme.spacePaddingInlineTallest
            }
        }
    }
}
