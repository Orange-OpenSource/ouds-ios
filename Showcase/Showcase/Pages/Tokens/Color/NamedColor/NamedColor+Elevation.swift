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

    enum Elevation: String, CaseIterable {
        case colorElevationRaised
        case colorElevationRaisedOnBgSecondary
        case colorElevationRaisedOnBgEmphasized
        case colorElevationDrag
        case colorElevationDragOnBgSecondary
        case colorElevationDragOnBgEmphasized
        case colorElevationOverlayDefault
        case colorElevationOverlayDefaultOnBgSecondary
        case colorElevationOverlayDefaultOnBgEmphasized
        case colorElevationOverlayEmphasized
        case colorElevationOverlayEmphasizedOnBgSecondary
        case colorElevationOverlayEmphasizedOnBgEmphasized
        case colorElevationModal

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorElevationRaised:
                return theme.colorElevationRaised
            case .colorElevationRaisedOnBgSecondary:
                return theme.colorElevationRaisedOnBgSecondary
            case .colorElevationRaisedOnBgEmphasized:
                return theme.colorElevationRaisedOnBgEmphasized
            case .colorElevationDrag:
                return theme.colorElevationDrag
            case .colorElevationDragOnBgSecondary:
                return theme.colorElevationDragOnBgSecondary
            case .colorElevationDragOnBgEmphasized:
                return theme.colorElevationDragOnBgEmphasized
            case .colorElevationOverlayDefault:
                return theme.colorElevationOverlayDefault
            case .colorElevationOverlayDefaultOnBgSecondary:
                return theme.colorElevationOverlayDefaultOnBgSecondary
            case .colorElevationOverlayDefaultOnBgEmphasized:
                return theme.colorElevationOverlayDefaultOnBgEmphasized
            case .colorElevationOverlayEmphasized:
                return theme.colorElevationOverlayEmphasized
            case .colorElevationOverlayEmphasizedOnBgSecondary:
                return theme.colorElevationOverlayEmphasizedOnBgSecondary
            case .colorElevationOverlayEmphasizedOnBgEmphasized:
                return theme.colorElevationOverlayEmphasizedOnBgEmphasized
            case .colorElevationModal:
                return theme.colorElevationModal
            }
        }
    }
}

// swiftlint:enable identifier_name
