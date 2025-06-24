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
// swiftlint:disable identifier_name
// swiftlint:disable line_length

/// Overrides **all** the elevation semantic tokens, both simple, multiple and composites (from its super class, i.e. ``OrangeThemeElevationSemanticTokensProvider`` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
/// This ``MockThemeElevationSemanticTokensProvider`` will be asigned in ``MockTheme`` as an ``AllElevationSemanticTokensProvider`` implementation.
final class MockThemeElevationSemanticTokensProvider: OrangeThemeElevationSemanticTokensProvider {

    // MARK: Semantic token - Elevation - Box shadow (Composites)

    static let mockThemeElevationCompositeSemanticToken = ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_1_600)

    override public var elevationNone: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override public var elevationRaised: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override public var elevationDrag: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override public var elevationOverlayDefault: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override public var elevationOverlayEmphasized: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override public var elevationStickyDefault: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override public var elevationStickyEmphasized: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override public var elevationStickyNavigationScrolled: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    // MARK: - Semantic token - Elevation

    static let mockThemeElevationXRawToken: ElevationRawToken = 711
    static let mockThemeElevationYRawToken: ElevationRawToken = 713
    static let mockThemeElevationBlurRawToken: ElevationRawToken = 816
    static let mockThemeElevationColorRawToken: ColorRawToken = ColorRawTokens.colorFunctionalMalachite500
    static let mockThemeElevationColorSemanticToken = mockThemeElevationColorRawToken

    // MARK: Semantic token - Elevation - X

    override public var elevationXNone: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override public var elevationXRaised: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override public var elevationXDrag: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override public var elevationXStickyDefault: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override public var elevationXStickyEmphasized: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override public var elevationXStickyNavigationScrolled: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }

    // MARK: Semantic token - Elevation - Y

    override public var elevationYNone: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override public var elevationYRaised: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override public var elevationYDrag: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override public var elevationYStickyDefault: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override public var elevationYStickyEmphasized: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override public var elevationYStickyNavigationScrolled: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }

    // MARK: Semantic token - Elevation - Blur

    override public var elevationBlurNone: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override public var elevationBlurRaised: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override public var elevationBlurDrag: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override public var elevationBlurStickyDefault: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override public var elevationBlurStickyEmphasized: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override public var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }

    // MARK: Semantic token - Elevation - Color

    override public var elevationColorDefault: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override public var elevationColorNone: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override public var elevationColorRaised: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override public var elevationColorDrag: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override public var elevationColorEmphasized: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override public var elevationColorStickyDefault: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override public var elevationColorStickyEmphasized: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override public var elevationColorStickyNavigationScrolled: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
}

// swiftlint:enable required_deinit
// swiftlint:enable identifier_name
// swiftlint:enable line_length
