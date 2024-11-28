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

    enum Content: String, CaseIterable {
        case colorContentDefault
        case colorContentDefaultOnBgEmphasized
        case colorContentMuted
        case colorContentMutedOnBgEmphasized
        case colorContentDisabled
        case colorContentDisabledOnBgEmphasized
        case colorContentStatusPositive
        case colorContentStatusInfo
        case colorContentStatusWarning
        case colorContentStatusNegative
        case colorContentStatusAccent
        case colorContentBrandPrimary
        case colorContentBrandPrimaryOnBgEmphasized
        case colorContentOnActionDisabled
        case colorContentOnActionDisabledOnBgEmphasized
        case colorContentOnActionNegative
        case colorContentOnActionPrimaryEnabled
        case colorContentOnActionPrimaryEnabledOnBgEmphasized
        case colorContentOnActionPrimaryFocus
        case colorContentOnActionPrimaryFocusOnBgEmphasized
        case colorContentOnActionPrimaryHover
        case colorContentOnActionPrimaryHoverOnBgEmphasized
        case colorContentOnActionPrimaryLoading
        case colorContentOnActionPrimaryLoadingOnBgEmphasized
        case colorContentOnActionPrimaryPressed
        case colorContentOnActionPrimaryPressedOnBgEmphasized
        case colorContentOnBrandPrimary
        case colorContentOnStatusAccentEmphasized
        case colorContentOnStatusAccentMuted
        case colorContentOnStatusAccentMutedOnBgEmphasized
        case colorContentOnStatusInfoEmphasized
        case colorContentOnStatusInfoMuted
        case colorContentOnStatusInfoMutedOnBgEmphasized
        case colorContentOnStatusNegativeEmphasized
        case colorContentOnStatusNegativeMuted
        case colorContentOnStatusNegativeMutedOnBgEmphasized
        case colorContentOnStatusPositiveEmphasized
        case colorContentOnStatusPositiveMuted
        case colorContentOnStatusPositiveMutedOnBgEmphasized
        case colorContentOnStatusWarningEmphasized
        case colorContentOnStatusWarningMuted
        case colorContentOnStatusWarningMutedOnBgEmphasized
        
        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorContentDefault:
                return theme.colorContentDefault
            case .colorContentDefaultOnBgEmphasized:
                return theme.colorContentDefaultOnBgEmphasized
            case .colorContentMuted:
                return theme.colorContentMuted
            case .colorContentMutedOnBgEmphasized:
                return theme.colorContentMutedOnBgEmphasized
            case .colorContentDisabled:
                return theme.colorContentDisabled
            case .colorContentDisabledOnBgEmphasized:
                return theme.colorContentDisabledOnBgEmphasized
            case .colorContentStatusPositive:
                return theme.colorContentStatusPositive
            case .colorContentStatusInfo:
                return theme.colorContentStatusInfo
            case .colorContentStatusWarning:
                return theme.colorContentStatusWarning
            case .colorContentStatusNegative:
                return theme.colorContentStatusNegative
            case .colorContentStatusAccent:
                return theme.colorContentStatusAccent
            case .colorContentBrandPrimary:
                return theme.colorContentBrandPrimary
            case .colorContentBrandPrimaryOnBgEmphasized:
                return theme.colorContentBrandPrimaryOnBgEmphasized
            case .colorContentOnActionDisabled:
                return theme.colorContentOnActionDisabled
            case .colorContentOnActionDisabledOnBgEmphasized:
                return theme.colorContentOnActionDisabledOnBgEmphasized
            case .colorContentOnActionNegative:
                return theme.colorContentOnActionNegative
            case .colorContentOnActionPrimaryEnabled:
                return theme.colorContentOnActionPrimaryEnabled
            case .colorContentOnActionPrimaryEnabledOnBgEmphasized:
                return theme.colorContentOnActionPrimaryEnabledOnBgEmphasized
            case .colorContentOnActionPrimaryFocus:
                return theme.colorContentOnActionPrimaryFocus
            case .colorContentOnActionPrimaryFocusOnBgEmphasized:
                return theme.colorContentOnActionPrimaryFocusOnBgEmphasized
            case .colorContentOnActionPrimaryHover:
                return theme.colorContentOnActionPrimaryHover
            case .colorContentOnActionPrimaryHoverOnBgEmphasized:
                return theme.colorContentOnActionPrimaryHoverOnBgEmphasized
            case .colorContentOnActionPrimaryLoading:
                return theme.colorContentOnActionPrimaryLoading
            case .colorContentOnActionPrimaryLoadingOnBgEmphasized:
                return theme.colorContentOnActionPrimaryLoadingOnBgEmphasized
            case .colorContentOnActionPrimaryPressed:
                return theme.colorContentOnActionPrimaryPressed
            case .colorContentOnActionPrimaryPressedOnBgEmphasized:
                return theme.colorContentOnActionPrimaryPressedOnBgEmphasized
            case .colorContentOnBrandPrimary:
                return theme.colorContentOnBrandPrimary
            case .colorContentOnStatusAccentEmphasized:
                return theme.colorContentOnStatusAccentEmphasized
            case .colorContentOnStatusAccentMuted:
                return theme.colorContentOnStatusAccentMuted
            case .colorContentOnStatusAccentMutedOnBgEmphasized:
                return theme.colorContentOnStatusAccentMutedOnBgEmphasized
            case .colorContentOnStatusInfoEmphasized:
                return theme.colorContentOnStatusInfoEmphasized
            case .colorContentOnStatusInfoMuted:
                return theme.colorContentOnStatusInfoMuted
            case .colorContentOnStatusInfoMutedOnBgEmphasized:
                return theme.colorContentOnStatusInfoMutedOnBgEmphasized
            case .colorContentOnStatusNegativeEmphasized:
                return theme.colorContentOnStatusNegativeEmphasized
            case .colorContentOnStatusNegativeMuted:
                return theme.colorContentOnStatusNegativeMuted
            case .colorContentOnStatusNegativeMutedOnBgEmphasized:
                return theme.colorContentOnStatusNegativeMutedOnBgEmphasized
            case .colorContentOnStatusPositiveEmphasized:
                return theme.colorContentOnStatusPositiveEmphasized
            case .colorContentOnStatusPositiveMuted:
                return theme.colorContentOnStatusPositiveMuted
            case .colorContentOnStatusPositiveMutedOnBgEmphasized:
                return theme.colorContentOnStatusPositiveMutedOnBgEmphasized
            case .colorContentOnStatusWarningEmphasized:
                return theme.colorContentOnStatusWarningEmphasized
            case .colorContentOnStatusWarningMuted:
                return theme.colorContentOnStatusWarningMuted
            case .colorContentOnStatusWarningMutedOnBgEmphasized:
                return theme.colorContentOnStatusWarningMutedOnBgEmphasized

            }
        }
    }
}
