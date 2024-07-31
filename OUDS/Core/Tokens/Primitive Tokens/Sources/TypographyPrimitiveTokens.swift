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

public typealias TypographyFontFamilyPrimitiveToken = String
public typealias TypographyFontWeightPrimitiveToken = SwiftUI.Font.Weight
public typealias TypographyFontSizePrimitiveToken = Int
public typealias TypographyFontLineHeightPrimitiveToken = Int
public typealias TypographyFontParagraphSpacingPrimitiveToken = Int

// MARK: Primitive tokens

// MARK: - Composite primitive token

public struct TypographyCompositePrimitiveToken {
    
    let family: TypographyFontFamilyPrimitiveToken
    let size: TypographyFontSizePrimitiveToken
    let lineHeight: TypographyFontLineHeightPrimitiveToken
    let weight: TypographyFontWeightPrimitiveToken
    // let ter spacing...
    let paragraphSpacing: TypographyFontParagraphSpacingPrimitiveToken
    
    init(family: TypographyFontFamilyPrimitiveToken, size: TypographyFontSizePrimitiveToken, lineHeight: TypographyFontLineHeightPrimitiveToken, weight: TypographyFontWeightPrimitiveToken, paragraphSpacing: TypographyFontParagraphSpacingPrimitiveToken) {
        self.family = family
        self.size = size
        self.lineHeight = lineHeight
        self.weight = weight
        self.paragraphSpacing = paragraphSpacing
    }
}

// MARK: - Typography primitive tokens

public struct TypographyPrimitiveTokens {
    
    // MARK: Primitive token - Typography - Font size

    public static let fontSize100: TypographyFontSizePrimitiveToken = 10
    public static let fontSize150: TypographyFontSizePrimitiveToken = 12
    public static let fontSize175: TypographyFontSizePrimitiveToken = 13
    public static let fontSize200: TypographyFontSizePrimitiveToken = 14
    public static let fontSize250: TypographyFontSizePrimitiveToken = 16
    public static let fontSize300: TypographyFontSizePrimitiveToken = 18
    public static let fontSize350: TypographyFontSizePrimitiveToken = 20
    public static let fontSize450: TypographyFontSizePrimitiveToken = 24
    public static let fontSize550: TypographyFontSizePrimitiveToken = 28
    public static let fontSize650: TypographyFontSizePrimitiveToken = 32
    public static let fontSize750: TypographyFontSizePrimitiveToken = 36
    public static let fontSize850: TypographyFontSizePrimitiveToken = 40
    public static let fontSize950: TypographyFontSizePrimitiveToken = 44
    public static let fontSize1050: TypographyFontSizePrimitiveToken = 48
    public static let fontSize1150: TypographyFontSizePrimitiveToken = 52
    public static let fontSize1250: TypographyFontSizePrimitiveToken = 56
    public static let fontSize1450: TypographyFontSizePrimitiveToken = 64
    public static let fontSize1850: TypographyFontSizePrimitiveToken = 72

    // MARK: Primitive token - Typography - Line height

    public static let fontLineHeight250: TypographyFontLineHeightPrimitiveToken = 16
    public static let fontLineHeight350: TypographyFontLineHeightPrimitiveToken = 20
    public static let fontLineHeight450: TypographyFontLineHeightPrimitiveToken = 24
    public static let fontLineHeight550: TypographyFontLineHeightPrimitiveToken = 28
    public static let fontLineHeight650: TypographyFontLineHeightPrimitiveToken = 32
    public static let fontLineHeight750: TypographyFontLineHeightPrimitiveToken = 36
    public static let fontLineHeight850: TypographyFontLineHeightPrimitiveToken = 10
    public static let fontLineHeight950: TypographyFontLineHeightPrimitiveToken = 44
    public static let fontLineHeight1050: TypographyFontLineHeightPrimitiveToken = 48
    public static let fontLineHeight1150: TypographyFontLineHeightPrimitiveToken = 52
    public static let fontLineHeight1250: TypographyFontLineHeightPrimitiveToken = 56
    public static let fontLineHeight1350: TypographyFontLineHeightPrimitiveToken = 60
    public static let fontLineHeight1450: TypographyFontLineHeightPrimitiveToken = 64
    public static let fontLineHeight1850: TypographyFontLineHeightPrimitiveToken = 72
    public static let fontLineHeight2050: TypographyFontLineHeightPrimitiveToken = 80

    // MARK: Primitive token - Typography - Paragraph spacing

    public static let fontParagraphSpacing100: TypographyFontParagraphSpacingPrimitiveToken = 0
    public static let fontParagraphSpacing200: TypographyFontParagraphSpacingPrimitiveToken = 8
    public static let fontParagraphSpacing300: TypographyFontParagraphSpacingPrimitiveToken = 16
    public static let fontParagraphSpacing400: TypographyFontParagraphSpacingPrimitiveToken = 24

    // MARK: Primitive token - Typography - Font family

    public static let fontFamilySystem: TypographyFontFamilyPrimitiveToken = "SF-Pro-Text"
    public static let fontFamilyMonospace: TypographyFontFamilyPrimitiveToken = "Courrier-New"

    // MARK: Primitive token - Typography - Font weight

    public static let fontWeight100: TypographyFontWeightPrimitiveToken = Font.Weight.thin
    public static let fontWeight200: TypographyFontWeightPrimitiveToken = Font.Weight.ultraLight
    public static let fontWeight300: TypographyFontWeightPrimitiveToken = Font.Weight.light
    public static let fontWeight400: TypographyFontWeightPrimitiveToken = Font.Weight.regular
    public static let fontWeight500: TypographyFontWeightPrimitiveToken = Font.Weight.medium
    public static let fontWeight600: TypographyFontWeightPrimitiveToken = Font.Weight.semibold
    public static let fontWeight700: TypographyFontWeightPrimitiveToken = Font.Weight.bold
    public static let fontWeight900: TypographyFontWeightPrimitiveToken = Font.Weight.heavy

    // MARK: Primitive token - Typography - Composite

    public static let typeRegular150 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize150, lineHeight: fontLineHeight250, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    public static let typeRegular175 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize175, lineHeight: fontLineHeight250, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    public static let typeRegular200 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize200, lineHeight: fontLineHeight250, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    public static let typeRegular250 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize250, lineHeight: fontLineHeight350, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold150 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize150, lineHeight: fontLineHeight450, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold175 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize175, lineHeight: fontLineHeight250, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold200 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize200, lineHeight: fontLineHeight250, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold250 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize250, lineHeight: fontLineHeight350, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold300 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize300, lineHeight: fontLineHeight450, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold350 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize350, lineHeight: fontLineHeight550, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold450 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize450, lineHeight: fontLineHeight550, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold550 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize550, lineHeight: fontLineHeight650, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold650 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize650, lineHeight: fontLineHeight750, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold750 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize750, lineHeight: fontLineHeight850, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold850 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize850, lineHeight: fontLineHeight950, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold950 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize950, lineHeight: fontLineHeight1050, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold1050 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize1050, lineHeight: fontLineHeight1150, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold1150 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize1150, lineHeight: fontLineHeight1250, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold1250 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize1250, lineHeight: fontLineHeight1350, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold1450 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize1450, lineHeight: fontLineHeight1450, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    public static let typeBold1850 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize1850, lineHeight: fontLineHeight1850, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)

}
