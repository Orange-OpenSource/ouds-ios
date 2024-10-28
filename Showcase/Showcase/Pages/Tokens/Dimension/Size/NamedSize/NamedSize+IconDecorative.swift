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
        case sizeIconDecorativeShortest
        case sizeIconDecorativeShorter
        case sizeIconDecorativeShort
        case sizeIconDecorativeMedium
        case sizeIconDecorativeTall
        case sizeIconDecorativeTaller
        case sizeIconDecorativeTallest

        func token(from theme: OUDSTheme) -> SizeSemanticToken {
            switch self {
            case .sizeIconDecorativeShortest:
                return theme.sizeIconDecorativeShortest
            case .sizeIconDecorativeShorter:
                return theme.sizeIconDecorativeShorter
            case .sizeIconDecorativeShort:
                return theme.sizeIconDecorativeShort
            case .sizeIconDecorativeMedium:
                return theme.sizeIconDecorativeMedium
            case .sizeIconDecorativeTall:
                return theme.sizeIconDecorativeTall
            case .sizeIconDecorativeTaller:
                return theme.sizeIconDecorativeTaller
            case .sizeIconDecorativeTallest:
                return theme.sizeIconDecorativeTallest
            }
        }
    }
}
