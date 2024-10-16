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
        case colorElevationRaisedOnBackgroundSecondary
        case colorElevationRaisedOnBackgroundEmphasized
        case colorElevationDrag
        case colorElevationDragOnBackgroundSecondary
        case colorElevationDragOnBackgroundEmphasized
        case colorElevationOverlayDefault
        case colorElevationOverlayDefaultOnBackgroundSecondary
        case colorElevationOverlayDefaultOnBackgroundEmphasized
        case colorElevationOverlayEmphasized
        case colorElevationOverlayEmphasizedOnBackgroundSecondary
        case colorElevationOverlayEmphasizedOnBackgroundEmphasized
        case colorElevationModal

        func token(from theme: OUDSTheme) -> ColorSemanticToken {
            switch self {
            case .colorElevationRaised:
                return theme.colorElevationRaised
            case .colorElevationRaisedOnBackgroundSecondary:
                return theme.colorElevationRaisedOnBackgroundSecondary
            case .colorElevationRaisedOnBackgroundEmphasized:
                return theme.colorElevationRaisedOnBackgroundEmphasized
            case .colorElevationDrag:
                return theme.colorElevationDrag
            case .colorElevationDragOnBackgroundSecondary:
                return theme.colorElevationDragOnBackgroundSecondary
            case .colorElevationDragOnBackgroundEmphasized:
                return theme.colorElevationDragOnBackgroundEmphasized
            case .colorElevationOverlayDefault:
                return theme.colorElevationOverlayDefault
            case .colorElevationOverlayDefaultOnBackgroundSecondary:
                return theme.colorElevationOverlayDefaultOnBackgroundSecondary
            case .colorElevationOverlayDefaultOnBackgroundEmphasized:
                return theme.colorElevationOverlayDefaultOnBackgroundEmphasized
            case .colorElevationOverlayEmphasized:
                return theme.colorElevationOverlayEmphasized
            case .colorElevationOverlayEmphasizedOnBackgroundSecondary:
                return theme.colorElevationOverlayEmphasizedOnBackgroundSecondary
            case .colorElevationOverlayEmphasizedOnBackgroundEmphasized:
                return theme.colorElevationOverlayEmphasizedOnBackgroundEmphasized
            case .colorElevationModal:
                return theme.colorElevationModal
            }
        }
    }
}
