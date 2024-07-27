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

// MARK: - Grammar

protocol PrimitiveTokenPropertyContract { }
protocol PrimitiveTokenConceptContract { }
protocol PrimitiveTokenVariantContract { }
protocol PrimitiveTokenScaleContract { }
protocol PrimitiveTokenModeContract { }

// MARK: - Primitive Token

/// A primitive token is a set of values defining an item with in the end a real useufl and not abstract value.
/// This item can be caracterized by several fileds like domain,  base, property, concept, variant, scalen mode, etc.
/// These values are picked from our exploration white board with the work od the designer.
protocol PrimitiveTokenContract<T> {

    // Base
    var property: PrimitiveTokenPropertyContract? { get set }
    var concept: PrimitiveTokenConceptContract? { get set }

    // Modifier
    var variant: PrimitiveTokenVariantContract? { get set }
    var scale: PrimitiveTokenScaleContract? { get set }
    var mode: PrimitiveTokenModeContract? { get set }

    // Raw value
    associatedtype T
    var rawValue: T { get set }
}

/// Default implementation: if a new token field to caracterize a primitive token  is added, default values here will prevent to break compatibility with old version
extension PrimitiveTokenContract {

    var property: PrimitiveTokenPropertyContract? {
        get {
            nil
        }
        set { }
    }

    var concept: PrimitiveTokenConceptContract? {
        get {
            nil
        }
        set { }
    }

    var variant: PrimitiveTokenVariantContract? {
        get {
            nil
        }
        set { }
    }

    var scale: PrimitiveTokenScaleContract? {
        get {
            nil
        }
        set { }
    }

    var mode: PrimitiveTokenModeContract? {
        get {
            nil
        }
        set { }
    }
}
