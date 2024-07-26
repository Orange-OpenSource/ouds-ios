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

protocol SemanticTokenProperty { }
protocol SemanticTokenVariant { }
protocol SemanticTokenSubvariant { }
protocol SemanticTokenState { }

// MARK: - Semantic Token

protocol SemanticToken {

    // Base
    var property: SemanticTokenProperty? { get set }

    // Modifier
    var variant: SemanticTokenVariant? { get set }
    var subvariant: SemanticTokenSubvariant? { get set }
    var state: SemanticTokenState? { get set }

    // Associated primitive token value
    var rawValue: any PrimitiveToken { get set }
}
