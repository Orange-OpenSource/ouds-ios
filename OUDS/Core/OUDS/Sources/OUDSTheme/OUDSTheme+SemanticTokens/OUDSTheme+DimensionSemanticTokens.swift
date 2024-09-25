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

/// Defines basic values common to all themes for `DimensionSemanticTokens`.
/// These values can be overriden inside `OUDSTheme` subclasses (in extensions or not, in the same module or not) thanks to the `@objc open` combination.
extension OUDSTheme: DimensionSemanticTokens {

    @objc open var dimension0: DimensionSemanticToken { DimensionRawTokens.dimension0 }
    @objc open var dimension10: DimensionSemanticToken { DimensionRawTokens.dimension25 }
    @objc open var dimension20: DimensionSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var dimension30: DimensionSemanticToken { DimensionRawTokens.dimension75 }
    @objc open var dimension40: DimensionSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var dimension50: DimensionSemanticToken { DimensionRawTokens.dimension150 }
    @objc open var dimension60: DimensionSemanticToken { DimensionRawTokens.dimension200 }
    @objc open var dimension70: DimensionSemanticToken { DimensionRawTokens.dimension250 }
    @objc open var dimension80: DimensionSemanticToken { DimensionRawTokens.dimension300 }
    @objc open var dimension90: DimensionSemanticToken { DimensionRawTokens.dimension350 }
    @objc open var dimension100: DimensionSemanticToken { DimensionRawTokens.dimension400 }
    @objc open var dimension110: DimensionSemanticToken { DimensionRawTokens.dimension450 }
    @objc open var dimension120: DimensionSemanticToken { DimensionRawTokens.dimension500 }
    @objc open var dimension130: DimensionSemanticToken { DimensionRawTokens.dimension550 }
    @objc open var dimension140: DimensionSemanticToken { DimensionRawTokens.dimension600 }
    @objc open var dimension150: DimensionSemanticToken { DimensionRawTokens.dimension650 }
    @objc open var dimension160: DimensionSemanticToken { DimensionRawTokens.dimension700 }
    @objc open var dimension170: DimensionSemanticToken { DimensionRawTokens.dimension750 }
    @objc open var dimension180: DimensionSemanticToken { DimensionRawTokens.dimension800 }
    @objc open var dimension190: DimensionSemanticToken { DimensionRawTokens.dimension900 }
    @objc open var dimension200: DimensionSemanticToken { DimensionRawTokens.dimension1000 }
    @objc open var dimension210: DimensionSemanticToken { DimensionRawTokens.dimension1200 }
    @objc open var dimension220: DimensionSemanticToken { DimensionRawTokens.dimension1400 }
    @objc open var dimension230: DimensionSemanticToken { DimensionRawTokens.dimension1600 }
    @objc open var dimension240: DimensionSemanticToken { DimensionRawTokens.dimension1800 }
}
