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

// MARK: - Type alias

/// WCAG 2.1 AA and AAA requirements use ratio for textual and non textual components
public typealias WCAG21Requirements = (textual: Bool, nonTextual: Bool)

// MARK: - OUDS WCAG 21 Ratios

/// Some countries set up new laws so as to force companies to have a better accessibility of their digital services.
/// This is for example the case for France with the [Référentiel Général d'Amélioration de l'Accessibilité](https://accessibilite.numerique.gouv.fr),
/// also named "RGAA".
/// The WCAG specifications, for AA level, defines a contrast ratio of 4.5:1 for textual elements (i.e. texts), and 3:1 for non-textual elements (i.e. link's chevron).
/// However it is higly recommended for mobile devices to reach AAA level because of the screen sizes and luminosity issues, i.e. 7:1 for textual
/// and 4.5:1 for non-textual elements.
/// This utility helps to define wether a set of contrast ratio matches AA and AAA or not.
/// See for example [the following guidelines](https://system.design.orange.com/0c1af118d/p/2531b9-accessibility-compliance)
///
/// - Since: 0.15.0
public struct OUDSWCAG21Ratios {

    // MARK: - Stored properties

    /// The computed contrast ratio between two given colors
    public let ratio: Double

    /// If the computed contrast ratio between two given colors meets the 3:1 requirement
    public let meets3to1: Bool

    /// If the computed contrast ratio between two given colors meets the 4.5:1 requirement
    public let meets4_5to1: Bool

    /// If the computed contrast ratio between two given colors meets the 7:1 requirement
    public let meets7to1: Bool

    // MARK: - Computed properties

    /// WCAG 2.1 requirement for AA level needs to have textual component matching 4.5:1 contrast ratio
    /// and non textual component matching 3:1 contrast ratio.
    /// This is recommended for web projects.
    public var requirementsAA: WCAG21Requirements {
        (textual: meets4_5to1, nonTextual: meets3to1 )
    }

    /// WCAG 2.1 requirement for AAA level needs to have textual component matching 7:1 contrast ratio
    /// and non textual component matching 4.5:1 contrast ratio.
    /// This is recommended for mobiles devices projects (because of screen sizes and luminosity issues).
    public var requirementsAAA: WCAG21Requirements {
        (textual: meets7to1, nonTextual: meets4_5to1 )
    }

    // MARK: - Luminance

    // swiftlint:disable identifier_name
    /// Returns the luminance of the given color using the WCAG 2.1 algorithm.
    /// See https://www.w3.org/WAI/WCAG21/Techniques/general/G18.html#procedure
    ///
    /// - Parameter color: The color to sue for luminance computation
    /// - Returns CGFloat?: The luminance or nit of RGB values cannot be picked from given color
    public static func luminance(for color: Color) -> CGFloat? {
        // The WCAG 2.1 algorithm
        // defines R sRGB, G sRGB, B sRGB as 8-bits values of R, G and B, all divided by 255
        // but .rgba uses UIColor.getRed(green:blue:alpha) which returns values in [0;1]
        // thus no need to convert colors in 8-bits values to divide then by 255: values are suitable already
        guard let (R_sRGB, G_sRGB, B_sRGB, _) = color.rgba else {
            OL.error("Not possible to have RGB content of current color")
            return nil
        }

        let R = (R_sRGB <= 0.04045 ? R_sRGB / 12.92 : pow(((R_sRGB + 0.055) / 1.055), 2.4))
        let G = (G_sRGB <= 0.04045 ? G_sRGB / 12.92 : pow(((G_sRGB + 0.055) / 1.055), 2.4))
        let B = (B_sRGB <= 0.04045 ? B_sRGB / 12.92 : pow(((B_sRGB + 0.055) / 1.055), 2.4))

        return 0.2126 * R + 0.7152 * G + 0.0722 * B
    }
    // swiftlint:enable identifier_name

    // MARK: - Contrast ratio

    /// According to the  WCAG 2.1 algorithm, computes the contrat ratio between the current color and another
    /// See https://www.w3.org/WAI/WCAG21/Techniques/general/G18.html#procedure
    /// - Parameters:
    ///    - lhs: One of color to compare with `rhs`
    ///    - rhs: The other color to compare with `lhs`
    /// - Returns Double?: The contrast ratio or `nil` if a luminance is missing
    public static func contrastRatio(_ lhs: Color, _ rhs: Color) -> Double? {
        guard let selfLuminance = Self.luminance(for: lhs),
              let otherLuminance = Self.luminance(for: rhs) else {
            OL.error("Missing color luminance(s) for contrast ratio computation")
            return nil
        }

        let lighter = max(selfLuminance, otherLuminance)
        let darker = min(selfLuminance, otherLuminance)

        return (lighter + 0.05) / (darker + 0.05)
    }

    /// Computes accessibility contrast ratio between two colors in hexadecimal strings.
    /// If the hexadecimal strings are colors format in RGBA, will use their format in RGB (i.e. apply opacity, not truncate).
    ///
    /// See https://www.w3.org/WAI/WCAG21/Techniques/general/G18.html#procedure
    ///
    /// - Parameters:
    ///    - lhs: One color to test
    ///    - rhs: Another color to test
    /// - Returns: The computed ratio and flags saying if it match 3:1, 4.5:1 or 7:1
    public static func contrastRatios(_ lhs: String, _ rhs: String) -> OUDSWCAG21Ratios? {
        guard !lhs.isEmpty && !rhs.isEmpty else {
            OL.warning("Ask to comput contrast ratio but one or two of the colors is empty")
            return nil
        }
        guard let lhsHexa6 = lhs.toHex6(), let rhsHexa6 = rhs.toHex6() else {
            OL.error("Not possible to convert hexa colors to hex6 to compute contrast ratio between '\(lhs)' and '\(rhs)'!")
            return nil
        }

        guard let lhsColor = lhsHexa6.color, let rhsColor = rhsHexa6.color else {
            OL.error("Not possible to convert string to colors to compute contrast ratio between '\(lhs)' and '\(rhs)'!")
            return nil
        }

        guard let contrastRatio = Self.contrastRatio(lhsColor, rhsColor) else {
            OL.error("Not possible to compute ratio between '\(lhs)' and '\(rhs)'!")
            return nil
        }

        return OUDSWCAG21Ratios(ratio: contrastRatio,
                                meets3to1: contrastRatio >= 3.0,
                                meets4_5to1: contrastRatio >= 4.5,
                                meets7to1: contrastRatio >= 7.0)
    }
}
