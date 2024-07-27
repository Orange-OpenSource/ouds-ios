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

public struct ElevationSemanticToken: SemanticTokenContract {

    var property: (any SemanticTokenPropertyContract)?
    var variant: (any SemanticTokenVariantContract)?
    var subvariant: (any SemanticTokenSubvariantContract)?
    var state: (any SemanticTokenStateContract)?

    var rawValue: any PrimitiveTokenContract

    public init(property: Self.Property, variant: Self.Variant, subvariant: Self.Subvariant, rawValue: ElevationPrimitiveToken) {
        self.property = property
        self.variant = variant
        self.subvariant = subvariant
        state = nil
        self.rawValue = rawValue
    }

    public enum Property: SemanticTokenPropertyContract {
        case zIndex
    }

    public enum Variant: SemanticTokenVariantContract {
        case deep
        case `default`
        case dropdown
        case sticky
        case fixed
        case spinner
        case modal
        case tooltip
    }

    public enum Subvariant: SemanticTokenSubvariantContract {
        case backdrop
        case `default`
        case emphasis
    }
}
