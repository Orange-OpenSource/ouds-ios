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

    static let mockThemeElevationCompositeSemanticToken = ElevationCompositeSemanticToken(ElevationRawTokens.bottom_1_600)

    override var elevationNone: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationRaised: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationDrag: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationDefault: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationEmphasized: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationSticky: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    // MARK: - Semantic token - Elevation

    static let mockThemeElevationXRawToken: ElevationRawToken = 711
    static let mockThemeElevationYRawToken: ElevationRawToken = 713
    static let mockThemeElevationBlurRawToken: ElevationRawToken = 816
    static let mockThemeElevationColorRawToken: ColorRawToken = ColorRawTokens.functionalMalachite500
    static let mockThemeElevationColorSemanticToken = mockThemeElevationColorRawToken
    static let mockThemeElevationMultipleColorSemanticToken = MultipleColorSemanticTokens(mockThemeElevationColorRawToken)

    // MARK: Semantic token - Elevation - X

    override var xNone: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var xRaised: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var xDefault: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var xEmphasized: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var xDrag: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var xSticky: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }

    // MARK: Semantic token - Elevation - Y

    override var yNone: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var yRaised: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var yDefault: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var yEmphasized: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var yDrag: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var ySticky: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }

    // MARK: Semantic token - Elevation - Blur

    override var blurNone: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var blurRaised: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var blurDefault: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var blurEmphasized: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var blurDrag: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var blurSticky: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }

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
