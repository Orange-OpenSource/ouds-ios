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

// swiftlint:disable implicitly_unwrapped_optional

extension String {

    /// `String` extension to get a `Color` from `self` supposed to be an hexadecimal string representation.
    /// We assume the value of `self` is a valid hexadecimal string.
    public var color: Color! {
        if self == "ouds-forbidden-color-value" {
            OL.error("Trying to parse forbidden color as SwiftUI Color, it will crash")
        }
        return Color(hexadecimalCode: self)
    }

    /// Forges the font name which is expected for the given weight.
    /// Beware, the function does not check if the font exists.
    /// - Parameter weight: The weight to apply (e.g. "bold", "italic")
    /// - Returns String: The full name of the font to use (e.g. "Menlo-Bold" or "Menlo-Italic")
    public func compose(withFont weight: String) -> String {
        guard !isEmpty else {
            OL.error("No font family to compose with weight")
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

// swiftlint:enable implicitly_unwrapped_optional
