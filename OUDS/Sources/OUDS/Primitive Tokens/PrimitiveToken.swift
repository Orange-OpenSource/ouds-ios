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

protocol PrimitiveTokenProperty { }
protocol PrimitiveTokenConcept { }
protocol PrimitiveTokenVariant { }
protocol PrimitiveTokenScale { }
protocol PrimitiveTokenMode { }

// MARK: - Primitive Token

protocol PrimitiveToken<T> {

    // Base
    var property: PrimitiveTokenProperty? { get set }
    var concept: PrimitiveTokenConcept? { get set }

    // Modifier
    var variant: PrimitiveTokenVariant? { get set }
    var scale: PrimitiveTokenScale? { get set }
    var mode: PrimitiveTokenMode? { get set }

    // Raw value
    associatedtype T
    var rawValue: T { get set }
}
