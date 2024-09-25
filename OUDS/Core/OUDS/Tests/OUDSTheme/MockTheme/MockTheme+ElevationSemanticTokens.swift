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

    static let mockThemeElevationXRawToken: ElevationRawToken = 711
    static let mockThemeElevationYRawToken: ElevationRawToken = 713
    static let mockThemeElevationBlurRawToken: ElevationRawToken = 816
    static let mockThemeElevationColorRawToken: ColorRawToken = ColorRawTokens.colorFunctionalMalachite500
    static let mockThemeElevationMultipleColorSemanticToken: ElevationColorSemanticToken = ElevationColorSemanticToken(mockThemeElevationColorRawToken)
    static let mockThemeElevationCompositeRawToken = ElevationCompositeRawToken(x: 118, y: 712, blur: 118, color: ColorRawTokens.colorFunctionalDodgerBlue800)
    static let mockThemeElevationCompositeSemanticToken = ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_1_500)

    // MARK: Semantic token - Elevation - X

    override var elevationXNone: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXRaised: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXDrag: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXOverlayDefault: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXOverlayEmphasized: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXStickyDefault: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXStickyEmphasized: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXStickyNavigationScrolled: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }
    override var elevationXFocus: ElevationYSemanticToken { Self.mockThemeElevationXRawToken }

    // MARK: Semantic token - Elevation - Y

    override var elevationYNone: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYRaised: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYDrag: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYOverlayDefault: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYOverlayEmphasized: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYStickyDefault: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYStickyEmphasized: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYStickyNavigationScrolled: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }
    override var elevationYFocus: ElevationYSemanticToken { Self.mockThemeElevationYRawToken }

    // MARK: Semantic token - Elevation - Blur

    override var elevationBlurNone: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurRaised: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurDrag: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurOverlayDefault: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurOverlayEmphasized: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurStickyDefault: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurStickyEmphasized: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }
    override var elevationBlurFocus: ElevationBlurSemanticToken { Self.mockThemeElevationBlurRawToken }

    // MARK: Semantic token - Elevation - Color - None

    override var elevationColorNone: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Raised

    override var elevationColorRaised: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Drag

    override var elevationColorDrag: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    override var elevationColorOverlayDefault: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasized

    override var elevationColorOverlayEmphasized: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    override var elevationColorStickyDefault: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasized

    override var elevationColorStickyEmphasized: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    override var elevationColorStickyNavigationScrolled: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Color - Focus

    override var elevationColorFocus: ElevationColorSemanticToken { Self.mockThemeElevationMultipleColorSemanticToken }

    // MARK: Semantic token - Elevation - Box shadow

    override var elevationRaised: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationDrag: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationOverlayDefault: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationOverlayEmphasized: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationStickyDefault: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationStickyEmphasized: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationStickyNavigationScrolled: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }

    override var elevationFocus: ElevationCompositeSemanticToken { Self.mockThemeElevationCompositeSemanticToken }
}
