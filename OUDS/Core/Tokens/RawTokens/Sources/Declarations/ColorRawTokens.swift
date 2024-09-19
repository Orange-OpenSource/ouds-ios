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
import OUDSFoundations

/// Defined as the group of all **raw tokens** related to **colors**.
/// Primitive types such as  `String` must be used to as to allow to use `@objc` keywords in extensions for overriding.
/// Such tokens are packed in a _Swift enum_ so as to gather them in one object with the suitable namespace and avoid to have just constants in nothing else
///  (i.e. publicly accessible from everywhere). More optimized than _struct_.
public enum ColorRawTokens {

    // Note: So as to help the Figma JSON to Swift parser the values have been added in the Values folder

    static func apply(opacity: OpacityRawToken, on hexColor: String) -> String {
        // TODO: Improve this algorithm too much naive
        // Values picked from https://gist.github.com/lopspower/03fb1cc0ac9f32ef38f4
        if opacity == OpacityRawTokens.opacity0 {
            return hexColor + "00"
        }
        if opacity == OpacityRawTokens.opacity100 {
            return hexColor + "0A"
        }
        if opacity == OpacityRawTokens.opacity200 {
            return hexColor + "14"
        }
        if opacity == OpacityRawTokens.opacity300 {
            return hexColor + "29"
        }
        if opacity == OpacityRawTokens.opacity400 {
            return hexColor + "3D"
        }
        if opacity == OpacityRawTokens.opacity500 {
            return hexColor + "52"
        }
        if opacity == OpacityRawTokens.opacity600 {
            return hexColor + "7A"
        }
        if opacity == OpacityRawTokens.opacity700 {
            return hexColor + "A3"
        }
        if opacity == OpacityRawTokens.opacity800 {
            return hexColor + "E0"
        }
        if opacity == OpacityRawTokens.opacity900 {
            return hexColor + "FF"
        }
        return hexColor
    }
}
