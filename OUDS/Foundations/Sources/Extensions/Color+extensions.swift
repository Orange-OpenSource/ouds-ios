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

// Conditional import and use of UIKit for documentation generation (see #628 #626)
import SwiftUI
#if canImport(UIKit)
import UIKit
#endif

// MARK: - Extension of Color

extension Color {

    // MARK: Initializer

    /// `Color` extension to get a `Color` from its hexadecimal string representation, in RGB or RGBA format.
    public init?(hexadecimalCode: String) {

        let hexadecimalCodeSanitized = hexadecimalCode.trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        var r: CGFloat = 0.0, g: CGFloat = 0.0, b: CGFloat = 0.0, a: CGFloat = 1.0

        let hexadecimalCodeLength = hexadecimalCodeSanitized.count

        guard Scanner(string: hexadecimalCodeSanitized).scanHexInt64(&rgb) else {
            return nil
        }

        if hexadecimalCodeLength == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
        } else if hexadecimalCodeLength == 8 {
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
        } else {
            OL.warning("The hexadecimal code value given for the color cannot be processed, please check '\(hexadecimalCode)'")
            return nil
        }

        self.init(red: r, green: g, blue: b, opacity: a)
    }

    // MARK: RGBA

    // swiftlint:disable large_tuple
    /// Color defined as red, green, blue, alpha tuple
    public typealias RGBA = (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    // swiftlint:enable large_tuple

#if canImport(UIKit)
    // MARK: UIColor

    /// The current color as UIKit color
    public var uiColor: UIColor { .init(self) }
    
    /// The current color but split in RGBA mode
    public var rgba: RGBA? {
        var (r, g, b, a): RGBA = (0, 0, 0, 0)
        let converted = uiColor.getRed(&r, green: &g, blue: &b, alpha: &a)
        return converted ? (r, g, b, a) : nil
    }
#else
    /// Always nil as today the value is computed using UIKit API
    public var rgba: RGBA? { nil }
#endif
}
