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

public struct ElevationPrimitiveToken: PrimitiveTokenContract {

    public var property: (any PrimitiveTokenPropertyContract)?
    public var concept: (any PrimitiveTokenConceptContract)?
    public var variant: (any PrimitiveTokenVariantContract)?
    public var scale: (any PrimitiveTokenScaleContract)?
    public var mode: (any PrimitiveTokenModeContract)?

    public typealias T = Int
    public var rawValue: Int

    public init(property: Self.Property, mode: Self.Mode, rawValue: Int) {
        self.property = property
        self.concept = nil
        self.variant = nil
        self.scale = nil
        self.mode = mode
        self.rawValue = rawValue
    }

    public enum Property: PrimitiveTokenPropertyContract {
        case zIndex
    }

    public enum Mode: PrimitiveTokenModeContract {
        case value(mode: Int)
    }
}
