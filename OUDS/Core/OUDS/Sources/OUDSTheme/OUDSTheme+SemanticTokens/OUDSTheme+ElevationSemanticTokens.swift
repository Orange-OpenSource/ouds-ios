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

/// Defines basic values common to all themes for `ElevationSemanticTokenss`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
/// The aim of this extensions is to make relationships between all semantic tokens for elevations and associated raw tokens.
/// `OUDSTheme` can be seen as a kind of "abstract class" in _object oriented paradigm_.
extension OUDSTheme: ElevationSemanticTokens {

    // MARK: Semantic token - Elevation - X

    @objc open var elevationXNone: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXRaised: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXDrag: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXOverlayDefault: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXOverlayEmphasized: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXStickyDefault: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXStickyEmphasized: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXStickyNavigationScrolled: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }
    @objc open var elevationXFocus: ElevationXSemanticToken { ElevationRawTokens.elevationX0 }

    // MARK: Semantic token - Elevation - Y

    @objc open var elevationYNone: ElevationYSemanticToken { ElevationRawTokens.elevationY0 }
    @objc open var elevationYRaised: ElevationYSemanticToken { ElevationRawTokens.elevationY100 }
    @objc open var elevationYDrag: ElevationYSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationYOverlayDefault: ElevationYSemanticToken { ElevationRawTokens.elevationY200 }
    @objc open var elevationYOverlayEmphasized: ElevationYSemanticToken { ElevationRawTokens.elevationY500 }
    @objc open var elevationYStickyDefault: ElevationYSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationYStickyEmphasized: ElevationYSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationYStickyNavigationScrolled: ElevationYSemanticToken { ElevationRawTokens.elevationY300 }
    @objc open var elevationYFocus: ElevationYSemanticToken { ElevationRawTokens.elevationY0 }

    // MARK: Semantic token - Elevation - Blur

    @objc open var elevationBlurNone: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur0 }
    @objc open var elevationBlurRaised: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur200 }
    @objc open var elevationBlurDrag: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationBlurOverlayDefault: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur300 }
    @objc open var elevationBlurOverlayEmphasized: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur600 }
    @objc open var elevationBlurStickyDefault: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationBlurStickyEmphasized: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationBlurStickyNavigationScrolled: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur400 }
    @objc open var elevationBlurFocus: ElevationBlurSemanticToken { ElevationRawTokens.elevationBlur0 }

    // MARK: Semantic token - Elevation - Color - None

    @objc open var elevationColorNone: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack0) }

    // MARK: Semantic token - Elevation - Color - Raised

    @objc open var elevationColorRaised: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack500) }

    // MARK: Semantic token - Elevation - Color - Drag

    @objc open var elevationColorDrag: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack500) }

    // MARK: Semantic token - Elevation - Color - Overlay - Default

    @objc open var elevationColorOverlayDefault: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack400) }

    // MARK: Semantic token - Elevation - Color - Overlay - Emphasized

    @objc open var elevationColorOverlayEmphasized: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack300) }

    // MARK: Semantic token - Elevation - Color - Sticky - Default

    @objc open var elevationColorStickyDefault: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack300) }

    // MARK: Semantic token - Elevation - Color - Sticky - Emphasized

    @objc open var elevationColorStickyEmphasized: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack300) }

    // MARK: Semantic token - Elevation - Color - Sticky - Navigation scrolled

    @objc open var elevationColorStickyNavigationScrolled: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack300) }

    // MARK: Semantic token - Elevation - Color - Focus

    @objc open var elevationColorFocus: ElevationColorSemanticToken { ElevationColorSemanticToken(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    // MARK: Semantic token - Elevation - Box shadow

    @objc open var elevationRaisedLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_1_500 }
    @objc open var elevationRaisedDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_1_500 }

    @objc open var elevationDragLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_500 }
    @objc open var elevationDragDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_500 }

    @objc open var elevationOverlayDefaultLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_2_400 }
    @objc open var elevationOverlayDefaultDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_2_400 }

    @objc open var elevationOverlayEmphasizedLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_5_300 }
    @objc open var elevationOverlayEmphasizedDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_5_300 }

    @objc open var elevationStickyDefaultLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_300 }
    @objc open var elevationStickyDefaultDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_300 }

    @objc open var elevationStickyEmphasizedLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_300 }
    @objc open var elevationStickyEmphasizedDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_3_300 }

    @objc open var elevationStickyNavigationScrolledLight: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_1_500 }
    @objc open var elevationStickyNavigationScrolledDark: ElevationCompositeSemanticToken { ElevationRawTokens.elevationBottom_1_500 }

    @objc open var elevationFocusLight: ElevationCompositeSemanticToken { ElevationCompositeRawToken(x: 0, y: 0, blur: 0, color: ColorRawTokens.colorFunctionalBlack) }
    @objc open var elevationFocusDark: ElevationCompositeSemanticToken { ElevationCompositeRawToken(x: 0, y: 0, blur: 0, color: ColorRawTokens.colorFunctionalLightGray160) }
}

// swiftlint:enable line_length
