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

// MARK: - Type aliases to keep grammar clear

/// In the global design system tool, *font family* raw tokens are basically `String` values
public typealias TypographyFontFamilyRawToken = String

/// In the global design system tool, *font weight* raw tokens are basically `String` values
public typealias TypographyFontWeightRawToken = String

/// In the global design system tool, *font size* raw tokens are basically `CGFloat` values
public typealias TypographyFontSizeRawToken = CGFloat

/// In the global design system tool, *font line height* raw tokens are basically `Int` values
public typealias TypographyFontLineHeightRawToken = Int

/// In the global design system tool, *paragraph spacing* raw tokens are basically `Int` values
public typealias TypographyFontParagraphSpacingRawToken = Int

// MARK: Primitive tokens

// MARK: - Composite raw token

/// Composite raw tokens are here to pack a set of specific values according to the global design system tool.
/// Here a *typography* is finaly defined by some specific values.
public struct TypographyCompositeRawToken {

    /// The font family to apply for this typography
    public let family: TypographyFontFamilyRawToken
    /// The font size to apply for the texts
    public let size: TypographyFontSizeRawToken
    /// The line height to apply on texts
    public let lineHeight: TypographyFontLineHeightRawToken
    /// The font weight to associated wit the font family
    public let weight: TypographyFontWeightRawToken
    // TODO: How to deal "letter spacing"?
    /// The paragraph spacing to apply on texts
    public let paragraphSpacing: TypographyFontParagraphSpacingRawToken
}

// MARK: - Raw tokens

// swiftlint:disable line_length
/// This is the group of all **raw tokens** related to **typography**.
/// Primitive types such as `Int` and `String` must be used to as to allow to use `@objc` keywords in extensions for overriding.
/// Such tokens are packed in a _Swift enum_ so as to gather them in one object with the suitable namespace and avoid to have just constants in nothing else
///  (i.e. publicly accessible from everywhere). More optimized than _struct_.
public enum TypographyRawTokens {

    // MARK: Primitive token - Typography - Font size

    public static let fontSize100: TypographyFontSizeRawToken = 10
    public static let fontSize150: TypographyFontSizeRawToken = 12
    public static let fontSize175: TypographyFontSizeRawToken = 13
    public static let fontSize200: TypographyFontSizeRawToken = 14
    public static let fontSize250: TypographyFontSizeRawToken = 16
    public static let fontSize300: TypographyFontSizeRawToken = 18
    public static let fontSize350: TypographyFontSizeRawToken = 20
    public static let fontSize450: TypographyFontSizeRawToken = 24
    public static let fontSize550: TypographyFontSizeRawToken = 28
    public static let fontSize650: TypographyFontSizeRawToken = 32
    public static let fontSize750: TypographyFontSizeRawToken = 36
    public static let fontSize850: TypographyFontSizeRawToken = 40
    public static let fontSize950: TypographyFontSizeRawToken = 44
    public static let fontSize1050: TypographyFontSizeRawToken = 48
    public static let fontSize1150: TypographyFontSizeRawToken = 52
    public static let fontSize1250: TypographyFontSizeRawToken = 56
    public static let fontSize1450: TypographyFontSizeRawToken = 64
    public static let fontSize1850: TypographyFontSizeRawToken = 72

    // MARK: Primitive token - Typography - Line height

    public static let fontLineHeight250: TypographyFontLineHeightRawToken = 16
    public static let fontLineHeight350: TypographyFontLineHeightRawToken = 20
    public static let fontLineHeight450: TypographyFontLineHeightRawToken = 24
    public static let fontLineHeight550: TypographyFontLineHeightRawToken = 28
    public static let fontLineHeight650: TypographyFontLineHeightRawToken = 32
    public static let fontLineHeight750: TypographyFontLineHeightRawToken = 36
    public static let fontLineHeight850: TypographyFontLineHeightRawToken = 40
    public static let fontLineHeight950: TypographyFontLineHeightRawToken = 44
    public static let fontLineHeight1050: TypographyFontLineHeightRawToken = 48
    public static let fontLineHeight1150: TypographyFontLineHeightRawToken = 52
    public static let fontLineHeight1250: TypographyFontLineHeightRawToken = 56
    public static let fontLineHeight1350: TypographyFontLineHeightRawToken = 60
    public static let fontLineHeight1450: TypographyFontLineHeightRawToken = 64
    public static let fontLineHeight1850: TypographyFontLineHeightRawToken = 72
    public static let fontLineHeight2050: TypographyFontLineHeightRawToken = 80

    // MARK: Primitive token - Typography - Paragraph spacing

    public static let fontParagraphSpacing100: TypographyFontParagraphSpacingRawToken = 0
    public static let fontParagraphSpacing200: TypographyFontParagraphSpacingRawToken = 8
    public static let fontParagraphSpacing300: TypographyFontParagraphSpacingRawToken = 16
    public static let fontParagraphSpacing400: TypographyFontParagraphSpacingRawToken = 24

    // MARK: Primitive token - Typography - Font family

    public static let fontFamilySystem: TypographyFontFamilyRawToken = "SF-Pro-Text"
    public static let fontFamilyMonospace: TypographyFontFamilyRawToken = "Courrier-New"

    // MARK: Primitive token - Typography - Font weight

    public static let fontWeight100: TypographyFontWeightRawToken = "thin"
    public static let fontWeight200: TypographyFontWeightRawToken = "ultraLight"
    public static let fontWeight300: TypographyFontWeightRawToken = "light"
    public static let fontWeight400: TypographyFontWeightRawToken = "regular"
    public static let fontWeight500: TypographyFontWeightRawToken = "medium"
    public static let fontWeight600: TypographyFontWeightRawToken = "semibold"
    public static let fontWeight700: TypographyFontWeightRawToken = "bold"
    public static let fontWeight900: TypographyFontWeightRawToken = "heavy"

    // MARK: Primitive token - Typography - Composite

    public static let typeRegular150 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize150, lineHeight: fontLineHeight250, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    public static let typeRegular175 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize175, lineHeight: fontLineHeight250, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    public static let typeRegular200 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize200, lineHeight: fontLineHeight250, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    public static let typeRegular250 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize250, lineHeight: fontLineHeight350, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold150 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize150, lineHeight: fontLineHeight450, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold175 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize175, lineHeight: fontLineHeight250, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold200 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize200, lineHeight: fontLineHeight250, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold250 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize250, lineHeight: fontLineHeight350, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold300 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize300, lineHeight: fontLineHeight450, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold350 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize350, lineHeight: fontLineHeight550, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold450 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize450, lineHeight: fontLineHeight550, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold550 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize550, lineHeight: fontLineHeight650, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold650 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize650, lineHeight: fontLineHeight750, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold750 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize750, lineHeight: fontLineHeight850, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold850 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize850, lineHeight: fontLineHeight950, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold950 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize950, lineHeight: fontLineHeight1050, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold1050 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize1050, lineHeight: fontLineHeight1150, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold1150 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize1150, lineHeight: fontLineHeight1250, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold1250 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize1250, lineHeight: fontLineHeight1350, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold1450 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize1450, lineHeight: fontLineHeight1450, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold1850 = TypographyCompositeRawToken(family: fontFamilySystem, size: fontSize1850, lineHeight: fontLineHeight1850, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)

}
// swiftlint:enable line_length
