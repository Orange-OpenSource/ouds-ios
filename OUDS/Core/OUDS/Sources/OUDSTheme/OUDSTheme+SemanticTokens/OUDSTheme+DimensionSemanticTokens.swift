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
// [File to generate by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

/// Defines basic values common to all themes for `DimensionSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: DimensionSemanticTokens {

    @objc open var dimensionNone: DimensionSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var dimension10XS: DimensionSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var dimension9XS: DimensionSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var dimension8XS: DimensionSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var dimension7XS: DimensionSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var dimension6XS: DimensionSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var dimension5XS: DimensionSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var dimension4XS: DimensionSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var dimension3XS: DimensionSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var dimension2XS: DimensionSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var dimensionXS: DimensionSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var dimensionSM: DimensionSemanticToken { DimensionRawTokens.dimension450 }
    @objc open var dimensionMD: DimensionSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var dimensionLG: DimensionSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var dimensionXL: DimensionSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var dimension2XL: DimensionSemanticToken { DimensionRawTokens.dimension650 }
    @objc open var dimension3XL: DimensionSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var dimension4XL: DimensionSemanticToken { DimensionRawTokens.dimension750 }
    @objc open var dimension5XL: DimensionSemanticToken { DimensionRawTokens.dimension800 }
    @objc open var dimension6XL: DimensionSemanticToken { DimensionRawTokens.dimension900 }
    @objc open var dimension7XL: DimensionSemanticToken { DimensionRawTokens.dimension1000 }
    @objc open var dimension8XL: DimensionSemanticToken { DimensionRawTokens.dimension1200 }
    @objc open var dimension9XL: DimensionSemanticToken { DimensionRawTokens.dimension1400 }
    @objc open var dimension10XL: DimensionSemanticToken { DimensionRawTokens.dimension1600 }
    @objc open var dimension11XL: DimensionSemanticToken { DimensionRawTokens.dimension1800 }
}
