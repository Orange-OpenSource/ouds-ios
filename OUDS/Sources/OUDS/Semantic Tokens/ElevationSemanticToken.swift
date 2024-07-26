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

struct ElavationSemanticToken: SemanticToken {

    var property: (any SemanticTokenProperty)?
    var variant: (any SemanticTokenVariant)?
    var subvariant: (any SemanticTokenSubvariant)?
    var state: (any SemanticTokenState)?

    var rawValue: any PrimitiveToken

    init(property: Self.Property, variant: Self.Variant, subvariant: Self.Subvariant, rawValue: ElevationPrimitiveToken) {
        self.property = property
        self.variant = variant
        self.subvariant = subvariant
        state = nil
        self.rawValue = rawValue
    }

    enum Property: SemanticTokenProperty {
        case zIndex
    }

    enum Variant: SemanticTokenVariant {
        case deep
        case `default`
        case dropdown
        case sticky
        case fixed
        case spinner
        case modal
        case tooltip
    }

    enum Subvariant: SemanticTokenSubvariant {
        case backdrop
        case `default`
        case emphasis
    }
}
