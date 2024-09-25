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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]

extension InverseTheme {

    // MARK: Semantic token - Elevation - Color - Focus

    public override var elevationColorFocus: ElevationColorSemanticToken { MultipleColorSemanticToken( ColorRawTokens.colorFunctionalLightGray160) }
    
    // MARK: Semantic token - Elevation - Box shadow

    public override var elevationRaisedLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_1_500 }
    public override var elevationRaisedDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_1_500 }

    public override var elevationDragLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_600 }
    public override var elevationDragDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_600 }

    public override var elevationOverlayDefaultLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_2_400 }
    public override var elevationOverlayDefaultDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_2_400 }

    public override var elevationOverlayEmphasizedLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_5_300 }
    public override var elevationOverlayEmphasizedDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_5_300 }

    public override var elevationStickyDefaultLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_300 }
    public override var elevationStickyDefaultDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_300 }

    public override var elevationStickyEmphasizedLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_300 }
    public override var elevationStickyEmphasizedDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_300 }

    public override var elevationStickyNavigationScrolledLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_1_500 }
    public override var elevationStickyNavigationScrolledDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_1_500 }

    public override var elevationFocusLight: ElevationCompositeSemanticToken { ElevationCompositeRawToken(x: 0, y: 0, blur: 0, color: ColorRawTokens.colorTransparentWhite900) }
    public override var elevationFocusDark: ElevationCompositeSemanticToken { ElevationCompositeRawToken(x: 0, y: 0, blur: 0, color: ColorRawTokens.colorTransparentWhite900) }
}
