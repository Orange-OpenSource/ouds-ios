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
    // Letter spacing...
    let paragraphSpacing: TypographyFontParagraphSpacingPrimitiveToken
    
    public init(family: TypographyFontFamilyPrimitiveToken, size: TypographyFontSizePrimitiveToken, lineHeight: TypographyFontLineHeightPrimitiveToken, weight: TypographyFontWeightPrimitiveToken, paragraphSpacing: TypographyFontParagraphSpacingPrimitiveToken) {
        self.family = family
        self.size = size
        self.lineHeight = lineHeight
        self.weight = weight
        self.paragraphSpacing = paragraphSpacing
    }
}

// MARK: - Typography primitive tokens

public struct TypographyPrimitiveTokens {
    
    // MARK: Font family
    
    static let fontFamilySystem: TypographyFontFamilyPrimitiveToken = "SF-Pro-Text"
    static let fontFamilyMonospace: TypographyFontFamilyPrimitiveToken = "Courrier-New"
    // Note: Only added Apple system font
    
    // MARK: Font weight
    
    static let fontWeight100: TypographyFontWeightPrimitiveToken = Font.Weight.thin
    static let fontWeight200: TypographyFontWeightPrimitiveToken = Font.Weight.ultraLight
    static let fontWeight300: TypographyFontWeightPrimitiveToken = Font.Weight.light
    static let fontWeight400: TypographyFontWeightPrimitiveToken = Font.Weight.regular
    static let fontWeight500: TypographyFontWeightPrimitiveToken = Font.Weight.medium
    static let fontWeight600: TypographyFontWeightPrimitiveToken = Font.Weight.semibold
    static let fontWeight700: TypographyFontWeightPrimitiveToken = Font.Weight.bold
    // No matching value for fontWeight800 "extra-bold, ultra-bold"
    static let fontWeight900: TypographyFontWeightPrimitiveToken = Font.Weight.heavy
    // No matching value for fontWeight950 "extra-black, ultra-black"
    
    // MARK: Font size (px)
    
    static let fontSize100: TypographyFontSizePrimitiveToken = 10 // NOTE: Missing value in design team whiteboard, added it
    static let fontSize150: TypographyFontSizePrimitiveToken = 12
    static let fontSize175: TypographyFontSizePrimitiveToken = 13
    static let fontSize200: TypographyFontSizePrimitiveToken = 14
    static let fontSize250: TypographyFontSizePrimitiveToken = 16
    static let fontSize300: TypographyFontSizePrimitiveToken = 18
    static let fontSize350: TypographyFontSizePrimitiveToken = 20
    static let fontSize450: TypographyFontSizePrimitiveToken = 24
    static let fontSize550: TypographyFontSizePrimitiveToken = 28
    static let fontSize650: TypographyFontSizePrimitiveToken = 32
    static let fontSize750: TypographyFontSizePrimitiveToken = 36
    static let fontSize850: TypographyFontSizePrimitiveToken = 40
    static let fontSize950: TypographyFontSizePrimitiveToken = 44
    static let fontSize1050: TypographyFontSizePrimitiveToken = 48
    static let fontSize1150: TypographyFontSizePrimitiveToken = 52
    static let fontSize1250: TypographyFontSizePrimitiveToken = 56
    static let fontSize1450: TypographyFontSizePrimitiveToken = 64
    static let fontSize1850: TypographyFontSizePrimitiveToken = 72
    
    // MARK: Line height (px)
    
    static let fontLineHeight250: TypographyFontSizePrimitiveToken = 16
    static let fontLineHeight350: TypographyFontSizePrimitiveToken = 20
    static let fontLineHeight450: TypographyFontSizePrimitiveToken = 24
    static let fontLineHeight550: TypographyFontSizePrimitiveToken = 28
    static let fontLineHeight650: TypographyFontSizePrimitiveToken = 32
    static let fontLineHeight750: TypographyFontSizePrimitiveToken = 36
    static let fontLineHeight850: TypographyFontSizePrimitiveToken = 10
    static let fontLineHeight950: TypographyFontSizePrimitiveToken = 44
    static let fontLineHeight1050: TypographyFontSizePrimitiveToken = 48
    static let fontLineHeight1150: TypographyFontSizePrimitiveToken = 52
    static let fontLineHeight1250: TypographyFontSizePrimitiveToken = 56
    static let fontLineHeight1350: TypographyFontSizePrimitiveToken = 60
    static let fontLineHeight1450: TypographyFontSizePrimitiveToken = 64
    static let fontLineHeight1850: TypographyFontSizePrimitiveToken = 72
    static let fontLineHeight2050: TypographyFontSizePrimitiveToken = 80
    
    // Letter spacing (%)
    // NOTE: How to manage percentages defined in the design team whiteboard?
    // ...
    
    // Font letter spacing
    // NOTE: Cannot define without letter spacing
    // ...
    
    // MARK: Paragraph spacing (px)
    
    static let fontParagraphSpacing100: TypographyFontParagraphSpacingPrimitiveToken = 0
    static let fontParagraphSpacing200: TypographyFontParagraphSpacingPrimitiveToken = 8
    static let fontParagraphSpacing300: TypographyFontParagraphSpacingPrimitiveToken = 16
    static let fontParagraphSpacing400: TypographyFontParagraphSpacingPrimitiveToken = 24
    
    // MARK: Composite
    
    static let typeRegular150 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize150, lineHeight: fontLineHeight250, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    static let typeRegular175 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize175, lineHeight: fontLineHeight250, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    static let typeRegular200 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize200, lineHeight: fontLineHeight350, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    static let typeRegular250 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize250, lineHeight: fontLineHeight450, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold150 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize150, lineHeight: fontLineHeight250, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold175 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize175, lineHeight: fontLineHeight250, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold200 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize200, lineHeight: fontLineHeight350, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold250 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize250, lineHeight: fontLineHeight450, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold300 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize300, lineHeight: fontLineHeight450, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold350 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize350, lineHeight: fontLineHeight550, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold450 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize450, lineHeight: fontLineHeight650, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold550 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize550, lineHeight: fontLineHeight750, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold650 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize650, lineHeight: fontLineHeight850, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold750 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize750, lineHeight: fontLineHeight950, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold850 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize850, lineHeight: fontLineHeight1050, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold950 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize950, lineHeight: fontLineHeight1150, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold1050 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize1050, lineHeight: fontLineHeight1250, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold1150
    = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize1150, lineHeight: fontLineHeight1350, weight: fontWeight400, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold1250 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize1250, lineHeight: fontLineHeight1450, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold1450 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize1450, lineHeight: fontLineHeight1850, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
    static let typeBold1850 = TypographyCompositePrimitiveToken(family: fontFamilySystem, size: fontSize1850, lineHeight: fontLineHeight2050, weight: fontWeight700, paragraphSpacing: fontParagraphSpacing100)
}
