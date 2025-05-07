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

extension String {

    /// Converts *self*, supposed to be hexadecimal representation, to int value
    /// - Returns Int: The associated value, or nil if failed
    public func fromHexToInt() -> Int? {
        let hexString = self.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var intValue: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&intValue)
        return Int(exactly: intValue)
    }

    /// If the current string is a *color* in *hexadecimal RGBA format*, returns the values
    /// in *hexadecimal RGB format*. Otherwise returns *nil*.
    ///
    /// For examplle, a color named "opacity dodger blue" is defined with the hexadecimal RGBA code
    /// "26B2FF14", which can be seen in RGBA as RGBA(38,178,255,0.08).
    /// For this value, it will return "EEF9FF" (corresponding to RGB(238,249,255)
    /// 
    /// - Returns String? - The hexadeicaml RGA color value if relevant
    public func toHex6() -> String? {
        // Expected #RRGGBB or #RRGGBBAA
        guard self.hasPrefix("#") && (self.count == 7 || self.count == 9) else {
            return nil
        }

        let validHexCharacters = CharacterSet(charactersIn: "0123456789ABCDEF")
        let hexString = String(self.dropFirst())
        let isValidHexColor = hexString.uppercased().unicodeScalars.allSatisfy { validHexCharacters.contains($0) }
        guard isValidHexColor else {
            return nil
        }

        // If already in hexa6, keep hexa6
        if self.count == 7 {
            return self
        }

        guard let rgba = self.color.rgba else {
            return nil
        }

        // Values are in [0;1], need to convert to integers except alpha
        let r8: CGFloat = (rgba.red * 255).rounded()
        let g8: CGFloat = (rgba.green * 255).rounded()
        let b8: CGFloat = (rgba.blue * 255).rounded()
        let a8: CGFloat = round(rgba.alpha * 100) / 100 // Keep two digits max

        // Opacity / alpha are related so some background colors, usualy white
        let whiteAlpha: CGFloat = 1, whiteR: CGFloat = 255, whiteG: CGFloat = 255, whiteB: CGFloat = 255

        // Convert to integer values in RGB
        // See https://www.diversifyindia.in/rgba-to-rgb-converter/
        let a6: CGFloat = a8 + whiteAlpha * (1 - a8)
        let r6 = Int((r8 * a8 + whiteR * whiteAlpha * (1 - a8)) / a6)
        let g6 = Int((g8 * a8 + whiteG * whiteAlpha * (1 - a8)) / a6)
        let b6 = Int((b8 * a8 + whiteB * whiteAlpha * (1 - a8)) / a6)

        return String(format: "#%02X%02X%02X", r6, g6, b6)
    }
}
