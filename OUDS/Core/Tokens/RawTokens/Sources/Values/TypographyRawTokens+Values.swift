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

/// Extracted in a separated file to help the *Figma* JSON to Swift parser to generate files to include easily.
/// Should be fully generated in the future.
extension TypographyRawTokens {

    // MARK: Primitive token - Typography - Font size

    // WARNING: values in pixels and not in points, do not use as is!

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

    // WARNING: values in pixels and not in points, do not use as is!

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

    // MARK: Primitive token - Typography - Letter spacing

    // WARNING: values in pixels and not in points, do not use as is!

    public static let fontLetterSpacing150: TypographyFontLetterSpacingRawToken = 150
    public static let fontLetterSpacing175: TypographyFontLetterSpacingRawToken = 175
    public static let fontLetterSpacing200: TypographyFontLetterSpacingRawToken = 200
    public static let fontLetterSpacing250: TypographyFontLetterSpacingRawToken = 250
    public static let fontLetterSpacing300: TypographyFontLetterSpacingRawToken = 300
    public static let fontLetterSpacing350: TypographyFontLetterSpacingRawToken = 350
    public static let fontLetterSpacing450: TypographyFontLetterSpacingRawToken = 450
    public static let fontLetterSpacing550: TypographyFontLetterSpacingRawToken = 550
    public static let fontLetterSpacing650: TypographyFontLetterSpacingRawToken = 650
    public static let fontLetterSpacing750: TypographyFontLetterSpacingRawToken = 750
    public static let fontLetterSpacing850: TypographyFontLetterSpacingRawToken = 850
    public static let fontLetterSpacing950: TypographyFontLetterSpacingRawToken = 950
    public static let fontLetterSpacing1050: TypographyFontLetterSpacingRawToken = 1050
    public static let fontLetterSpacing1150: TypographyFontLetterSpacingRawToken = 1150
    public static let fontLetterSpacing1250: TypographyFontLetterSpacingRawToken = 1250
    public static let fontLetterSpacing1450: TypographyFontLetterSpacingRawToken = 1450
    public static let fontLetterSpacing1850: TypographyFontLetterSpacingRawToken = 1850

    // MARK: Primitive token - Typography - Font family

    // WARNING: Raw values, do not use as is, ensure fonts are available

    public static let fontFamilyBrandDefault: TypographyFontFamilyRawToken = "Helvetica Neue"
    public static let fontFamilyBrandTV: TypographyFontFamilyRawToken = "Helvetica Neue LT"
    public static let fontFamilySystemArial: TypographyFontFamilyRawToken = "Arial"
    public static let fontFamilySystemHelvetica: TypographyFontFamilyRawToken = "Helvetica"
    public static let fontFamilySystemNotoSans: TypographyFontFamilyRawToken = "Noto sans"
    public static let fontFamilySystemSFProText: TypographyFontFamilyRawToken = "SF Pro Text"
    public static let fontFamilySystemRoboto: TypographyFontFamilyRawToken = "Roboto"
    public static let fontFamilyMonospaceMenlo: TypographyFontFamilyRawToken = "Menlo"
    public static let fontFamilyMonospaceMonaco: TypographyFontFamilyRawToken = "Monaco"
    public static let fontFamilyMonospaceCourierNew: TypographyFontFamilyRawToken = "Courier New"

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

    public static let typeRegular150 = TypographyCompositeRawToken(size: fontSize150, lineHeight: fontLineHeight250, weight: fontWeight400, letterSpacing: fontLetterSpacing150)
    public static let typeRegular175 = TypographyCompositeRawToken(size: fontSize175, lineHeight: fontLineHeight250, weight: fontWeight400, letterSpacing: fontLetterSpacing175)
    public static let typeRegular200 = TypographyCompositeRawToken(size: fontSize200, lineHeight: fontLineHeight250, weight: fontWeight400, letterSpacing: fontLetterSpacing200)
    public static let typeRegular250 = TypographyCompositeRawToken(size: fontSize250, lineHeight: fontLineHeight350, weight: fontWeight400, letterSpacing: fontLetterSpacing250)
    public static let typeBold150 = TypographyCompositeRawToken(size: fontSize150, lineHeight: fontLineHeight250, weight: fontWeight700, letterSpacing: fontLetterSpacing150)
    public static let typeBold175 = TypographyCompositeRawToken(size: fontSize175, lineHeight: fontLineHeight250, weight: fontWeight700, letterSpacing: fontLetterSpacing175)
    public static let typeBold200 = TypographyCompositeRawToken(size: fontSize200, lineHeight: fontLineHeight250, weight: fontWeight700, letterSpacing: fontLetterSpacing200)
    public static let typeBold250 = TypographyCompositeRawToken(size: fontSize250, lineHeight: fontLineHeight350, weight: fontWeight700, letterSpacing: fontLetterSpacing250)
    public static let typeBold300 = TypographyCompositeRawToken(size: fontSize300, lineHeight: fontLineHeight450, weight: fontWeight700, letterSpacing: fontLetterSpacing300)
    public static let typeBold350 = TypographyCompositeRawToken(size: fontSize350, lineHeight: fontLineHeight550, weight: fontWeight700, letterSpacing: fontLetterSpacing350)
    public static let typeBold450 = TypographyCompositeRawToken(size: fontSize450, lineHeight: fontLineHeight550, weight: fontWeight700, letterSpacing: fontLetterSpacing450)
    public static let typeBold550 = TypographyCompositeRawToken(size: fontSize550, lineHeight: fontLineHeight650, weight: fontWeight700, letterSpacing: fontLetterSpacing550)
    public static let typeBold650 = TypographyCompositeRawToken(size: fontSize650, lineHeight: fontLineHeight750, weight: fontWeight700, letterSpacing: fontLetterSpacing650)
    public static let typeBold750 = TypographyCompositeRawToken(size: fontSize750, lineHeight: fontLineHeight850, weight: fontWeight700, letterSpacing: fontLetterSpacing750)
    public static let typeBold850 = TypographyCompositeRawToken(size: fontSize850, lineHeight: fontLineHeight950, weight: fontWeight700, letterSpacing: fontLetterSpacing850)
    public static let typeBold950 = TypographyCompositeRawToken(size: fontSize950, lineHeight: fontLineHeight1050, weight: fontWeight700, letterSpacing: fontLetterSpacing950)
    public static let typeBold1050 = TypographyCompositeRawToken(size: fontSize1050, lineHeight: fontLineHeight1150, weight: fontWeight700, letterSpacing: fontLetterSpacing1050)
    public static let typeBold1150 = TypographyCompositeRawToken(size: fontSize1150, lineHeight: fontLineHeight1250, weight: fontWeight700, letterSpacing: fontLetterSpacing1150)
    public static let typeBold1250 = TypographyCompositeRawToken(size: fontSize1250, lineHeight: fontLineHeight1350, weight: fontWeight700, letterSpacing: fontLetterSpacing1250)
    public static let typeBold1450 = TypographyCompositeRawToken(size: fontSize1450, lineHeight: fontLineHeight1450, weight: fontWeight700, letterSpacing: fontLetterSpacing1450)
    public static let typeBold1850 = TypographyCompositeRawToken(size: fontSize1850, lineHeight: fontLineHeight1850, weight: fontWeight700, letterSpacing: fontLetterSpacing1850)
}
