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

import Foundation
import OUDSTokensRaw
import OUDSTokensSemantic

extension MockTheme {

    static let mockThemeElevationCompositeSemanticToken = ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_1_600)

    // MARK: Semantic token - Elevation - Box shadow

    override open var elevationNone: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationRaised: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationDrag: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationOverlayDefault: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationOverlayEmphasized: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationStickyDefault: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationStickyEmphasized: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationStickyNavigationScrolled: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }
}
