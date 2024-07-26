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

struct BorderPrimitiveToken: PrimitiveToken {

    var property: (any PrimitiveTokenProperty)?
    var concept: (any PrimitiveTokenConcept)?
    var variant: (any PrimitiveTokenVariant)?
    var scale: (any PrimitiveTokenScale)?
    var mode: (any PrimitiveTokenMode)?

    typealias T = CGFloat
    var rawValue: CGFloat

    init(property: Self.Property, scale: Self.Scale, rawValue: CGFloat) {
        self.property = property
        self.variant = nil
        self.scale = scale
        self.mode = nil
        self.rawValue = rawValue
    }

    enum Property: PrimitiveTokenProperty {
        case width
        case radius
        case style
    }

    enum Scale: PrimitiveTokenScale {
        case integer(value: Int)
        case none
        case `default`
        case thin
        case thick
        case primary
    }
}
