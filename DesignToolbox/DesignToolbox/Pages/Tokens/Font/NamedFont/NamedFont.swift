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

// MARK: - Named Font

enum NamedFont: String, CaseIterable {
    case displayLarge
    case displayMedium
    case displaySmall
    case headingXLarge
    case headingLarge
    case headingMedium
    case headingSmall
    case bodyDefaultLarge
    case bodyDefaultMedium
    case bodyDefaultSmall
    case bodyStrongLarge
    case bodyStrongMedium
    case bodyStrongSmall
    case labelDefaultXLarge
    case labelDefaultLarge
    case labelDefaultMedium
    case labelDefaultSmall
    case labelStrongXLarge
    case labelStrongLarge
    case labelStrongMedium
    case labelStrongSmall
    case codeMedium
    case codeSmall

    // MARK: - Token Values

    func token(from theme: OUDSTheme) -> MultipleFontCompositeRawTokens {
        switch self {
        case .displayLarge:
            return theme.fonts.typeDisplayLarge
        case .displayMedium:
            return theme.fonts.typeDisplayMedium
        case .displaySmall:
            return theme.fonts.typeDisplaySmall
        case .headingXLarge:
            return theme.fonts.typeHeadingXLarge
        case .headingLarge:
            return theme.fonts.typeHeadingLarge
        case .headingMedium:
            return theme.fonts.typeHeadingMedium
        case .headingSmall:
            return theme.fonts.typeHeadingSmall
        case .bodyDefaultLarge:
            return theme.fonts.typeBodyDefaultLarge
        case .bodyDefaultMedium:
            return theme.fonts.typeBodyDefaultMedium
        case .bodyDefaultSmall:
            return theme.fonts.typeBodyDefaultSmall
        case .bodyStrongLarge:
            return theme.fonts.typeBodyStrongLarge
        case .bodyStrongMedium:
            return theme.fonts.typeBodyStrongMedium
        case .bodyStrongSmall:
            return theme.fonts.typeBodyStrongSmall
        case .labelDefaultXLarge:
            return theme.fonts.typeLabelDefaultXLarge
        case .labelDefaultLarge:
            return theme.fonts.typeLabelDefaultLarge
        case .labelDefaultMedium:
            return theme.fonts.typeLabelDefaultMedium
        case .labelDefaultSmall:
            return theme.fonts.typeLabelDefaultSmall
        case .labelStrongXLarge:
            return theme.fonts.typeLabelStrongXLarge
        case .labelStrongLarge:
            return theme.fonts.typeLabelStrongLarge
        case .labelStrongMedium:
            return theme.fonts.typeLabelStrongMedium
        case .labelStrongSmall:
            return theme.fonts.typeLabelStrongSmall
        case .codeSmall:
            return theme.fonts.typeCodeSmall
        case .codeMedium:
            return theme.fonts.typeCodeMedium
        }
    }
}
