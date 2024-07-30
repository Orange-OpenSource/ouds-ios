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

// MARK: - Type aliases to keep grammar clear

public typealias ElevationZIndexSemanticToken = ElevationPrimitiveToken
public typealias ElevationXSemanticToken = ElevationPrimitiveToken
public typealias ElevationYSemanticToken = ElevationPrimitiveToken
public typealias ElevationBlurSemanticToken = ElevationPrimitiveToken
public typealias ElevationSpreadSemanticToken = ElevationPrimitiveToken

// MARK: - Semantic tokens

public struct ElevationSemanticTokens {
    
    // MARK: Semantic token - Elevation - Z index

    static let elevationZIndexDeep: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndexMinus9999
    static let elevationZIndexDefault: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex0
    static let elevationZIndexDropdown: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1000
    static let elevationZIndexSticky: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1020
    static let elevationZIndexFixed: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1030
    static let elevationZIndexBackToTop: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1035
    static let elevationZIndexSpinner: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1038
    static let elevationZIndexOffCanvasBackdrop: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1040
    static let elevationZIndexOffCanvas: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1045
    static let elevationZIndexModalBackdrop: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1050
    static let elevationZIndexModal: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1060
    static let elevationZIndexPopover: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1070
    static let elevationZIndexTooltip: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1080
    static let elevationZIndexToast: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationZIndex1090

    // MARK: Semantic token - Elevation - X

    static let elevationXNone: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    static let elevationXRaised: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    static let elevationXDrag: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    static let elevationXOverlayDefault: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    static let elevationXOverlayEmphasis: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    static let elevationXStickyDefault: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    static let elevationXStickyEmphasis: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    static let elevationXStickyNavigationScrolled: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0
    static let elevationXFOcus: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationX0

    // MARK: Semantic token - Elevation - Y

    static let elevationYNone: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY0
    static let elevationYRaised: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY100
    static let elevationYDrag: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY300
    static let elevationYOverlayDefault: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY200
    static let elevationYOverlayEmphasis: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY500
    static let elevationYStickyDefault: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY300
    static let elevationYStickyEmphasis: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY300
    static let elevationYStickyNavigationScrolled: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY300
    static let elevationYFocus: ElevationZIndexSemanticToken = ElevationPrimitiveTokens.elevationY0

    // MARK: Semantic token - Elevation - Blur

    static let elevationBlurNone: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur0
    static let elevationBlurRaised: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur200
    static let elevationBlurDrag: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur400
    static let elevationBlurOverlayDefault: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur300
    static let elevationBlurOverlayEmphasis: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur600
    static let elevationBlurStickyDefault: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur400
    static let elevationBlurStickyEmphasis: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur400
    static let elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur400
    static let elevationBlurFocus: ElevationBlurSemanticToken = ElevationPrimitiveTokens.elevationBlur0

    // MARK: Semantic token - Elevation - Spread

    static let elevationSpreadNone: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpread0
    static let elevationSpreadRaised: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpread0
    static let elevationSpreadDrag: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus100
    static let elevationSpreadOverlayDefault: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus100
    static let elevationSpreadOverlayEmphasis: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus300
    static let elevationSpreadStickyDefault: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus100
    static let elevationSpreadStickyEmphasis: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus100
    static let elevationSpreadStickyNavigationScrolled: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpreadMinus100
    static let elevationSpreadFocus: ElevationSpreadSemanticToken = ElevationPrimitiveTokens.elevationSpread300
    
    // MARK: Color
    // TODO: Add semantic tokens for color elevations
}
