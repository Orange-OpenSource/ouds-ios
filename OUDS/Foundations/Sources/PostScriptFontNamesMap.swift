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

// MARK: - PostScript Font Names Map Key

/// PostScriptFontNamesMapKey in shorter
public typealias PSFNMK = PostScriptFontNamesMapKey

/// Key of the map containing PostScript name to use for a font depending to its family name and weight.
public struct PostScriptFontNamesMapKey: Hashable, CustomStringConvertible {

    /// The font family name as defined in raw tokens
    public let familyName: String

    /// The font weight
    public let fontWeight: String

    // swiftlint:disable force_unwrapping
    /// - Parameters:
    ///    - name: The same of the font family
    ///    - weight: Some weight for the font to apply
    public init(_ name: String, _ weight: Font.Weight? = nil) {
        self.init(name, weight: weight != nil ? "\(weight!)" : "")
    }

    /// - Parameters:
    ///    - name: The same of the font family
    ///    - weight: Some weight for the font to apply
    public init(_ name: String, weight: String? = nil) {
        familyName = name
        fontWeight = weight != nil ? weight! : ""
    }

    // swiftlint:enable force_unwrapping

    /// From `CustomStringConvertible`, defines the description of the key,
    /// i.e. only the font family name without whitespaces.
    public var description: String {
        familyName.replacingOccurrences(of: " ", with: "")
    }
}

// MARK: - Dictionary of PostSript Font Names

extension [PostScriptFontNamesMapKey: String] {

    /// If there is no value for the given `key`, returns the description of this key,
    /// i.e.font family name without the font weight in the end and without whitespaces.
    ///
    /// In fact if it seems some rules are missing, or weight are not managed, if the font family only is returned
    /// the user has an higher probability to use the expected font. Because if a mashup of family name and weight is returned
    /// it can produce a PostScript identifier not available, so not usable, so implying a fallback to default system font like *San Francisco*.
    /// Because PostScript identifiers in most of cases do not have whitespaces, remove them.
    ///
    /// ```swift
    ///     // Given a dictionary with one value
    ///     let myDict: PostScriptFontNamesMap = [PSFNMK("Arial", Font.Weight.bold): "Aria-BoldMT"]
    ///
    ///     // The given value is returned if the key exists
    ///     let keyExists = myDict[PSFNMK("Arial", Font.Weight.bold)] // Arial-BoldMT
    ///
    ///     // But if the key does not exist, the only the key is returned
    ///     let keyDoesNotExist = myDict[PSFNMK("Luciole", Font.Weight.bold)] // Luciole
    /// ```
    ///
    /// - Parameter key: The key to use to get a value
    public subscript(orKey key: Key) -> String {
        guard let value = self[key] else {
            OL.warning("It seems there is missing rule for PostScript identifier with '\(key.familyName)'/'\(key.fontWeight)'. Fallback to '\(key.description)'")
            return key.description
        }
        return value
    }
}

// MARK: - PostScript Font Names Map

/// Some font family cannot be used as they are because their "marketing" names are unknown to the OS
/// except their PostScript names.
/// This dictionnary defines the expected PostScript names of font families known in iOS.
/// Depending to the font family, several rules are applied, with for example removal of whitespaces
/// and adding of prefixes of suffixes after the font family name or the weight.
///
/// Entries of the dictionnary are font family names (as defined in raw tokens and sent by tokenator) and font weights.
/// Dictionary results are the PostScript named as defined in the font book.
public typealias PostScriptFontNamesMap = [PostScriptFontNamesMapKey: String]

// MARK: - Values

/// Contains the Apple PostScript name of a font given a font family name and a font weight.
/// Such values have been picked from the Apple Font Book.
///
/// If you use your own fonts, be sure their PostScript name:
/// - do not collide with one the the values defined here (depending to tokens)
/// - do not collide with one of the Apple available fonts (in iOS side)
///
/// Defines also kind of fallbacks if the weight or the style is not defined.
nonisolated(unsafe) public let kApplePostScriptFontNames: PostScriptFontNamesMap =
    [

        // MARK: OUDS

        PSFNMK("Arial", Font.Weight.regular): "ArialMT",
        PSFNMK("Arial", Font.Weight.bold): "Arial-BoldMT",
        PSFNMK("Arial", nil): "ArialMT",

        PSFNMK("Helvetica", Font.Weight.light): "Helvetica-Light",
        PSFNMK("Helvetica", nil /* courant */ ): "Helvetica",
        PSFNMK("Helvetica", Font.Weight.bold): "Helvetica-Bold",

        // "Noto Sans" defined in FontRawTokens but does not exist as is in font books

        PSFNMK("SF Pro", Font.Weight.ultraLight): "SFPro-Ultralight",
        PSFNMK("SF Pro", Font.Weight.thin): "SFPro-Thin",
        PSFNMK("SF Pro", Font.Weight.light): "SFPro-Light",
        PSFNMK("SF Pro", Font.Weight.regular): "SFPro-Regular",
        PSFNMK("SF Pro", nil /* courant */ ): "SFPro-Regular",
        PSFNMK("SF Pro", Font.Weight.medium): "SFPro-Medium",
        PSFNMK("SF Pro", Font.Weight.semibold): "SFPro-Semibold",
        PSFNMK("SF Pro", Font.Weight.bold): "SFPro-Bold",
        PSFNMK("SF Pro", Font.Weight.heavy): "SFPro-Heavy",
        PSFNMK("SF Pro", Font.Weight.black): "SFPro-Black",

        // "Roboto" defined in FontRawTokens but does not exist at all in font books

        PSFNMK("Menlo", Font.Weight.regular): "Menlo-Regular",
        PSFNMK("Menlo", nil): "Menlo-Regular",
        PSFNMK("Menlo", Font.Weight.bold): "Menlo-Bold",

        PSFNMK("Courier New", nil /* normal */ ): "CourierNewPSMT",
        PSFNMK("Courier New", Font.Weight.bold): "CourierNewPS-BoldMT",

        // "SF Mono" defined in FontRawTokens but does not exist at all in font books

        // MARK: Orange

        PSFNMK("Helvetica Neue", Font.Weight.ultraLight): "HelveticaNeue-Ultralight",
        PSFNMK("Helvetica Neue", Font.Weight.thin): "HelveticaNeue-Thin",
        PSFNMK("Helvetica Neue", Font.Weight.light): "HelveticaNeue-Light",
        PSFNMK("Helvetica Neue", Font.Weight.regular): "HelveticaNeue",
        PSFNMK("Helvetica Neue", Font.Weight.semibold): "HelveticaNeue",
        PSFNMK("Helvetica Neue", nil /* normal */ ): "HelveticaNeue",
        PSFNMK("Helvetica Neue", Font.Weight.medium): "HelveticaNeue-Medium",
        PSFNMK("Helvetica Neue", Font.Weight.bold): "HelveticaNeue-Bold",
        // NOTE: "Helvetica Neue 75" in Orange Brand TTF has "HelveticaNeue-Bold" PostScript Name
        // ┬─┬ ︵ /(.□. \）

        // WARNING: Needs TTF font files not available in iOS, thus needed to be added in project
        // NOTE: Download it through Orange Brand website (need authentication): https://brand.orange.com/en/brand-basics/typography
        PSFNMK("Helvetica Neue Arabic", Font.Weight.light): "HelveticaNeueLTArabic-Light",
        PSFNMK("Helvetica Neue Arabic", Font.Weight.regular): "HelveticaNeueLTArabic-Roman",
        PSFNMK("Helvetica Neue Arabic", nil): "HelveticaNeueLTArabic-Roman",
        PSFNMK("Helvetica Neue Arabic", Font.Weight.bold): "HelveticaNeueLTArabic-Bold",

        // MARK: Sosh

        PSFNMK("Sosh", Font.Weight.thin): "Sosh-Thin",
        PSFNMK("Sosh", Font.Weight.regular): "Sosh-Regular",
        PSFNMK("Sosh", Font.Weight.medium): "Sosh-Medium",
        PSFNMK("Sosh", Font.Weight.bold): "Sosh-Bold",
        PSFNMK("Sosh", Font.Weight.black): "Sosh-Black",

        // MARK: Wireframe

        PSFNMK("Shantell Sans", Font.Weight.light): "ShantellSans-Light",
        PSFNMK("Shantell Sans", Font.Weight.regular): "ShantellSans-Regular",
        PSFNMK("Shantell Sans", Font.Weight.medium): "ShantellSans-Medium",
        PSFNMK("Shantell Sans", Font.Weight.semibold): "ShantellSans-SemiBold",
        PSFNMK("Shantell Sans", Font.Weight.bold): "ShantellSans-Bold",
    ]
