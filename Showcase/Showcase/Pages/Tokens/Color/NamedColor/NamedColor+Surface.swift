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

extension NamedColor {

    enum Surface: String, CaseIterable {
        case colorSurfaceBrandPrimary
        case colorSurfaceStatusAccentEmphasized
        case colorSurfaceStatusAccentMuted
        case colorSurfaceStatusInfoEmphasized
        case colorSurfaceStatusInfoMuted
        case colorSurfaceStatusNegativeEmphasized
        case colorSurfaceStatusNegativeMuted
        case colorSurfaceStatusNeutralEmphasized
        case colorSurfaceStatusNeutralMuted
        case colorSurfaceStatusPositiveEmphasized
        case colorSurfaceStatusPositiveMuted
        case colorSurfaceStatusWarningEmphasized
        case colorSurfaceStatusWarningMuted

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorSurfaceBrandPrimary:
                return theme.colorSurfaceBrandPrimary
            case .colorSurfaceStatusAccentEmphasized:
                return theme.colorSurfaceStatusAccentEmphasized
            case .colorSurfaceStatusAccentMuted:
                return theme.colorSurfaceStatusAccentMuted
            case .colorSurfaceStatusInfoEmphasized:
                return theme.colorSurfaceStatusInfoEmphasized
            case .colorSurfaceStatusInfoMuted:
                return theme.colorSurfaceStatusInfoMuted
            case .colorSurfaceStatusNegativeEmphasized:
                return theme.colorSurfaceStatusNegativeEmphasized
            case .colorSurfaceStatusNegativeMuted:
                return theme.colorSurfaceStatusNegativeMuted
            case .colorSurfaceStatusNeutralEmphasized:
                return theme.colorSurfaceStatusNeutralEmphasized
            case .colorSurfaceStatusNeutralMuted:
                return theme.colorSurfaceStatusNeutralMuted
            case .colorSurfaceStatusPositiveEmphasized:
                return theme.colorSurfaceStatusPositiveEmphasized
            case .colorSurfaceStatusPositiveMuted:
                return theme.colorSurfaceStatusPositiveMuted
            case .colorSurfaceStatusWarningEmphasized:
                return theme.colorSurfaceStatusWarningEmphasized
            case .colorSurfaceStatusWarningMuted:
                return theme.colorSurfaceStatusWarningMuted
            }
        }
    }
}
