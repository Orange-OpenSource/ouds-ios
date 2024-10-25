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

// MARK: - Named Typography

enum NamedTypography: String, CaseIterable {
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

    func token(from theme: OUDSTheme) -> MultipleTypographyTokens {
        switch self {
        case .displayLarge:
            return theme.typeDisplayLarge
        case .displayMedium:
            return theme.typeDisplayMedium
        case .displaySmall:
            return theme.typeDisplaySmall
        case .headingXLarge:
            return theme.typeHeadingXLarge
        case .headingLarge:
            return theme.typeHeadingLarge
        case .headingMedium:
            return theme.typeHeadingMedium
        case .headingSmall:
            return theme.typeHeadingSmall
        case .bodyDefaultLarge:
            return theme.typeBodyDefaultLarge
        case .bodyDefaultMedium:
            return theme.typeBodyDefaultMedium
        case .bodyDefaultSmall:
            return theme.typeBodyDefaultSmall
        case .bodyStrongLarge:
            return theme.typeBodyStrongLarge
        case .bodyStrongMedium:
            return theme.typeBodyStrongMedium
        case .bodyStrongSmall:
            return theme.typeBodyStrongSmall
        case .labelDefaultXLarge:
            return theme.typeLabelDefaultXLarge
        case .labelDefaultLarge:
            return theme.typeLabelDefaultLarge
        case .labelDefaultMedium:
            return theme.typeLabelDefaultMedium
        case .labelDefaultSmall:
            return theme.typeLabelDefaultSmall
        case .labelStrongXLarge:
            return theme.typeLabelStrongXLarge
        case .labelStrongLarge:
            return theme.typeLabelStrongLarge
        case .labelStrongMedium:
            return theme.typeLabelStrongMedium
        case .labelStrongSmall:
            return theme.typeLabelStrongSmall
        case .codeSmall:
            return theme.typeCodeSmall
        case .codeMedium:
            return theme.typeCodeMedium
        }
    }
}
