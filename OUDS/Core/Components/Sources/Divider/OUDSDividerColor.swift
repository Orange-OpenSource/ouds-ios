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
///
/// - Since: 0.14.0
public enum OUDSDividerColor {
    case borderDefault
    case borderMuted
    case borderEmphasized
    case borderBrandPrimary
    case borderOnBrandPrimary
    case alwaysBlack
    case alwaysOnBlack
    case alwaysWhite
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
        case .borderOnBrandPrimary:
            theme.colors.colorBorderOnBrandPrimary
        case .alwaysBlack:
            theme.colors.colorAlwaysBlack
        case .alwaysOnBlack:
            theme.colors.colorAlwaysOnBlack
        case .alwaysWhite:
            theme.colors.colorAlwaysWhite
        case .alwaysOnWhite:
            theme.colors.colorAlwaysOnWhite
        }
    }
}
