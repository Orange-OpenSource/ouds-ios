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
import OUDSTokens

// MARK: - Theme Contract

/// A theme must define all the rules applied to the product.
/// Colors, spacings, borders, elevations, typography, opacity... any avaialble and usable values must be defined in a `ThemeContract`
public protocol ThemeContract {

    var colors: [ColorSemanticToken] { get set }
    var borders: [BorderSemanticToken] { get set }
    var elevations: [ElevationSemanticToken] { get set }
}

/// Default implementation: a theme does not need (maybe?) to have any semantic tokens defined
extension ThemeContract {

    var colors: [ColorSemanticToken] {
        get {
            []
        }
        set { }
    }

    var borders: [BorderSemanticToken] {
        get {
            []
        }
        set { }
    }

    var elevations: [ElevationSemanticToken] {
        get {
            []
        }
        set { }
    }
}
