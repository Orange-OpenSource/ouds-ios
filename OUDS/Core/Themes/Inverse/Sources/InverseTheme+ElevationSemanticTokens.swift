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
extension InverseTheme {

    // MARK: Semantic token - Elevation - Color - None

    public override var elevationColorNoneLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack0 }
    public override var elevationColorNoneDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack0 }

    // MARK: Semantic token - Elevation - Color - Raised

    public override var elevationColorRaisedLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack500 }
    public override var elevationColorRaisedDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack500 }

    // MARK: Semantic token - Elevation - Color - Drag

    public override var elevationColorDragLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack600 }
    public override var elevationColorDragDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack600 }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    public override var elevationColorOverlayDefaultLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack400 }
    public override var elevationColorOverlayDefaultDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack400 }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasized

    public override var elevationColorOverlayEmphasizedLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    public override var elevationColorOverlayEmphasizedDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    public override var elevationColorStickyDefaultLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    public override var elevationColorStickyDefaultDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasized

    public override var elevationColorStickyEmphasizedLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    public override var elevationColorStickyEmphasizedDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    public override var elevationColorStickyNavigationScrolledLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    public override var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Focus

    public override var elevationColorFocusLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentWhite900 }
    public override var elevationColorFocusDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentWhite900 }

    // MARK: Semantic token - Elevation - Box shadow

    public override var elevationRaisedLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_1_500 }
    public override var elevationRaisedDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_1_500 }

    public override var elevationDragLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_3_600 }
    public override var elevationDragDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_3_600 }

    public override var elevationOverlayDefaultLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_2_400 }
    public override var elevationOverlayDefaultDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_2_400 }

    public override var elevationOverlayEmphasizedLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_5_300 }
    public override var elevationOverlayEmphasizedDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_5_300 }

    public override var elevationStickyDefaultLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_3_300 }
    public override var elevationStickyDefaultDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_3_300 }

    public override var elevationStickyEmphasizedLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_3_300 }
    public override var elevationStickyEmphasizedDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_3_300 }

    public override var elevationStickyNavigationScrolledLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_1_500 }
    public override var elevationStickyNavigationScrolledDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationCompositeBottom_1_500 }

    public override var elevationFocusLight: ElevationCompositeSemanticToken { ElevationCompositeRawToken(x: 0, y: 0, blur: 0, spread: 3, color: ColorRawTokens.colorTransparentWhite900) }
    public override var elevationFocusDark: ElevationCompositeSemanticToken { ElevationCompositeRawToken(x: 0, y: 0, blur: 0, spread: 3, color: ColorRawTokens.colorTransparentWhite900) }
}
// swiftlint:enable line_length
