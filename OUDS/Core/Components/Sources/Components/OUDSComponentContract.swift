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

/// A component is a graphical object which can be defined and caracterized by several sets of values for many properties:
/// - colors (background, foreground)
/// - borders
/// - elevations
/// - etc.
protocol OUDSComponentContract {

    var colorForegorunds: [ColorSemanticToken] { get set }
    var colorBackgrounds: [ColorSemanticToken] { get set }
    var borderWidth: [BorderSemanticToken] { get set }
    var elevations: [ElevationPrimitiveToken] { get set }
}

extension OUDSComponentContract {

    var colorForegorunds: [ColorSemanticToken] {
        get {
            []
        }
        set {

        }
    }

    var colorBackgrounds: [ColorSemanticToken] {
        get {
            []
        }
        set {

        }
    }

    var borderWidth: [BorderSemanticToken] {
        get {
            []
        }
        set {

        }
    }

    var elevations: [ElevationPrimitiveToken] {
        get {
            []
        }
        set {

        }
    }
}
