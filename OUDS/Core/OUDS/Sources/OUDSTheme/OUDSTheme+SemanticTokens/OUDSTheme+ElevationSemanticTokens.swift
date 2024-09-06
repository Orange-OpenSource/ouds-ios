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

// swiftlint:disable line_length
/// Defines basic values common to all themes for `ElevationSemanticTokenss`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
/// The aim of this extensions is to make relationships between all semantic tokens for elevations and associated raw tokens.
/// `OUDSTheme` can be seen as a kind of "abstract class" in _object oriented paradigm_.
extension OUDSTheme: ElevationSemanticTokens {

    // MARK: Semantic token - Elevation - Z index

    @objc open var elevationZIndexDeep: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndexMinus9999 }
    @objc open var elevationZIndexDefault: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex0 }
    @objc open var elevationZIndexDropdown: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1000 }
    @objc open var elevationZIndexSticky: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1020 }
    @objc open var elevationZIndexFixed: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1030 }
    @objc open var elevationZIndexBackToTop: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1035 }
    @objc open var elevationZIndexSpinner: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1038 }
    @objc open var elevationZIndexOffCanvasBackdrop: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1040 }
    @objc open var elevationZIndexOffCanvas: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1045 }
    @objc open var elevationZIndexModalBackdrop: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1050 }
    @objc open var elevationZIndexModal: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1060 }
    @objc open var elevationZIndexPopover: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1070 }
    @objc open var elevationZIndexTooltip: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1080 }
    @objc open var elevationZIndexToast: ElevationZIndexSemanticToken { ElevationRawTokens.elevationZIndex1090 }

    // MARK: Semantic token - Elevation - X

    @objc open var elevationXNone: ElevationZIndexSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXRaised: ElevationZIndexSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXDrag: ElevationZIndexSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXOverlayDefault: ElevationZIndexSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXOverlayEmphasis: ElevationZIndexSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXStickyDefault: ElevationZIndexSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXStickyEmphasis: ElevationZIndexSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXStickyNavigationScrolled: ElevationZIndexSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXFocus: ElevationZIndexSemanticToken { ElevationRawTokens.elevationX0 }

    // MARK: Semantic token - Elevation - Y

    @objc open var elevationYNone: ElevationZIndexSemanticToken { ElevationRawTokens.elevationY0 }
    @objc open var elevationYRaised: ElevationZIndexSemanticToken { ElevationRawTokens.elevationY100 }
    @objc open var elevationYDrag: ElevationZIndexSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationYOverlayDefault: ElevationZIndexSemanticToken { ElevationRawTokens.elevationY200 }
    @objc open var elevationYOverlayEmphasis: ElevationZIndexSemanticToken { ElevationRawTokens.elevationY500 }
    @objc open var elevationYStickyDefault: ElevationZIndexSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationYStickyEmphasis: ElevationZIndexSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationYStickyNavigationScrolled: ElevationZIndexSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationYFocus: ElevationZIndexSemanticToken { ElevationRawTokens.elevationY0 }

    // MARK: Semantic token - Elevation - Blur

    @objc open var elevationBlurNone: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur0 }
    @objc open var elevationBlurRaised: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur200 }
    @objc open var elevationBlurDrag: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationBlurOverlayDefault: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur300 }
    @objc open var elevationBlurOverlayEmphasis: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur600 }
    @objc open var elevationBlurStickyDefault: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationBlurStickyEmphasis: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationBlurFocus: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur0 }

    // MARK: Semantic token - Elevation - Spread

    @objc open var elevationSpreadNone: ElevationSpreadSemanticToken { ElevationRawTokens.elevationSpread0 }
    @objc open var elevationSpreadRaised: ElevationSpreadSemanticToken { ElevationRawTokens.elevationSpread0 }
    @objc open var elevationSpreadDrag: ElevationSpreadSemanticToken { ElevationRawTokens.elevationSpreadN100 }
    @objc open var elevationSpreadOverlayDefault: ElevationSpreadSemanticToken { ElevationRawTokens.elevationSpreadN100 }
    @objc open var elevationSpreadOverlayEmphasis: ElevationSpreadSemanticToken { ElevationRawTokens.elevationSpreadN300 }
    @objc open var elevationSpreadStickyDefault: ElevationSpreadSemanticToken { ElevationRawTokens.elevationSpreadN100 }
    @objc open var elevationSpreadStickyEmphasis: ElevationSpreadSemanticToken { ElevationRawTokens.elevationSpreadN100 }
    @objc open var elevationSpreadStickyNavigationScrolled: ElevationSpreadSemanticToken { ElevationRawTokens.elevationSpreadN100 }
    @objc open var elevationSpreadFocus: ElevationSpreadSemanticToken { ElevationRawTokens.elevationSpread300 }

    // MARK: Semantic token - Elevation - Color - None

    @objc open var elevationColorNoneLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack0 }
    @objc open var elevationColorNoneDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack0 }

    // MARK: Semantic token - Elevation - Color - Raised

    @objc open var elevationColorRaisedLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack500 }
    @objc open var elevationColorRaisedDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack500 }

    // MARK: Semantic token - Elevation - Color - Drag

    @objc open var elevationColorDragLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack600 }
    @objc open var elevationColorDragDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack600 }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    @objc open var elevationColorOverlayDefaultLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack400 }
    @objc open var elevationColorOverlayDefaultDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack400 }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasis

    @objc open var elevationColorOverlayEmphasisLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    @objc open var elevationColorOverlayEmphasisDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    @objc open var elevationColorStickyDefaultLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    @objc open var elevationColorStickyDefaultDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasis

    @objc open var elevationColorStickyEmphasisLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    @objc open var elevationColorStickyEmphasisDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    @objc open var elevationColorStickyNavigationScrolledLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    @objc open var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Focus

    @objc open var elevationColorFocusLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentWhite900 }
    @objc open var elevationColorFocusDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentWhite900 }

    // MARK: Semantic token - Elevation - Box shadow

    @objc open var elevationBoxShadowRaisedLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_1_500 }
    @objc open var elevationBoxShadowRaisedDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_1_500 }

    @objc open var elevationBoxShadowDragLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_600 }
    @objc open var elevationBoxShadowDragDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_600 }

    @objc open var elevationBoxShadowOverlayDefaultLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_2_400 }
    @objc open var elevationBoxShadowOverlayDefaultDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_2_400 }

    @objc open var elevationBoxShadowOverlayEmphasisLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_5_300 }
    @objc open var elevationBoxShadowOverlayEmphasisDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_5_300 }

    @objc open var elevationBoxShadowStickyDefaultLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_300 }
    @objc open var elevationBoxShadowStickyDefaultDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_300 }

    @objc open var elevationBoxShadowStickyEmphasisLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_300 }
    @objc open var elevationBoxShadowStickyEmphasisDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_300 }

    @objc open var elevationBoxShadowStickyNavigationScrolledLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_1_500 }
    @objc open var elevationBoxShadowStickyNavigationScrolledDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_1_500 }

    @objc open var elevationBoxShadowFocusLight: ElevationBoxShadowSemanticToken { ElevationBoxShadowRawToken(x: 0, y: 0, blur: 0, spread: 3, color: ColorRawTokens.colorTransparentWhite900) }
    @objc open var elevationBoxShadowFocusDark: ElevationBoxShadowSemanticToken { ElevationBoxShadowRawToken(x: 0, y: 0, blur: 0, spread: 3, color: ColorRawTokens.colorTransparentWhite900) }
}
// swiftlint:enable line_length
