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

    static let mockThemeZIndexRawToken: ElevationRawToken = 687
    static let mockThemeXRawToken: ElevationRawToken = 711
    static let mockThemeYRawToken: ElevationRawToken = 713
    static let mockThemeBlurRawToken: ElevationRawToken = 816
    static let mockThemeSpreadRawToken: ElevationRawToken = 80085
    static let mockThemeColorRawToken: ColorRawToken = ColorRawTokens.colorFunctionalMalachite500
    static let mockThemeBoxShadowRawToken: ElevationBoxShadowRawToken = ElevationBoxShadowRawToken(x: 118,
                                                                                                   y: 712,
                                                                                                   blur: 118,
                                                                                                   spread: 218,
                                                                                                   color: ColorRawTokens.colorFunctionalDodgerBlue800)

    // MARK: Semantic token - Elevation - Z index

    override var elevationZIndexDeep: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexDefault: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexDropdown: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexSticky: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexFixed: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexBackToTop: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexSpinner: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexOffCanvasBackdrop: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexOffCanvas: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexModalBackdrop: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexModal: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexPopover: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexTooltip: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }
    override var elevationZIndexToast: ElevationZIndexSemanticToken { Self.mockThemeZIndexRawToken }

    // MARK: Semantic token - Elevation - X

    override var elevationXNone: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXRaised: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXDrag: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXOverlayDefault: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXOverlayEmphasis: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXStickyDefault: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXStickyEmphasis: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXStickyNavigationScrolled: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXFocus: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }

    // MARK: Semantic token - Elevation - Y

    override var elevationYNone: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYRaised: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYDrag: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYOverlayDefault: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYOverlayEmphasis: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYStickyDefault: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYStickyEmphasis: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYStickyNavigationScrolled: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYFocus: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }

    // MARK: Semantic token - Elevation - Blur

    override var elevationBlurNone: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurRaised: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurDrag: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurOverlayDefault: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurOverlayEmphasis: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurStickyDefault: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurStickyEmphasis: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurFocus: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }

    // MARK: Semantic token - Elevation - Spread

    override var elevationSpreadNone: ElevationSpreadSemanticToken { Self.mockThemeSpreadRawToken }
    override var elevationSpreadRaised: ElevationSpreadSemanticToken { Self.mockThemeSpreadRawToken }
    override var elevationSpreadDrag: ElevationSpreadSemanticToken { Self.mockThemeSpreadRawToken }
    override var elevationSpreadOverlayDefault: ElevationSpreadSemanticToken { Self.mockThemeSpreadRawToken }
    override var elevationSpreadOverlayEmphasis: ElevationSpreadSemanticToken { Self.mockThemeSpreadRawToken }
    override var elevationSpreadStickyDefault: ElevationSpreadSemanticToken { Self.mockThemeSpreadRawToken }
    override var elevationSpreadStickyEmphasis: ElevationSpreadSemanticToken { Self.mockThemeSpreadRawToken }
    override var elevationSpreadStickyNavigationScrolled: ElevationSpreadSemanticToken { Self.mockThemeSpreadRawToken }
    override var elevationSpreadFocus: ElevationSpreadSemanticToken { Self.mockThemeSpreadRawToken }

    // MARK: Semantic token - Elevation - Color - None

    override var elevationColorNoneLight: ElevationColorSemanticToken { Self.mockThemeColorRawToken }
    override var elevationColorNoneDark: ElevationColorSemanticToken { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Elevation - Color - Raised

    override var elevationColorRaisedLight: ElevationColorSemanticToken { Self.mockThemeColorRawToken }
    override var elevationColorRaisedDark: ElevationColorSemanticToken { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Elevation - Color - Drag

    override var elevationColorDragLight: ElevationColorSemanticToken { Self.mockThemeColorRawToken }
    override var elevationColorDragDark: ElevationColorSemanticToken { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    override var elevationColorOverlayDefaultLight: ElevationColorSemanticToken { Self.mockThemeColorRawToken }
    override var elevationColorOverlayDefaultDark: ElevationColorSemanticToken { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasis

    override var elevationColorOverlayEmphasisLight: ElevationColorSemanticToken { Self.mockThemeColorRawToken }
    override var elevationColorOverlayEmphasisDark: ElevationColorSemanticToken { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    override var elevationColorStickyDefaultLight: ElevationColorSemanticToken { Self.mockThemeColorRawToken }
    override var elevationColorStickyDefaultDark: ElevationColorSemanticToken { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasis

    override var elevationColorStickyEmphasisLight: ElevationColorSemanticToken { Self.mockThemeColorRawToken }
    override var elevationColorStickyEmphasisDark: ElevationColorSemanticToken { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    override var elevationColorStickyNavigationScrolledLight: ElevationColorSemanticToken { Self.mockThemeColorRawToken }
    override var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Elevation - Color - Focus

    override var elevationColorFocusLight: ElevationColorSemanticToken { Self.mockThemeColorRawToken }
    override var elevationColorFocusDark: ElevationColorSemanticToken { Self.mockThemeColorRawToken }

    // MARK: Semantic token - Elevation - Box shadow

    override var elevationBoxShadowRaisedLight: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }
    override var elevationBoxShadowRaisedDark: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }

    override var elevationBoxShadowDragLight: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }
    override var elevationBoxShadowDragDark: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }

    override var elevationBoxShadowOverlayDefaultLight: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }
    override var elevationBoxShadowOverlayDefaultDark: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }

    override var elevationBoxShadowOverlayEmphasisLight: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }
    override var elevationBoxShadowOverlayEmphasisDark: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }

    override var elevationBoxShadowStickyDefaultLight: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }
    override var elevationBoxShadowStickyDefaultDark: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }

    override var elevationBoxShadowStickyEmphasisLight: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }
    override var elevationBoxShadowStickyEmphasisDark: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }

    override var elevationBoxShadowStickyNavigationScrolledLight: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }
    override var elevationBoxShadowStickyNavigationScrolledDark: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }

    override var elevationBoxShadowFocusLight: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }
    override var elevationBoxShadowFocusDark: ElevationBoxShadowSemanticToken { Self.mockThemeBoxShadowRawToken }
}
