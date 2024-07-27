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

public struct BorderSemanticToken: SemanticTokenContract {

    var property: (any SemanticTokenPropertyContract)?
    var variant: (any SemanticTokenVariantContract)?
    var subvariant: (any SemanticTokenSubvariantContract)?
    var state: (any SemanticTokenStateContract)?
    var rawValue: any PrimitiveTokenContract

    let finalValue: CGFloat

    public init(property: Self.Property, variant: Self.Variant, state: TokenState, rawValue: BorderPrimitiveToken) {
        self.property = property
        self.variant = variant
        subvariant = nil
        self.state = state
        self.rawValue = rawValue
        finalValue = rawValue.rawValue
    }

    public enum Property: SemanticTokenPropertyContract {
        case width
        case radius
        case style
    }

    public enum Variant: SemanticTokenVariantContract {
        case none
        case `default`
        case thin
        case thick
        case primary
    }
}
