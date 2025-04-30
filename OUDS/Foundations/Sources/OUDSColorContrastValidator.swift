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

// swiftlint:disable identifier_name

/// Requirements
public typealias OUDSColorRatios = (ratio: CGFloat, meets3to1: Bool, meets4_5to1: Bool)

/// Utility tool to provide functions so as to compare colors and check if the contrast is respected for accessiiblity reasons.
/// Algorithms are based on WAG 2.1 applied by RGAA.
/// See: https://www.w3.org/WAI/WCAG21/Techniques/general/G18.html#procedure
public enum OUDSColorContrastValidator {

    // MARK: - Luminance

    private static func luminance(for hexadecimalColor: String) -> CGFloat? {
        let color = hexadecimalColor.color

        // The WCAG 2.1 algorithm
        // defines R sRGB, G sRGB, B sRGB as 8-bits values of R, G and B, all divided by 255
        // but .rgba uses UIColor.getRed(green:blue:alpha) which returns values in [0;1]
        // thus no need to convert colors in 8-bits values to divide then by 255: values are suitable already
        guard let color, let (R_sRGB, G_sRGB, B_sRGB, _) = color.rgba else {
            OL.debug("ColorContrastValidator: Not possible to have color or RGBA contents!")
            return nil
        }

        let R = (R_sRGB <= 0.04045 ? R_sRGB / 12.92 : pow(((R_sRGB + 0.055) / 1.055), 2.4))
        let G = (G_sRGB <= 0.04045 ? G_sRGB / 12.92 : pow(((G_sRGB + 0.055) / 1.055), 2.4))
        let B = (B_sRGB <= 0.04045 ? B_sRGB / 12.92 : pow(((B_sRGB + 0.055) / 1.055), 2.4))

        return 0.2126 * R + 0.7152 * G + 0.0722 * B
    }

    // MARK: Contrast ratio

    private static func contrastRatio(_ lhs: String, _ rhs: String) -> CGFloat? {
        guard let lhsInt = lhs.fromHexToInt(), let rhsInt = rhs.fromHexToInt() else {
            OL.debug("OUDSColorContrastValidator: Not possible to have two hexa colors as int computed!")
            return nil
        }

        // L1 is the lighter, L2 is the darker
        var L1: String, L2: String

        if lhsInt >= rhsInt {
            L1 = lhs
            L2 = rhs
        } else {
            L1 = rhs
            L2 = lhs
        }

        guard let luminanceL1 = luminance(for: L1), let luminanceL2 = luminance(for: L2) else {
            OL.debug("OUDSColorContrastValidator: Not possible to have two luminances computed!")
            return nil
        }

        return (luminanceL1 + 0.05) / (luminanceL2 + 0.05)
    }

    // MARK: Ratio check

    /// Computes a11Y contrast ratio between two colors in hexadecimal strings
    /// - Parameters:
    ///    - lhs: One color to test
    ///    - rhs: Another color to test
    /// - Returns: The computed ratio and flags saying if it match 3:1 (components) or 4.5:1 (texts)
    public static func ratioCheck(_ lhs: String, _ rhs: String) -> OUDSColorRatios? {
        guard let contrastRatio = contrastRatio(lhs, rhs) else {
            OL.debug("OUDSColorContrastValidator: Not possible to compute ratio between \(lhs) and \(rhs)!")
            return nil
        }

        return (ratio: contrastRatio,
                meets3to1: contrastRatio >= 3.0,
                meets4_5to1: contrastRatio >= 4.5)
    }
}

// swiftlint:enable identifier_name
