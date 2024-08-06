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

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasis

    public override var elevationColorOverlayEmphasisLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    public override var elevationColorOverlayEmphasisDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    public override var elevationColorStickyDefaultLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    public override var elevationColorStickyDefaultDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasis

    public override var elevationColorStickyEmphasisLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    public override var elevationColorStickyEmphasisDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    public override var elevationColorStickyNavigationScrolledLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }
    public override var elevationColorStickyNavigationScrolledDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentBlack300 }

    // MARK: Semantic token - Elevation - Color - Focus

    public override var elevationColorFocusLight: ElevationColorSemanticToken { ColorRawTokens.colorTransparentWhite900 }
    public override var elevationColorFocusDark: ElevationColorSemanticToken { ColorRawTokens.colorTransparentWhite900 }

    // MARK: Semantic token - Elevation - Box shadow

    public override var elevationBoxShadowRaisedLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_1_500 }
    public override var elevationBoxShadowRaisedDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_1_500 }

    public override var elevationBoxShadowDragLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_600 }
    public override var elevationBoxShadowDragDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_600 }

    public override var elevationBoxShadowOverlayDefaultLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_2_400 }
    public override var elevationBoxShadowOverlayDefaultDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_2_400 }

    public override var elevationBoxShadowOverlayEmphasisLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_5_300 }
    public override var elevationBoxShadowOverlayEmphasisDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_5_300 }

    public override var elevationBoxShadowStickyDefaultLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_300 }
    public override var elevationBoxShadowStickyDefaultDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_300 }

    public override var elevationBoxShadowStickyEmphasisLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_300 }
    public override var elevationBoxShadowStickyEmphasisDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_3_300 }

    public override var elevationBoxShadowStickyNavigationScrolledLight: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_1_500 }
    public override var elevationBoxShadowStickyNavigationScrolledDark: ElevationBoxShadowSemanticToken { ElevationRawTokens.elevationBoxShadowBottom_1_500 }

    public override var elevationBoxShadowFocusLight: ElevationBoxShadowSemanticToken { ElevationBoxShadowRawToken(x: 0, y: 0, blur: 0, spread: 3, color: ColorRawTokens.colorTransparentWhite900) }
    public override var elevationBoxShadowFocusDark: ElevationBoxShadowSemanticToken { ElevationBoxShadowRawToken(x: 0, y: 0, blur: 0, spread: 3, color: ColorRawTokens.colorTransparentWhite900) }
}
// swiftlint:enable line_length
