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
    static let mockThemeElevationMultipleColorSemanticToken = ElevationColorSemanticToken(mockThemeElevationColorRawToken)
    static let mockThemeElevationCompositeRawToken = ElevationCompositeRawToken(x: 118, y: 712, blur: 118, color: ColorRawTokens.colorFunctionalDodgerBlue800)
    static let mockThemeElevationCompositeSemanticToken = ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_1_600)

    // MARK: Semantic token - Elevation - X

    override open var elevationXNone: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXRaised: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXDrag: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXOverlayDefault: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXOverlayEmphasized: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXStickyDefault: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXStickyEmphasized: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override open var elevationXStickyNavigationScrolled: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }

    // MARK: Semantic token - Elevation - Y

    override open var elevationYNone: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYRaised: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYDrag: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYOverlayDefault: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYOverlayEmphasized: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYStickyDefault: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYStickyEmphasized: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override open var elevationYStickyNavigationScrolled: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }

    // MARK: Semantic token - Elevation - Blur

    override open var elevationBlurNone: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurRaised: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurDrag: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurOverlayDefault: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurOverlayEmphasized: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurStickyDefault: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurStickyEmphasized: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override open var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }

    // MARK: Semantic token - Elevation - Color - None

    override open var elevationColorNone: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Raised

    override open var elevationColorRaised: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Drag

    override open var elevationColorDrag: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    override open var elevationColorOverlayDefault: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasized

    override open var elevationColorOverlayEmphasized: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    override open var elevationColorStickyDefault: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasized

    override open var elevationColorStickyEmphasized: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    override open var elevationColorStickyNavigationScrolled: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Box shadow

    override open var elevationRaised: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationDrag: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationOverlayDefault: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationOverlayEmphasized: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationStickyDefault: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationStickyEmphasized: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override open var elevationStickyNavigationScrolled: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }
}
// swiftlint:enable identifier_name
