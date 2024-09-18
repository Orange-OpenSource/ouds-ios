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

extension String {

    /// `String` extension to get a `Color` from `self` supposed to be an hexadecimal string representation.
    public var color: Color! {
        Color(hexadecimalCode: self)
    }

    /// `String` extension to get `Font.Weight` of *SwiftUI* from its string representation.
    public var fontWeight: Font.Weight {
        if self == "thin" { return Font.Weight.thin }
        if self == "ultraLight" { return Font.Weight.ultraLight }
        if self == "light" { return Font.Weight.light }
        if self == "regular" { return Font.Weight.regular }
        if self == "medium" { return Font.Weight.medium }
        if self == "semibold" { return Font.Weight.semibold }
        if self == "bold" { return Font.Weight.bold }
        if self == "heavy" { return Font.Weight.heavy }
        return Font.Weight.regular
    }

    /// Forges the font name which is expected for the given weight.
    /// Beware, the function does not check if the font exists.
    /// - Parameters:
    ///    - name: The font family name (e.g. "Menlo")
    ///    - weight: The weight to apply (e.g. "bold", "italic")
    /// - Returns String: The full name of the font to use (e.g. "Menlo-Bold" or "Menlo-Italic")
    public func compose(withFont weight: String) -> String {
        guard !self.isEmpty else {
            OUDSLogger.error("No font family to compose with weight")
            return self
        }
        var characters = Array(weight)
        guard characters.count > 0, let formattedFirst = characters[0].uppercased().first else {
            OUDSLogger.error("The given weight cannot be parsed to compose a font family")
            return self
        }
        characters[0] = formattedFirst
        let formattedWeight = String(characters)
        return self + "-" + formattedWeight
        // TODO: String manipulation can be costly, add values in Cache
    }
}
