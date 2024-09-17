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
    static let mockThemeElevationColorRawToken: ColorRawToken = ColorRawTokens.colorFunctionalMalachite500
    static let mockThemeCompositeRawToken: ElevationCompositeRawToken = ElevationCompositeRawToken(x: 118,
                                                                                                   y: 712,
                                                                                                   blur: 118,
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
    override var elevationXOverlayEmphasized: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXStickyDefault: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXStickyEmphasized: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXStickyNavigationScrolled: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }
    override var elevationXFocus: ElevationZIndexSemanticToken { Self.mockThemeXRawToken }

    // MARK: Semantic token - Elevation - Y

    override var elevationYNone: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYRaised: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYDrag: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYOverlayDefault: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYOverlayEmphasized: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYStickyDefault: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYStickyEmphasized: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYStickyNavigationScrolled: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }
    override var elevationYFocus: ElevationZIndexSemanticToken { Self.mockThemeYRawToken }

    // MARK: Semantic token - Elevation - Blur

    override var elevationBlurNone: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurRaised: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurDrag: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurOverlayDefault: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurOverlayEmphasized: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurStickyDefault: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurStickyEmphasized: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }
    override var elevationBlurFocus: ElevationBlurSemanticToken { Self.mockThemeBlurRawToken }

    // MARK: Semantic token - Elevation - Color - None

    override var elevationColorNoneLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override var elevationColorNoneDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }

    // MARK: Semantic token - Elevation - Color - Raised

    override var elevationColorRaisedLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override var elevationColorRaisedDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }

    // MARK: Semantic token - Elevation - Color - Drag

    override var elevationColorDragLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override var elevationColorDragDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    override var elevationColorOverlayDefaultLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override var elevationColorOverlayDefaultDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasized

    override var elevationColorOverlayEmphasizedLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override var elevationColorOverlayEmphasizedDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    override var elevationColorStickyDefaultLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override var elevationColorStickyDefaultDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasized

    override var elevationColorStickyEmphasizedLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override var elevationColorStickyEmphasizedDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    override var elevationColorStickyNavigationScrolledLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }

    // MARK: Semantic token - Elevation - Color - Focus

    override var elevationColorFocusLight: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }
    override var elevationColorFocusDark: ElevationColorSemanticToken { Self.mockThemeElevationColorRawToken }

    // MARK: Semantic token - Elevation - Box shadow

    override var elevationRaisedLight: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }
    override var elevationRaisedDark: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }

    override var elevationDragLight: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }
    override var elevationDragDark: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }

    override var elevationOverlayDefaultLight: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }
    override var elevationOverlayDefaultDark: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }

    override var elevationOverlayEmphasizedLight: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }
    override var elevationOverlayEmphasizedDark: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }

    override var elevationStickyDefaultLight: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }
    override var elevationStickyDefaultDark: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }

    override var elevationStickyEmphasizedLight: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }
    override var elevationStickyEmphasizedDark: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }

    override var elevationStickyNavigationScrolledLight: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }
    override var elevationStickyNavigationScrolledDark: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }

    override var elevationFocusLight: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }
    override var elevationFocusDark: ElevationCompositeSemanticToken { Self.mockThemeCompositeRawToken }
}
