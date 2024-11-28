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

// swiftlint:disable identifier_name

extension NamedColor {

    enum Gradient: String, CaseIterable {
        case colorGradientSkeletonMiddle
        case colorGradientSkeletonMiddleOnBgEmphasized
        case colorGradientSkeletonStartEnd
        case colorGradientSkeletonStartEndOnBgEmphasized

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorGradientSkeletonMiddle:
                return theme.colorGradientSkeletonMiddle
            case .colorGradientSkeletonMiddleOnBgEmphasized:
                return theme.colorGradientSkeletonMiddleOnBgEmphasized
            case .colorGradientSkeletonStartEnd:
                return theme.colorGradientSkeletonStartEnd
            case .colorGradientSkeletonStartEndOnBgEmphasized:
                return theme.colorGradientSkeletonStartEndOnBgEmphasized
            }
        }
    }
}

// swiftlint:enable identifier_name
