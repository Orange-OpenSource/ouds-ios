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

// swiftlint:disable missing_docs

/// List of colors available for dividers (i.e. `ÒUDSHorizontal` or `OUDSVerticalDivider`)
public enum OUDSDividerColor {
    case borderDefault
    case borderMuted
    case borderEmphasized
    case borderBrandPrimary
    case borderBrandSecondary
    case borderBrandTertiary
    case borderOnBrandPrimary
    case borderOnBrandSecondary
    case borderOnBrandTertiary
    case alwaysBlack
    case alwaysWhite
    case alwaysOnBlack
    case alwaysOnWhite
    // swiftlint:enable missing_docs

    /// Provides the color sementic token in theme associated to the divider color
    ///
    /// - Parameter theme: The theme that defines the token color
    public func colorToken(in theme: OUDSTheme) -> MultipleColorSemanticTokens {
        switch self {
        case .borderDefault:
            theme.colors.colorBorderDefault
        case .borderMuted:
            theme.colors.colorBorderMuted
        case .borderEmphasized:
            theme.colors.colorBorderEmphasized
        case .borderBrandPrimary:
            theme.colors.colorBorderBrandPrimary
        case .borderBrandSecondary:
            theme.colors.colorBorderBrandPrimary // TODO:
        case .borderBrandTertiary:
            theme.colors.colorBorderBrandPrimary // TODO:
        case .borderOnBrandPrimary:
            theme.colors.colorBorderOnBrandPrimary
        case .borderOnBrandSecondary:
            theme.colors.colorBorderOnBrandPrimary // TODO:
        case .borderOnBrandTertiary:
            theme.colors.colorBorderOnBrandPrimary // TODO:
        case .alwaysBlack:
            theme.colors.colorAlwaysBlack
        case .alwaysWhite:
            theme.colors.colorAlwaysWhite
        case .alwaysOnBlack:
            theme.colors.colorAlwaysOnBlack
        case .alwaysOnWhite:
            theme.colors.colorAlwaysOnWhite
        }
    }
}
