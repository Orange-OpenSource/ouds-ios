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
import OUDSTokensSemantic

extension OUDSTheme: ElevationSemanticTokens {
    
    // MARK: Semantic token - Elevation - Z index

    public var elevationZIndexDeep: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndexMinus9999 } set { } }
    public var elevationZIndexDefault: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex0 } set { } }
    public var elevationZIndexDropdown: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1000 } set { } }
    public var elevationZIndexSticky: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1020 } set { } }
    public var elevationZIndexFixed: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1030 } set { } }
    public var elevationZIndexBackToTop: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1035 } set { } }
    public var elevationZIndexSpinner: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1038 } set { } }
    public var elevationZIndexOffCanvasBackdrop: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1040 } set { } }
    public var elevationZIndexOffCanvas: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1045 } set { } }
    public var elevationZIndexModalBackdrop: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1050 } set { } }
    public var elevationZIndexModal: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1060 } set { } }
    public var elevationZIndexPopover: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1070 } set { } }
    public var elevationZIndexTooltip: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1080 } set { } }
    public var elevationZIndexToast: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1090 } set { } }

    // MARK: Semantic token - Elevation - X

    public var elevationXNone: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    public var elevationXRaised: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    public var elevationXDrag: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    public var elevationXOverlayDefault: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    public var elevationXOverlayEmphasis: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    public var elevationXStickyDefault: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    public var elevationXStickyEmphasis: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    public var elevationXStickyNavigationScrolled: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    public var elevationXFOcus: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }

    // MARK: Semantic token - Elevation - Y

    public var elevationYNone: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY0 } set { } }
    public var elevationYRaised: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY100 } set { } }
    public var elevationYDrag: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY300 } set { } }
    public var elevationYOverlayDefault: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY200 } set { } }
    public var elevationYOverlayEmphasis: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY500 } set { } }
    public var elevationYStickyDefault: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY300 } set { } }
    public var elevationYStickyEmphasis: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY300 } set { } }
    public var elevationYStickyNavigationScrolled: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY300 } set { } }
    public var elevationYFocus: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY0 } set { } }

    // MARK: Semantic token - Elevation - Blur

    public var elevationBlurNone: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur0 } set { } }
    public var elevationBlurRaised: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur200 } set { } }
    public var elevationBlurDrag: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur400 } set { } }
    public var elevationBlurOverlayDefault: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur300 } set { } }
    public var elevationBlurOverlayEmphasis: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur600 } set { } }
    public var elevationBlurStickyDefault: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur400 } set { } }
    public var elevationBlurStickyEmphasis: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur400 } set { } }
    public var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur400 } set { } }
    public var elevationBlurFocus: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur0 } set { } }

    // MARK: Semantic token - Elevation - Spread

    public var elevationSpreadNone: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpread0 } set { } }
    public var elevationSpreadRaised: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpread0 } set { } }
    public var elevationSpreadDrag: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus100 } set { } }
    public var elevationSpreadOverlayDefault: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus100 } set { } }
    public var elevationSpreadOverlayEmphasis: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus300 } set { } }
    public var elevationSpreadStickyDefault: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus100 } set { } }
    public var elevationSpreadStickyEmphasis: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus100 } set { } }
    public var elevationSpreadStickyNavigationScrolled: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus100 } set { } }
    public var elevationSpreadFocus: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpread300 } set { } }

    // MARK: Semantic token - Elevation - Color - None

    public var elevationColorNoneLigh: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentWhite0 } set { } }
    public var elevationColorNoneDark: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentWhite0 } set { } }
    public var elevationColorNoneInverse: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentWhite0 } set { } }

    // MARK: Semantic token - Elevation - Color - Raised

    public var elevationColorRaisedLigh: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack500 } set { } }
    public var elevationColorRaisedDark: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack500 } set { } }
    public var elevationColorRaisedInverse: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack500 } set { } }

    // MARK: Semantic token - Elevation - Color - Drag

    public var elevationColorDragLigh: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack600 } set { } }
    public var elevationColorDragDark: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack600 } set { } }
    public var elevationColorDragInverse: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack600 } set { } }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    public var elevationColorOverlayDefaultLigh: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack400 } set { } }
    public var elevationColorOverlayDefaultDark: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack400 } set { } }
    public var elevationColorOverlayDefaultInverse: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack400 } set { } }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasis

    public var elevationColorOverlayEmphasisLigh: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack300 } set { } }
    public var elevationColorOverlayEmphasisDark: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack300 } set { } }
    public var elevationColorOverlayEmphasisInverse: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack300 } set { } }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    public var elevationColorStickyDefaultLigh: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack400 } set { } }
    public var elevationColorStickyDefaultDark: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack400 } set { } }
    public var elevationColorStickyDefaultInverse: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack400 } set { } }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasis

    public var elevationColorStickyEmphasisLigh: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack300 } set { } }
    public var elevationColorStickyEmphasisDark: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack300 } set { } }
    public var elevationColorStickyEmphasisInverse: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack300 } set { } }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    public var elevationColorStickyNavigationScrolledLigh: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack300 } set { } }
    public var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack300 } set { } }
    public var elevationColorStickyNavigationScrolledInverse: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentBlack300 } set { } }

    // MARK: Semantic token - Elevation - Color - Focus

    public var elevationColorFocusLigh: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentWhite900 } set { } }
    public var elevationColorFocusDark: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentWhite900 } set { } }
    public var elevationColorFocusInverse: ElevationColorSemanticToken { get { ColorGlobalPrimitiveTokens.colorTransparentWhite900 } set { } }

}
