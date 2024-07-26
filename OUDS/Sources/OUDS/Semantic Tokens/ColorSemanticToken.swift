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

public struct ColorSemanticToken: SemanticToken {

    var property: (any SemanticTokenProperty)?
    var variant: (any SemanticTokenVariant)?
    var subvariant: (any SemanticTokenSubvariant)?
    var state: (any SemanticTokenState)?
    var rawValue: any PrimitiveToken

    let finalValue: Color

    init(property: Self.Property, variant: Self.Variant, subvariant: Self.Subvariant, state: RealTokenState, rawValue: ColorPrimitiveToken) {
        self.property = property
        self.variant = variant
        self.subvariant = subvariant
        self.state = state
        self.rawValue = rawValue
        finalValue = rawValue.rawValue
    }

    enum Property: SemanticTokenProperty {
        case foreground
        case background
        case border
        case decorative
    }

    enum Variant: SemanticTokenVariant {
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

    enum Subvariant: SemanticTokenSubvariant {
        case `default`
        case low
        case lower
        case lowest
        case high
        case higher
        case highet
    }
}
