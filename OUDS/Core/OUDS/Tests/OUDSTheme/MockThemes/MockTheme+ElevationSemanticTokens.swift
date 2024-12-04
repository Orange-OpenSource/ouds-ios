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

// swiftlint:disable identifier_name

extension MockTheme {

    static let mockThemeElevationXRawToken: ElevationRawToken = 711
    static let mockThemeElevationYRawToken: ElevationRawToken = 713
    static let mockThemeElevationBlurRawToken: ElevationRawToken = 816
    static let mockThemeElevationColorRawToken: ColorRawToken = ColorRawTokens.colorFunctionalMalachite500
    static let mockThemeElevationMultipleColorSemanticToken = MultipleColorSemanticTokens(mockThemeElevationColorRawToken)

    // MARK: Semantic token - Elevation - X

    override open var elevationXNone: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXRaised: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXDrag: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXStickyDefault: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXStickyEmphasized: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXStickyNavigationScrolled: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }

    // MARK: Semantic token - Elevation - Y

    override open var elevationYNone: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYRaised: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYDrag: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYStickyDefault: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYStickyEmphasized: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYStickyNavigationScrolled: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }

    // MARK: Semantic token - Elevation - Blur

    override open var elevationBlurNone: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurRaised: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurDrag: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurStickyDefault: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurStickyEmphasized: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }

    // MARK: Semantic token - Elevation - Color (Multiples)

    override open var elevationColorNone: MultipleColorSemanticTokens { Self.mockThemeElevationMultipleColorSemanticToken }
    override open var elevationColorRaised: MultipleColorSemanticTokens { Self.mockThemeElevationMultipleColorSemanticToken }
    override open var elevationColorDrag: MultipleColorSemanticTokens { Self.mockThemeElevationMultipleColorSemanticToken }
    override open var elevationColorOverlayDefault: MultipleColorSemanticTokens { Self.mockThemeElevationMultipleColorSemanticToken }
    override open var elevationColorOverlayEmphasized: MultipleColorSemanticTokens { Self.mockThemeElevationMultipleColorSemanticToken }
    override open var elevationColorStickyDefault: MultipleColorSemanticTokens { Self.mockThemeElevationMultipleColorSemanticToken }
    override open var elevationColorStickyEmphasized: MultipleColorSemanticTokens { Self.mockThemeElevationMultipleColorSemanticToken }
    override open var elevationColorStickyNavigationScrolled: MultipleColorSemanticTokens { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color (semantic tokens)

    override open var elevationColorNoneLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorNoneDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorRaisedLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorRaisedDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorDragLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorDragDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorOverlayDefaultDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorOverlayEmphasizedLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorOverlayEmphasizedDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorStickyDefaultLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorStickyDefaultDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorStickyEmphasizedLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorStickyEmphasizedDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorStickyNavigationScrolledLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override open var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
}
// swiftlint:enable identifier_name
