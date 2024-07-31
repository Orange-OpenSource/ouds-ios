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
import OUDSTokensPrimitive

// MARK: - Type aliases to keep grammar clear

typealias ElevationZIndexSemanticToken = ElevationPrimitiveToken
typealias ElevationXSemanticToken = ElevationPrimitiveToken
typealias ElevationYSemanticToken = ElevationPrimitiveToken
typealias ElevationBlurSemanticToken = ElevationPrimitiveToken
typealias ElevationSpreadSemanticToken = ElevationPrimitiveToken
typealias ElevationColorSemanticToken = ColorTransparentPrimitiveToken

// MARK: - Semantic tokens

protocol ElevationSemanticTokens { }

extension ElevationSemanticTokens {
    
    // MARK: Semantic token - Elevation - Z index

    var elevationZIndexDeep: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndexMinus9999
    var elevationZIndexDefault: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex0
    var elevationZIndexDropdown: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1000
    var elevationZIndexSticky: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1020
    var elevationZIndexFixed: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1030
    var elevationZIndexBackToTop: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1035
    var elevationZIndexSpinner: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1038
    var elevationZIndexOffCanvasBackdrop: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1040
    var elevationZIndexOffCanvas: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1045
    var elevationZIndexModalBackdrop: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1050
    var elevationZIndexModal: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1060
    var elevationZIndexPopover: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1070
    var elevationZIndexTooltip: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1080
    var elevationZIndexToast: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1090

    // MARK: Semantic token - Elevation - X

    var elevationXNone: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    var elevationXRaised: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    var elevationXDrag: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    var elevationXOverlayDefault: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    var elevationXOverlayEmphasis: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    var elevationXStickyDefault: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    var elevationXStickyEmphasis: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    var elevationXStickyNavigationScrolled: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    var elevationXFOcus: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0

    // MARK: Semantic token - Elevation - Y

    var elevationYNone: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY0
    var elevationYRaised: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY100
    var elevationYDrag: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY300
    var elevationYOverlayDefault: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY200
    var elevationYOverlayEmphasis: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY500
    var elevationYStickyDefault: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY300
    var elevationYStickyEmphasis: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY300
    var elevationYStickyNavigationScrolled: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY300
    var elevationYFocus: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY0

    // MARK: Semantic token - Elevation - Blur

    var elevationBlurNone: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur0
    var elevationBlurRaised: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur200
    var elevationBlurDrag: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur400
    var elevationBlurOverlayDefault: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur300
    var elevationBlurOverlayEmphasis: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur600
    var elevationBlurStickyDefault: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur400
    var elevationBlurStickyEmphasis: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur400
    var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur400
    var elevationBlurFocus: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur0

    // MARK: Semantic token - Elevation - Spread

    var elevationSpreadNone: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpread0
    var elevationSpreadRaised: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpread0
    var elevationSpreadDrag: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus100
    var elevationSpreadOverlayDefault: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus100
    var elevationSpreadOverlayEmphasis: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus300
    var elevationSpreadStickyDefault: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus100
    var elevationSpreadStickyEmphasis: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus100
    var elevationSpreadStickyNavigationScrolled: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus100
    var elevationSpreadFocus: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpread300

    // MARK: Semantic token - Elevation - Color - None

    var elevationColorNoneLigh: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentWhite0
    var elevationColorNoneDark: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentWhite0
    var elevationColorNoneInverse: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentWhite0

    // MARK: Semantic token - Elevation - Color - Raised

    var elevationColorRaisedLigh: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack500
    var elevationColorRaisedDark: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack500
    var elevationColorRaisedInverse: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack500

    // MARK: Semantic token - Elevation - Color - Drag

    var elevationColorDragLigh: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack600
    var elevationColorDragDark: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack600
    var elevationColorDragInverse: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack600

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    var elevationColorOverlayDefaultLigh: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack400
    var elevationColorOverlayDefaultDark: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack400
    var elevationColorOverlayDefaultInverse: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack400

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasis

    var elevationColorOverlayEmphasisLigh: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack300
    var elevationColorOverlayEmphasisDark: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack300
    var elevationColorOverlayEmphasisInverse: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack300

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    var elevationColorStickyDefaultLigh: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack400
    var elevationColorStickyDefaultDark: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack400
    var elevationColorStickyDefaultInverse: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack400

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasis

    var elevationColorStickyEmphasisLigh: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack300
    var elevationColorStickyEmphasisDark: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack300
    var elevationColorStickyEmphasisInverse: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack300

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    var elevationColorStickyNavigationScrolledLigh: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack300
    var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack300
    var elevationColorStickyNavigationScrolledInverse: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentBlack300

    // MARK: Semantic token - Elevation - Color - Focus

    var elevationColorFocusLigh: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentWhite900
    var elevationColorFocusDark: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentWhite900
    var elevationColorFocusInverse: ElevationColorSemanticToken = ColorGlobalPrimitiveTokens.colorTransparentWhite900

}
