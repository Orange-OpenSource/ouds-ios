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

    @objc open var elevationZIndexDeep: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndexMinus9999 } set { } }
    @objc open var elevationZIndexDefault: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex0 } set { } }
    @objc open var elevationZIndexDropdown: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1000 } set { } }
    @objc open var elevationZIndexSticky: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1020 } set { } }
    @objc open var elevationZIndexFixed: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1030 } set { } }
    @objc open var elevationZIndexBackToTop: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1035 } set { } }
    @objc open var elevationZIndexSpinner: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1038 } set { } }
    @objc open var elevationZIndexOffCanvasBackdrop: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1040 } set { } }
    @objc open var elevationZIndexOffCanvas: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1045 } set { } }
    @objc open var elevationZIndexModalBackdrop: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1050 } set { } }
    @objc open var elevationZIndexModal: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1060 } set { } }
    @objc open var elevationZIndexPopover: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1070 } set { } }
    @objc open var elevationZIndexTooltip: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1080 } set { } }
    @objc open var elevationZIndexToast: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationZIndex1090 } set { } }

    // MARK: Semantic token - Elevation - X

    @objc open var elevationXNone: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    @objc open var elevationXRaised: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    @objc open var elevationXDrag: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    @objc open var elevationXOverlayDefault: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    @objc open var elevationXOverlayEmphasis: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    @objc open var elevationXStickyDefault: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    @objc open var elevationXStickyEmphasis: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    @objc open var elevationXStickyNavigationScrolled: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }
    @objc open var elevationXFOcus: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationX0 } set { } }

    // MARK: Semantic token - Elevation - Y

    @objc open var elevationYNone: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY0 } set { } }
    @objc open var elevationYRaised: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY100 } set { } }
    @objc open var elevationYDrag: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY300 } set { } }
    @objc open var elevationYOverlayDefault: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY200 } set { } }
    @objc open var elevationYOverlayEmphasis: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY500 } set { } }
    @objc open var elevationYStickyDefault: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY300 } set { } }
    @objc open var elevationYStickyEmphasis: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY300 } set { } }
    @objc open var elevationYStickyNavigationScrolled: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY300 } set { } }
    @objc open var elevationYFocus: ElevationZIndexSemanticToken { get { ElevationPrimitiveTokens.elevationY0 } set { } }

    // MARK: Semantic token - Elevation - Blur

    @objc open var elevationBlurNone: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur0 } set { } }
    @objc open var elevationBlurRaised: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur200 } set { } }
    @objc open var elevationBlurDrag: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur400 } set { } }
    @objc open var elevationBlurOverlayDefault: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur300 } set { } }
    @objc open var elevationBlurOverlayEmphasis: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur600 } set { } }
    @objc open var elevationBlurStickyDefault: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur400 } set { } }
    @objc open var elevationBlurStickyEmphasis: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur400 } set { } }
    @objc open var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur400 } set { } }
    @objc open var elevationBlurFocus: ElevationBlurSemanticToken { get { ElevationPrimitiveTokens.elevationBlur0 } set { } }

    // MARK: Semantic token - Elevation - Spread

    @objc open var elevationSpreadNone: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpread0 } set { } }
    @objc open var elevationSpreadRaised: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpread0 } set { } }
    @objc open var elevationSpreadDrag: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus100 } set { } }
    @objc open var elevationSpreadOverlayDefault: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus100 } set { } }
    @objc open var elevationSpreadOverlayEmphasis: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus300 } set { } }
    @objc open var elevationSpreadStickyDefault: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus100 } set { } }
    @objc open var elevationSpreadStickyEmphasis: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus100 } set { } }
    @objc open var elevationSpreadStickyNavigationScrolled: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpreadMinus100 } set { } }
    @objc open var elevationSpreadFocus: ElevationSpreadSemanticToken { get { ElevationPrimitiveTokens.elevationSpread300 } set { } }

    // MARK: Semantic token - Elevation - Color - None

    @objc open var elevationColorNoneLigh: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentWhite0 } set { } }
    @objc open var elevationColorNoneDark: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentWhite0 } set { } }
    @objc open var elevationColorNoneInverse: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentWhite0 } set { } }

    // MARK: Semantic token - Elevation - Color - Raised

    @objc open var elevationColorRaisedLigh: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack500 } set { } }
    @objc open var elevationColorRaisedDark: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack500 } set { } }
    @objc open var elevationColorRaisedInverse: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack500 } set { } }

    // MARK: Semantic token - Elevation - Color - Drag

    @objc open var elevationColorDragLigh: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack600 } set { } }
    @objc open var elevationColorDragDark: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack600 } set { } }
    @objc open var elevationColorDragInverse: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack600 } set { } }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    @objc open var elevationColorOverlayDefaultLigh: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack400 } set { } }
    @objc open var elevationColorOverlayDefaultDark: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack400 } set { } }
    @objc open var elevationColorOverlayDefaultInverse: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack400 } set { } }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasis

    @objc open var elevationColorOverlayEmphasisLigh: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack300 } set { } }
    @objc open var elevationColorOverlayEmphasisDark: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack300 } set { } }
    @objc open var elevationColorOverlayEmphasisInverse: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack300 } set { } }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    @objc open var elevationColorStickyDefaultLigh: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack400 } set { } }
    @objc open var elevationColorStickyDefaultDark: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack400 } set { } }
    @objc open var elevationColorStickyDefaultInverse: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack400 } set { } }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasis

    @objc open var elevationColorStickyEmphasisLigh: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack300 } set { } }
    @objc open var elevationColorStickyEmphasisDark: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack300 } set { } }
    @objc open var elevationColorStickyEmphasisInverse: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack300 } set { } }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    @objc open var elevationColorStickyNavigationScrolledLigh: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack300 } set { } }
    @objc open var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack300 } set { } }
    @objc open var elevationColorStickyNavigationScrolledInverse: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentBlack300 } set { } }

    // MARK: Semantic token - Elevation - Color - Focus

    @objc open var elevationColorFocusLigh: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentWhite900 } set { } }
    @objc open var elevationColorFocusDark: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentWhite900 } set { } }
    @objc open var elevationColorFocusInverse: ElevationColorSemanticToken { get { ColorPrimitiveTokens.colorTransparentWhite900 } set { } }

}
