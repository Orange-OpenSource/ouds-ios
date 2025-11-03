//
// Software Name: OUDSThemesContract iOS
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

import SwiftUI

extension Font.Weight: @retroactive CustomStringConvertible {

    /// Computes from the current `self` value a description of the object which can be used later
    /// for example for font loading by appending this value to the font name.
    public var description: String {
        switch self {
        case .ultraLight:
            "Ultra-Light"
        case .thin:
            "Thin"
        case .light:
            "Light"
        case .regular:
            "Regular"
        case .medium:
            "Medium"
        case .semibold:
            "Semi-Bold"
        case .bold:
            "Bold"
        case .heavy:
            "Heavy"
        case .black:
            "Black"
        default:
            ""
        }
    }
}
