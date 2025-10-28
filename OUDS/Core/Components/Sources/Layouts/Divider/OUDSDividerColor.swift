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

/// List of colors available for dividers (i.e. `OUDSHorizontalDivider` or `OUDSVerticalDivider`)
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/629e1b-divider)
///
/// - Since: 0.14.0
public enum OUDSDividerColor {
    case `default`
    case muted
    case emphasized
    case brandPrimary
    case onBrandPrimary
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
        case .default:
            theme.colors.borderDefault
        case .muted:
            theme.colors.borderMuted
        case .emphasized:
            theme.colors.borderEmphasized
        case .brandPrimary:
            theme.colors.borderBrandPrimary
        case .onBrandPrimary:
            theme.colors.borderOnBrandPrimary
        case .alwaysBlack:
            MultipleColorSemanticTokens(theme.colors.colorAlwaysBlack)
        case .alwaysWhite:
            MultipleColorSemanticTokens(theme.colors.colorAlwaysWhite)
        case .alwaysOnBlack:
            MultipleColorSemanticTokens(theme.colors.colorAlwaysOnBlack)
        case .alwaysOnWhite:
            MultipleColorSemanticTokens(theme.colors.colorAlwaysOnWhite)
        }
    }
}
