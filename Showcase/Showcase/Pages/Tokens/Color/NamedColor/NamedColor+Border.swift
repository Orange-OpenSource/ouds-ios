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

    enum Border: String, CaseIterable {
        case colorBorderDefault
        case colorBorderDefaultOnBgEmphasized
        case colorBorderEmphasized
        case colorBorderEmphasizedOnBgEmphasized
        case colorBorderFocus
        case colorBorderFocusInset
        case colorBorderFocusInsetOnBgEmphasized
        case colorBorderBrandPrimaryOnBgEmphasized
        case colorBorderBrandPrimary
        case colorBorderOnBrandPrimary

        func token(from theme: OUDSTheme) -> MultipleColorSemanticTokens {
            switch self {
            case .colorBorderDefault:
                return theme.colorBorderDefault
            case .colorBorderDefaultOnBgEmphasized:
                return theme.colorBorderDefaultOnBgEmphasized
            case .colorBorderEmphasized:
                return theme.colorBorderEmphasized
            case .colorBorderEmphasizedOnBgEmphasized:
                return theme.colorBorderEmphasizedOnBgEmphasized
            case .colorBorderFocus:
                return theme.colorBorderFocus
            case .colorBorderFocusInset:
                return theme.colorBorderFocusInset
            case .colorBorderFocusInsetOnBgEmphasized:
                return theme.colorBorderFocusInsetOnBgEmphasized
            case .colorBorderBrandPrimaryOnBgEmphasized:
                return theme.colorBorderBrandPrimaryOnBgEmphasized
            case .colorBorderBrandPrimary:
                return theme.colorBorderBrandPrimary
            case .colorBorderOnBrandPrimary:
                return theme.colorBorderOnBrandPrimary
            }
        }
    }
}
