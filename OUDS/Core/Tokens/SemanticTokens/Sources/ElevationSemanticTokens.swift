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

// MARK: - Type aliases to keep grammar clear

public typealias ElevationZIndexSemanticToken = ElevationRawToken
public typealias ElevationXSemanticToken = ElevationRawToken
public typealias ElevationYSemanticToken = ElevationRawToken
public typealias ElevationBlurSemanticToken = ElevationRawToken
public typealias ElevationSpreadSemanticToken = ElevationRawToken
public typealias ElevationColorSemanticToken = ColorRawToken

// MARK: - Semantic tokens

/// This is a group of semantic tokens for **elevations**.
/// It defines all `ElevationSemanticToken` a theme must have.
public protocol ElevationSemanticTokens {

    // MARK: Semantic token - Elevation - Z index

    var elevationZIndexDeep: ElevationZIndexSemanticToken { get }
    var elevationZIndexDefault: ElevationZIndexSemanticToken { get }
    var elevationZIndexDropdown: ElevationZIndexSemanticToken { get }
    var elevationZIndexSticky: ElevationZIndexSemanticToken { get }
    var elevationZIndexFixed: ElevationZIndexSemanticToken { get }
    var elevationZIndexBackToTop: ElevationZIndexSemanticToken { get }
    var elevationZIndexSpinner: ElevationZIndexSemanticToken { get }
    var elevationZIndexOffCanvasBackdrop: ElevationZIndexSemanticToken { get }
    var elevationZIndexOffCanvas: ElevationZIndexSemanticToken { get }
    var elevationZIndexModalBackdrop: ElevationZIndexSemanticToken { get }
    var elevationZIndexModal: ElevationZIndexSemanticToken { get }
    var elevationZIndexPopover: ElevationZIndexSemanticToken { get }
    var elevationZIndexTooltip: ElevationZIndexSemanticToken { get }
    var elevationZIndexToast: ElevationZIndexSemanticToken { get }

    // MARK: Semantic token - Elevation - X

    var elevationXNone: ElevationZIndexSemanticToken { get }
    var elevationXRaised: ElevationZIndexSemanticToken { get }
    var elevationXDrag: ElevationZIndexSemanticToken { get }
    var elevationXOverlayDefault: ElevationZIndexSemanticToken { get }
    var elevationXOverlayEmphasis: ElevationZIndexSemanticToken { get }
    var elevationXStickyDefault: ElevationZIndexSemanticToken { get }
    var elevationXStickyEmphasis: ElevationZIndexSemanticToken { get }
    var elevationXStickyNavigationScrolled: ElevationZIndexSemanticToken { get }
    var elevationXFOcus: ElevationZIndexSemanticToken { get }

    // MARK: Semantic token - Elevation - Y

    var elevationYNone: ElevationZIndexSemanticToken { get }
    var elevationYRaised: ElevationZIndexSemanticToken { get }
    var elevationYDrag: ElevationZIndexSemanticToken { get }
    var elevationYOverlayDefault: ElevationZIndexSemanticToken { get }
    var elevationYOverlayEmphasis: ElevationZIndexSemanticToken { get }
    var elevationYStickyDefault: ElevationZIndexSemanticToken { get }
    var elevationYStickyEmphasis: ElevationZIndexSemanticToken { get }
    var elevationYStickyNavigationScrolled: ElevationZIndexSemanticToken { get }
    var elevationYFocus: ElevationZIndexSemanticToken { get }

    // MARK: Semantic token - Elevation - Blur

    var elevationBlurNone: ElevationBlurSemanticToken { get }
    var elevationBlurRaised: ElevationBlurSemanticToken { get }
    var elevationBlurDrag: ElevationBlurSemanticToken { get }
    var elevationBlurOverlayDefault: ElevationBlurSemanticToken { get }
    var elevationBlurOverlayEmphasis: ElevationBlurSemanticToken { get }
    var elevationBlurStickyDefault: ElevationBlurSemanticToken { get }
    var elevationBlurStickyEmphasis: ElevationBlurSemanticToken { get }
    var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { get }
    var elevationBlurFocus: ElevationBlurSemanticToken { get }

    // MARK: Semantic token - Elevation - Spread

    var elevationSpreadNone: ElevationSpreadSemanticToken { get }
    var elevationSpreadRaised: ElevationSpreadSemanticToken { get }
    var elevationSpreadDrag: ElevationSpreadSemanticToken { get }
    var elevationSpreadOverlayDefault: ElevationSpreadSemanticToken { get }
    var elevationSpreadOverlayEmphasis: ElevationSpreadSemanticToken { get }
    var elevationSpreadStickyDefault: ElevationSpreadSemanticToken { get }
    var elevationSpreadStickyEmphasis: ElevationSpreadSemanticToken { get }
    var elevationSpreadStickyNavigationScrolled: ElevationSpreadSemanticToken { get }
    var elevationSpreadFocus: ElevationSpreadSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - None

    var elevationColorNoneLigh: ElevationColorSemanticToken { get }
    var elevationColorNoneDark: ElevationColorSemanticToken { get }
    var elevationColorNoneInverse: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Raised

    var elevationColorRaisedLigh: ElevationColorSemanticToken { get }
    var elevationColorRaisedDark: ElevationColorSemanticToken { get }
    var elevationColorRaisedInverse: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Drag

    var elevationColorDragLigh: ElevationColorSemanticToken { get }
    var elevationColorDragDark: ElevationColorSemanticToken { get }
    var elevationColorDragInverse: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    var elevationColorOverlayDefaultLigh: ElevationColorSemanticToken { get }
    var elevationColorOverlayDefaultDark: ElevationColorSemanticToken { get }
    var elevationColorOverlayDefaultInverse: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasis

    var elevationColorOverlayEmphasisLigh: ElevationColorSemanticToken { get }
    var elevationColorOverlayEmphasisDark: ElevationColorSemanticToken { get }
    var elevationColorOverlayEmphasisInverse: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    var elevationColorStickyDefaultLigh: ElevationColorSemanticToken { get }
    var elevationColorStickyDefaultDark: ElevationColorSemanticToken { get }
    var elevationColorStickyDefaultInverse: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasis

    var elevationColorStickyEmphasisLigh: ElevationColorSemanticToken { get }
    var elevationColorStickyEmphasisDark: ElevationColorSemanticToken { get }
    var elevationColorStickyEmphasisInverse: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    var elevationColorStickyNavigationScrolledLigh: ElevationColorSemanticToken { get }
    var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken { get }
    var elevationColorStickyNavigationScrolledInverse: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Focus

    var elevationColorFocusLigh: ElevationColorSemanticToken { get }
    var elevationColorFocusDark: ElevationColorSemanticToken { get }
    var elevationColorFocusInverse: ElevationColorSemanticToken { get }
}
