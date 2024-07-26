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

struct BorderSemanticToken: SemanticToken {

    var property: (any SemanticTokenProperty)?
    var variant: (any SemanticTokenVariant)?
    var subvariant: (any SemanticTokenSubvariant)?
    var state: (any SemanticTokenState)?
    var rawValue: any PrimitiveToken

    let finalValue: CGFloat

    init(property: Self.Property, variant: Self.Variant, state: RealTokenState, rawValue: BorderPrimitiveToken) {
        self.property = property
        self.variant = variant
        subvariant = nil
        self.state = state
        self.rawValue = rawValue
        finalValue = rawValue.rawValue
    }

    enum Property: SemanticTokenProperty {
        case width
        case radius
        case style
    }

    enum Variant: SemanticTokenVariant {
        case none
        case `default`
        case thin
        case thick
        case primary
    }
}
