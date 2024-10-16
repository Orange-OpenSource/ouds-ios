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

// swiftlint:disable line_length

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

    // MARK: Semantic token - Elevation - Color

    @objc open var elevationColorNone: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack0) }
    @objc open var elevationColorRaised: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack500) }
    @objc open var elevationColorDrag: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack500) }
    @objc open var elevationColorOverlayDefault: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack400) }
    @objc open var elevationColorOverlayEmphasized: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack300) }
    @objc open var elevationColorStickyDefault: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack300) }
    @objc open var elevationColorStickyEmphasized: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack300) }
    @objc open var elevationColorStickyNavigationScrolled: ElevationColorSemanticToken { ElevationColorSemanticToken(ColorRawTokens.colorTransparentBlack300) }
    @objc open var elevationColorFocus: ElevationColorSemanticToken { ElevationColorSemanticToken(light: ColorRawTokens.colorFunctionalBlack, dark: ColorRawTokens.colorFunctionalLightGray160) }

    // MARK: Semantic token - Elevation - Box shadow

    @objc open var elevationNone: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_0) }
    @objc open var elevationRaised: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_1_500) }
    @objc open var elevationDrag: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_3_500) }
    @objc open var elevationOverlayDefault: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_2_400) }
    @objc open var elevationOverlayEmphasized: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_5_300) }
    @objc open var elevationStickyDefault: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_3_300) }
    @objc open var elevationStickyEmphasized: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_3_300) }
    @objc open var elevationStickyNavigationScrolled: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_3_300) }
    @objc open var elevationFocus: ElevationCompositeSemanticToken { ElevationCompositeSemanticToken(light: ElevationCompositeRawToken(x: 0, y: 0, blur: 0, color: ColorRawTokens.colorFunctionalBlack), dark: ElevationCompositeRawToken(x: 0, y: 0, blur: 0, color: ColorRawTokens.colorFunctionalLightGray160)) }
}

// swiftlint:enable line_length
