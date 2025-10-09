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
import OUDSThemesOrange
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable required_deinit
// swiftlint:disable line_length

/// Overrides **all** the elevation semantic tokens, both simple, multiple and composites (from its super class, i.e. ``OrangeThemeElevationSemanticTokensProvider`` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
/// This ``MockThemeElevationSemanticTokensProvider`` will be asigned in ``MockTheme`` as an ``AllElevationSemanticTokensProvider`` implementation.
final class MockThemeElevationSemanticTokensProvider: OrangeThemeElevationSemanticTokensProvider {

    // MARK: Semantic token - Elevation - Box shadow (Composites)

    static let mockThemeElevationCompositeSemanticToken = ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_1_600)

    override var elevationNone: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationRaised: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationDrag: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationOverlayDefault: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationOverlayEmphasized: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationStickyDefault: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationStickyEmphasized: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationStickyNavigationScrolled: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    // MARK: - Semantic token - Elevation

    static let mockThemeElevationXRawToken: ElevationRawToken = 711
    static let mockThemeElevationYRawToken: ElevationRawToken = 713
    static let mockThemeElevationBlurRawToken: ElevationRawToken = 816
    static let mockThemeElevationColorRawToken: ColorRawToken = ColorRawTokens.colorFunctionalMalachite500
    static let mockThemeElevationColorSemanticToken = mockThemeElevationColorRawToken

    // MARK: Semantic token - Elevation - X

    override var elevationXNone: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXRaised: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXDrag: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXStickyDefault: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXStickyEmphasized: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXStickyNavigationScrolled: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }

    // MARK: Semantic token - Elevation - Y

    override var elevationYNone: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYRaised: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYDrag: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYStickyDefault: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYStickyEmphasized: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYStickyNavigationScrolled: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }

    // MARK: Semantic token - Elevation - Blur

    override var elevationBlurNone: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurRaised: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurDrag: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurStickyDefault: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurStickyEmphasized: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }

    // MARK: Semantic token - Elevation - Color

    override var elevationColorDefault: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorNone: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorRaised: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorDrag: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorEmphasized: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorStickyDefault: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorStickyEmphasized: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorStickyNavigationScrolled: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
}

// swiftlint:enable required_deinit
// swiftlint:enable line_length
