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
        #if DEBUG
        if self == "ouds-forbidden-color-value" {
            OL.error("Trying to parse forbidden color as SwiftUI Color, it will crash")
        }
        #endif
        return Color(hexadecimalCode: self)
    }

    /// Some font families have names which cannot be used as they are to load fonts.
    /// For example the "Helvetica Neue" font family must be loaded using the PostScript name "HelveticaNeue".
    /// The name of the font to load depends to its PostScript name and the weight.
    /// For example a "bold Helvetica Neue" exists in iOS as "HelveticaNeue-Bold"
    ///
    /// - Parameter weight: The weight to apply to the font
    /// - Returns: The PostScript name with the weight, or the font name is the PostScript name is unknown or not managed
    public func fontNameInPostScript(using weight: String) -> String {
        kApplePostScriptFontNames[PSFNMK(self, weight: weight)] ?? self
    }
}

// swiftlint:enable implicitly_unwrapped_optional
