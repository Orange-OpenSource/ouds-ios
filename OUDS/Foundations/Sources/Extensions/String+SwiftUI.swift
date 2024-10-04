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
        if !weight.isEmpty {
            return self + "-" + weight
        } else {
            return self
        }
        // TODO: String manipulation can be costly, add values in Cache
    }
}
