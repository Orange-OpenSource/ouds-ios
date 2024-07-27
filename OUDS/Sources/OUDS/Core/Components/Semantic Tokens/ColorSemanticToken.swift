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
import SwiftUI

public struct ColorSemanticToken: SemanticTokenContract {

    var property: (any SemanticTokenPropertyContract)?
    var variant: (any SemanticTokenVariantContract)?
    var subvariant: (any SemanticTokenSubvariantContract)?
    var state: (any SemanticTokenStateContract)?
    var rawValue: any PrimitiveTokenContract

    let finalValue: Color

    init(property: Self.Property, variant: Self.Variant, subvariant: Self.Subvariant, state: TokenState, rawValue: ColorPrimitiveToken) {
        self.property = property
        self.variant = variant
        self.subvariant = subvariant
        self.state = state
        self.rawValue = rawValue
        finalValue = rawValue.rawValue
    }

    enum Property: SemanticTokenPropertyContract {
        case foreground
        case background
        case border
        case decorative
    }

    enum Variant: SemanticTokenVariantContract {
        case primary
        case secondary
        case tertiary
        case neutral
        case information
        case warning
        case negative
        case attractive
        case `default`
        case emmphasis
        case contrasted
        case inverted
    }

    enum Subvariant: SemanticTokenSubvariantContract {
        case `default`
        case low
        case lower
        case lowest
        case high
        case higher
        case highet
    }
}
