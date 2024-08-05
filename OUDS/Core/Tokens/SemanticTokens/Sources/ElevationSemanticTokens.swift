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
/// It defines all elevation semantic tokens a theme must have. (`ElevationZIndexSemanticToken`,`ElevationXSemanticToken`,`ElevationYSemanticToken`,
/// `ElevationBlurSemanticToken`,`ElevationSpreadSemanticToken` and `ElevationColorSemanticToken`)
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
    var elevationXFocus: ElevationZIndexSemanticToken { get }

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

    var elevationColorNoneLight: ElevationColorSemanticToken { get }
    var elevationColorNoneDark: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Raised

    var elevationColorRaisedLight: ElevationColorSemanticToken { get }
    var elevationColorRaisedDark: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Drag

    var elevationColorDragLight: ElevationColorSemanticToken { get }
    var elevationColorDragDark: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    var elevationColorOverlayDefaultLight: ElevationColorSemanticToken { get }
    var elevationColorOverlayDefaultDark: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasis

    var elevationColorOverlayEmphasisLight: ElevationColorSemanticToken { get }
    var elevationColorOverlayEmphasisDark: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    var elevationColorStickyDefaultLight: ElevationColorSemanticToken { get }
    var elevationColorStickyDefaultDark: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasis

    var elevationColorStickyEmphasisLight: ElevationColorSemanticToken { get }
    var elevationColorStickyEmphasisDark: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    var elevationColorStickyNavigationScrolledLight: ElevationColorSemanticToken { get }
    var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken { get }

    // MARK: Semantic token - Elevation - Color - Focus

    var elevationColorFocusLight: ElevationColorSemanticToken { get }
    var elevationColorFocusDark: ElevationColorSemanticToken { get }

    // TODO: Is Box shadow (Composite) a semantic token type to deal with?

}
