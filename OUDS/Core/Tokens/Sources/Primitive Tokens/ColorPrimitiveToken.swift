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
import OUDSFoundations

public struct ColorPrimitiveToken: PrimitiveTokenContract {

    public var property: (any PrimitiveTokenPropertyContract)?
    public var concept: (any PrimitiveTokenConceptContract)?
    public var variant: (any PrimitiveTokenVariantContract)?
    public var scale: (any PrimitiveTokenScaleContract)?
    public var mode: (any PrimitiveTokenModeContract)?

    public typealias T = Color
    public var rawValue: Color

    public init(concept: Self.Concept, variant: Self.Variant, mode: Self.Mode, rawValue: String) {
        self.property = nil
        self.concept = concept
        self.variant = variant
        self.scale = nil
        self.mode = mode
        self.rawValue = Color(hexadecimalCode: rawValue)
    }

    public enum Concept: PrimitiveTokenConceptContract {
        case semantic
        case decorative
        case transparent
    }

    public enum Variant: PrimitiveTokenVariantContract {
        case white
        case black
        case orange
        case lightGray
        case darkGray
        case warmGray
        case scarlet
        case sun
    }

    public enum Mode: PrimitiveTokenModeContract {
        case none
        case value(mode: Int)
    }
}
