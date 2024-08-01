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

public typealias ElevationZIndexSemanticToken = ElevationPrimitiveToken
public typealias ElevationXSemanticToken = ElevationPrimitiveToken
public typealias ElevationYSemanticToken = ElevationPrimitiveToken
public typealias ElevationBlurSemanticToken = ElevationPrimitiveToken
public typealias ElevationSpreadSemanticToken = ElevationPrimitiveToken
public typealias ElevationColorSemanticToken = ColorTransparentPrimitiveToken

// MARK: - Semantic tokens

public protocol ElevationSemanticTokens {
    
    // MARK: Semantic token - Elevation - Z index

    var elevationZIndexDeep: ElevationZIndexSemanticToken { get set }
    var elevationZIndexDefault: ElevationZIndexSemanticToken { get set }
    var elevationZIndexDropdown: ElevationZIndexSemanticToken { get set }
    var elevationZIndexSticky: ElevationZIndexSemanticToken { get set }
    var elevationZIndexFixed: ElevationZIndexSemanticToken { get set }
    var elevationZIndexBackToTop: ElevationZIndexSemanticToken { get set }
    var elevationZIndexSpinner: ElevationZIndexSemanticToken { get set }
    var elevationZIndexOffCanvasBackdrop: ElevationZIndexSemanticToken { get set }
    var elevationZIndexOffCanvas: ElevationZIndexSemanticToken { get set }
    var elevationZIndexModalBackdrop: ElevationZIndexSemanticToken { get set }
    var elevationZIndexModal: ElevationZIndexSemanticToken { get set }
    var elevationZIndexPopover: ElevationZIndexSemanticToken { get set }
    var elevationZIndexTooltip: ElevationZIndexSemanticToken { get set }
    var elevationZIndexToast: ElevationZIndexSemanticToken { get set }

    // MARK: Semantic token - Elevation - X

    var elevationXNone: ElevationZIndexSemanticToken { get set }
    var elevationXRaised: ElevationZIndexSemanticToken { get set }
    var elevationXDrag: ElevationZIndexSemanticToken { get set }
    var elevationXOverlayDefault: ElevationZIndexSemanticToken { get set }
    var elevationXOverlayEmphasis: ElevationZIndexSemanticToken { get set }
    var elevationXStickyDefault: ElevationZIndexSemanticToken { get set }
    var elevationXStickyEmphasis: ElevationZIndexSemanticToken { get set }
    var elevationXStickyNavigationScrolled: ElevationZIndexSemanticToken { get set }
    var elevationXFOcus: ElevationZIndexSemanticToken { get set }

    // MARK: Semantic token - Elevation - Y

    var elevationYNone: ElevationZIndexSemanticToken { get set }
    var elevationYRaised: ElevationZIndexSemanticToken { get set }
    var elevationYDrag: ElevationZIndexSemanticToken { get set }
    var elevationYOverlayDefault: ElevationZIndexSemanticToken { get set }
    var elevationYOverlayEmphasis: ElevationZIndexSemanticToken { get set }
    var elevationYStickyDefault: ElevationZIndexSemanticToken { get set }
    var elevationYStickyEmphasis: ElevationZIndexSemanticToken { get set }
    var elevationYStickyNavigationScrolled: ElevationZIndexSemanticToken { get set }
    var elevationYFocus: ElevationZIndexSemanticToken { get set }

    // MARK: Semantic token - Elevation - Blur

    var elevationBlurNone: ElevationBlurSemanticToken { get set }
    var elevationBlurRaised: ElevationBlurSemanticToken { get set }
    var elevationBlurDrag: ElevationBlurSemanticToken { get set }
    var elevationBlurOverlayDefault: ElevationBlurSemanticToken { get set }
    var elevationBlurOverlayEmphasis: ElevationBlurSemanticToken { get set }
    var elevationBlurStickyDefault: ElevationBlurSemanticToken { get set }
    var elevationBlurStickyEmphasis: ElevationBlurSemanticToken { get set }
    var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { get set }
    var elevationBlurFocus: ElevationBlurSemanticToken { get set }

    // MARK: Semantic token - Elevation - Spread

    var elevationSpreadNone: ElevationSpreadSemanticToken { get set }
    var elevationSpreadRaised: ElevationSpreadSemanticToken { get set }
    var elevationSpreadDrag: ElevationSpreadSemanticToken { get set }
    var elevationSpreadOverlayDefault: ElevationSpreadSemanticToken { get set }
    var elevationSpreadOverlayEmphasis: ElevationSpreadSemanticToken { get set }
    var elevationSpreadStickyDefault: ElevationSpreadSemanticToken { get set }
    var elevationSpreadStickyEmphasis: ElevationSpreadSemanticToken { get set }
    var elevationSpreadStickyNavigationScrolled: ElevationSpreadSemanticToken { get set }
    var elevationSpreadFocus: ElevationSpreadSemanticToken { get set }

    // MARK: Semantic token - Elevation - Color - None

    var elevationColorNoneLigh: ElevationColorSemanticToken { get set }
    var elevationColorNoneDark: ElevationColorSemanticToken { get set }
    var elevationColorNoneInverse: ElevationColorSemanticToken { get set }

    // MARK: Semantic token - Elevation - Color - Raised

    var elevationColorRaisedLigh: ElevationColorSemanticToken { get set }
    var elevationColorRaisedDark: ElevationColorSemanticToken { get set }
    var elevationColorRaisedInverse: ElevationColorSemanticToken { get set }

    // MARK: Semantic token - Elevation - Color - Drag

    var elevationColorDragLigh: ElevationColorSemanticToken { get set }
    var elevationColorDragDark: ElevationColorSemanticToken { get set }
    var elevationColorDragInverse: ElevationColorSemanticToken { get set }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    var elevationColorOverlayDefaultLigh: ElevationColorSemanticToken { get set }
    var elevationColorOverlayDefaultDark: ElevationColorSemanticToken { get set }
    var elevationColorOverlayDefaultInverse: ElevationColorSemanticToken { get set }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasis

    var elevationColorOverlayEmphasisLigh: ElevationColorSemanticToken { get set }
    var elevationColorOverlayEmphasisDark: ElevationColorSemanticToken { get set }
    var elevationColorOverlayEmphasisInverse: ElevationColorSemanticToken { get set }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    var elevationColorStickyDefaultLigh: ElevationColorSemanticToken { get set }
    var elevationColorStickyDefaultDark: ElevationColorSemanticToken { get set }
    var elevationColorStickyDefaultInverse: ElevationColorSemanticToken { get set }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasis

    var elevationColorStickyEmphasisLigh: ElevationColorSemanticToken { get set }
    var elevationColorStickyEmphasisDark: ElevationColorSemanticToken { get set }
    var elevationColorStickyEmphasisInverse: ElevationColorSemanticToken { get set }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    var elevationColorStickyNavigationScrolledLigh: ElevationColorSemanticToken { get set }
    var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken { get set }
    var elevationColorStickyNavigationScrolledInverse: ElevationColorSemanticToken { get set }

    // MARK: Semantic token - Elevation - Color - Focus

    var elevationColorFocusLigh: ElevationColorSemanticToken { get set }
    var elevationColorFocusDark: ElevationColorSemanticToken { get set }
    var elevationColorFocusInverse: ElevationColorSemanticToken { get set }

}
