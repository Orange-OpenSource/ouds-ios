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
// swiftlint:disable identifier_name

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

    override var elevationSticky: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    // MARK: - Semantic token - Elevation

    static let mockThemeElevationXRawToken: ElevationRawToken = 711
    static let mockThemeElevationYRawToken: ElevationRawToken = 713
    static let mockThemeElevationBlurRawToken: ElevationRawToken = 816
    static let mockThemeElevationColorRawToken: ColorRawToken = ColorRawTokens.colorFunctionalMalachite500
    static let mockThemeElevationColorSemanticToken = mockThemeElevationColorRawToken
    static let mockThemeElevationMultipleColorSemanticToken = MultipleColorSemanticTokens(mockThemeElevationColorRawToken)

    // MARK: Semantic token - Elevation - X

    override var elevationXNone: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXRaised: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXDefault: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXEmphasized: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXDrag: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXSticky: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }

    // MARK: Semantic token - Elevation - Y

    override var elevationYNone: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYRaised: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYDefault: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYEmphasized: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYDrag: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYSticky: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }

    // MARK: Semantic token - Elevation - Blur

    override var elevationBlurNone: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurRaised: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurDefault: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurEmphasized: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurDrag: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurSticky: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }

    // MARK: Semantic token - Elevation - Color

    override var elevationColorNone: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorDefaultLight: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorRaisedLight: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorDragLight: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorEmphasizedLight: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorStickyLight: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorDefaultDark: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorRaisedDark: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorDragDark: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorEmphasizedDark: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }
    override var elevationColorStickyDark: ElevationColorSemanticToken { Self.mockThemeElevationColorSemanticToken }

    override var elevationColorDefault: ElevationMultipleColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }
    override var elevationColorRaised: ElevationMultipleColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }
    override var elevationColorDrag: ElevationMultipleColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }
    override var elevationColorEmphasized: ElevationMultipleColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }
    override var elevationColorSticky: ElevationMultipleColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }
}

// swiftlint:enable required_deinit
// swiftlint:enable line_length
// swiftlint:enable identifier_name
