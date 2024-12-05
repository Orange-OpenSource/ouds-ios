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

extension NamedSize {
    enum IconDecorative: String, CaseIterable {
        case sizeIconDecorative2xs
        case sizeIconDecorativeXs
        case sizeIconDecorativeSm
        case sizeIconDecorativeMd
        case sizeIconDecorativeLg
        case sizeIconDecorativeXl
        case sizeIconDecorative2Xl

        func token(from theme: OUDSTheme) -> SizeSemanticToken {
            switch self {
            case .sizeIconDecorative2xs:
                return theme.sizeIconDecorative2xs
            case .sizeIconDecorativeXs:
                return theme.sizeIconDecorativeXs
            case .sizeIconDecorativeSm:
                return theme.sizeIconDecorativeSm
            case .sizeIconDecorativeMd:
                return theme.sizeIconDecorativeMd
            case .sizeIconDecorativeLg:
                return theme.sizeIconDecorativeLg
            case .sizeIconDecorativeXl:
                return theme.sizeIconDecorativeXl
            case .sizeIconDecorative2Xl:
                return theme.sizeIconDecorative2Xl
            }
        }
    }
}
