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

import OUDSTokensSemantic

/// Defines basic values common to all themes for `DimensionSemanticTokens`.
/// These values can be override openn inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension MockTheme {

    static let mockThemeDimensionSemanticToken: DimensionSemanticToken = 007

    override open var dimensionNone: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension10XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension9XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension8XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension7XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension6XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension5XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension4XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension3XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension2XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimensionXS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimensionSM: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimensionMD: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimensionLG: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimensionXL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension2XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension3XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension4XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension5XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension6XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension7XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension8XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension9XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension10XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override open var dimension11XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
}
