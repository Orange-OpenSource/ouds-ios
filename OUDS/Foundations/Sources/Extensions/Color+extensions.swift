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

import SwiftUI

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
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            a = CGFloat(rgb & 0x000000FF) / 255.0
        } else {
            OL.warning("The hexadecimal code value given for the color cannot be processed, please check '\(hexadecimalCode)'")
            return nil
        }

        self.init(red: r, green: g, blue: b, opacity: a)
    }

    // MARK: UIColor

    /// The current color as UIKit color
    public var uiColor: UIColor { .init(self) }

    // MARK: RGBA

    // swiftlint:disable large_tuple
    /// Color defined as red, green, blue, alpha tuple
    public typealias RGBA = (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    // swiftlint:enable large_tuple

    /// The current color but split in RGBA mode
    public var rgba: RGBA? {
        var (r, g, b, a): RGBA = (0, 0, 0, 0)
        let converted = uiColor.getRed(&r, green: &g, blue: &b, alpha: &a)
        return converted ? (r, g, b, a) : nil
    }
}

// MARK: - Color + WCAG 2.1

extension Color {

    // MARK: Luminance

    // swiftlint:disable identifier_name
    /// Returns the luminance of the color using the WCAG 2.1 algorithm
    /// See https://www.w3.org/WAI/WCAG21/Techniques/general/G18.html#procedure
    public var wcag21Luminance: CGFloat? {
        // The WCAG 2.1 algorithm
        // defines R sRGB, G sRGB, B sRGB as 8-bits values of R, G and B, all divided by 255
        // but .rgba uses UIColor.getRed(green:blue:alpha) which returns values in [0;1]
        // thus no need to convert colors in 8-bits values to divide then by 255: values are suitable already
        guard let (R_sRGB, G_sRGB, B_sRGB, _) = self.rgba else {
            OL.error("Not possible to have RGB content of current color")
            return nil
        }

        let R = (R_sRGB <= 0.04045 ? R_sRGB / 12.92 : pow(((R_sRGB + 0.055) / 1.055), 2.4))
        let G = (G_sRGB <= 0.04045 ? G_sRGB / 12.92 : pow(((G_sRGB + 0.055) / 1.055), 2.4))
        let B = (B_sRGB <= 0.04045 ? B_sRGB / 12.92 : pow(((B_sRGB + 0.055) / 1.055), 2.4))

        return 0.2126 * R + 0.7152 * G + 0.0722 * B
    }
    // swiftlint:enable identifier_name

    // MARK: Contrast ratio

    /// According to the  WCAG 2.1 algorithm, computes the contrat ratio between the current color and another
    /// See https://www.w3.org/WAI/WCAG21/Techniques/general/G18.html#procedure
    /// - Parameter color: The color to compare with `self`
    /// - Returns Double?: The contrast ratio or `nil` if a luminance is missing
    public func wcag21ContrastRatio(with color: Color) -> Double? {
        guard let selfLuminance = self.wcag21Luminance,
              let otherLuminance = color.wcag21Luminance else {
            OL.error("Missing color luminance(s) for contrast ratio computation")
            return nil
        }

        let lighter = max(selfLuminance, otherLuminance)
        let darker = min(selfLuminance, otherLuminance)

        return (lighter + 0.05) / (darker + 0.05)
    }

    /// Contains the contrast ratio between colors and flags saying if 3:1 and 4.5:1 requirements are fullfiled.
    public typealias WCAG21Ratios = (ratio: Double, meets3to1: Bool, meets4_5to1: Bool)

    /// Computes accessibility contrast ratio between two colors in hexadecimal strings.
    /// If the hexadecimal strings are colors format in RGBA, will use their format in RGB (i.e. apply opacity, not truncate).
    ///
    /// See https://www.w3.org/WAI/WCAG21/Techniques/general/G18.html#procedure
    /// 
    /// - Parameters:
    ///    - lhs: One color to test
    ///    - rhs: Another color to test
    /// - Returns: The computed ratio and flags saying if it match 3:1 or 4.5:1
    public static func wcag21ContrastRatioCheck(_ lhs: String, _ rhs: String) -> WCAG21Ratios? {
        guard let lhsHexa6 = lhs.toHex6(), let rhsHexa6 = rhs.toHex6() else {
            OL.error("Not possible to convert hexa colros to hex6 to compute contrast ratio between \(lhs) and \(rhs)!")
            return nil
        }
        guard let lhsColor = lhsHexa6.color, let rhsColor = rhsHexa6.color else {
            OL.error("Not possible to convert string to colors to compute contrast ratio between \(lhs) and \(rhs)!")
            return nil
        }
        guard let contrastRatio = lhsColor.wcag21ContrastRatio(with: rhsColor) else {
            OL.error("Not possible to compute ratio between \(lhs) and \(rhs)!")
            return nil
        }

        return (ratio: contrastRatio,
                meets3to1: contrastRatio >= 3.0,
                meets4_5to1: contrastRatio >= 4.5)
    }
}
