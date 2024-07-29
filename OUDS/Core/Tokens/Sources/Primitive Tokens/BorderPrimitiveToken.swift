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

public struct BorderPrimitiveToken: PrimitiveTokenContract {

    public var property: (any PrimitiveTokenPropertyContract)?
    public var concept: (any PrimitiveTokenConceptContract)?
    public var variant: (any PrimitiveTokenVariantContract)?
    public var scale: (any PrimitiveTokenScaleContract)?
    public var mode: (any PrimitiveTokenModeContract)?

    public typealias T = CGFloat
    public var rawValue: CGFloat

    public init(property: Self.Property, scale: Self.Scale, rawValue: CGFloat) {
        self.property = property
        self.variant = nil
        self.scale = scale
        self.mode = nil
        self.rawValue = rawValue
    }

    public enum Property: PrimitiveTokenPropertyContract {
        case width
        case radius
        case style
    }

    public enum Scale: PrimitiveTokenScaleContract {
        case integer(value: Int)
        case none
        case `default`
        case thin
        case thick
        case primary
    }
}
