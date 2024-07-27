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

protocol SemanticTokenPropertyContract { }
protocol SemanticTokenVariantContract { }
protocol SemanticTokenSubvariantContract { }
protocol SemanticTokenStateContract { }

// MARK: - Semantic Token

/// A semantic token is a set of values defining an item.
/// This item can be caracterized by several fileds like domain,  base, property, variant, subvariant, state, etc.
/// These values are picked from our exploration white board with the work od the designer.
protocol SemanticTokenContract {

    // Base
    var property: SemanticTokenPropertyContract? { get set }

    // Modifier
    var variant: SemanticTokenVariantContract? { get set }
    var subvariant: SemanticTokenSubvariantContract? { get set }
    var state: SemanticTokenStateContract? { get set }

    // Associated primitive token value
    var rawValue: any PrimitiveTokenContract { get set }
}


/// Default implementation: if a new token field to caracterize a semantic token is added, default values here will prevent to break compatibility with old version
extension SemanticTokenContract {

    var property: SemanticTokenPropertyContract? {
        get {
            nil
        }
        set { }
    }
    
    var variant: SemanticTokenVariantContract? {
        get {
            nil
        }
        set { }
    }

    var subvariant: SemanticTokenSubvariantContract? {
        get {
            nil
        }
        set { }
    }

    var state: SemanticTokenStateContract? {
        get {
            nil
        }
        set { }
    }
}
