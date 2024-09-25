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
import OUDSTokensSemantic

/// Defines basic values common to all themes for `DimensionSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension MockTheme {

    static let mockThemeDimensionSemanticToken: DimensionSemanticToken = 007

    override var dimensionNone: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension10XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension9XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension8XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension7XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension6XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension5XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension4XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension3XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension2XS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimensionXS: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimensionSM: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimensionMD: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimensionLG: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimensionXL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension2XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension3XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension4XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension5XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension6XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension7XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension8XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension9XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension10XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
    override var dimension11XL: DimensionSemanticToken { Self.mockThemeDimensionSemanticToken }
}
