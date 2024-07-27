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

struct ColorPrimitiveToken: PrimitiveTokenContract {

    var property: (any PrimitiveTokenPropertyContract)?
    var concept: (any PrimitiveTokenConceptContract)?
    var variant: (any PrimitiveTokenVariantContract)?
    var scale: (any PrimitiveTokenScaleContract)?
    var mode: (any PrimitiveTokenModeContract)?

    typealias T = Color
    var rawValue: Color

    init(concept: Self.Concept, variant: Self.Variant, mode: Self.Mode, rawValue: String) {
        self.property = nil
        self.concept = concept
        self.variant = variant
        self.scale = nil
        self.mode = mode
        self.rawValue = Color(hex: rawValue)
    }

    enum Concept: PrimitiveTokenConceptContract {
        case semantic
        case decorative
        case transparent
    }

    enum Variant: PrimitiveTokenVariantContract {
        case white
        case black
        case orange
        case lightGray
        case darkGray
        case warmGray
        case scarlet
        case sun
    }

    enum Mode: PrimitiveTokenModeContract {
        case none
        case value(mode: Int)
    }
}
