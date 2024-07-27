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

struct ElevationPrimitiveToken: PrimitiveTokenContract {

    var property: (any PrimitiveTokenPropertyContract)?
    var concept: (any PrimitiveTokenConceptContract)?
    var variant: (any PrimitiveTokenVariantContract)?
    var scale: (any PrimitiveTokenScaleContract)?
    var mode: (any PrimitiveTokenModeContract)?

    typealias T = Int
    var rawValue: Int

    init(property: Self.Property, mode: Self.Mode, rawValue: Int) {
        self.property = property
        self.concept = nil
        self.variant = nil
        self.scale = nil
        self.mode = mode
        self.rawValue = rawValue
    }

    enum Property: PrimitiveTokenPropertyContract {
        case zIndex
    }

    enum Mode: PrimitiveTokenModeContract {
        case value(mode: Int)
    }
}
