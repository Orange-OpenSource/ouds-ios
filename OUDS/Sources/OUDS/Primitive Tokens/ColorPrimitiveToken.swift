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

struct ColorPrimitiveToken: PrimitiveToken {

    var property: (any PrimitiveTokenProperty)?
    var concept: (any PrimitiveTokenConcept)?
    var variant: (any PrimitiveTokenVariant)?
    var scale: (any PrimitiveTokenScale)?
    var mode: (any PrimitiveTokenMode)?

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

    enum Concept: PrimitiveTokenConcept {
        case semantic
        case decorative
        case transparent
    }

    enum Variant: PrimitiveTokenVariant {
        case white
        case black
        case orange
        case lightGray
        case darkGray
        case warmGray
        case scarlet
        case sun
    }

    enum Mode: PrimitiveTokenMode {
        case none
        case value(mode: Int)
    }
}
