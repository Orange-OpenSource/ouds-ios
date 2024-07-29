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
    
    // ...
    static let fontFamilySystemSFProText: TypographyFontFamilyPrimitiveToken = "SF-Pro-Text"
    // ...
    
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
    
    static let fontSize150: TypographyFontSizePrimitiveToken = 12
    static let fontSize175: TypographyFontSizePrimitiveToken = 13
    static let fontSize200: TypographyFontSizePrimitiveToken = 14
    static let fontSize250: TypographyFontSizePrimitiveToken = 16
    static let fontSize300: TypographyFontSizePrimitiveToken = 18
    static let fontSize350: TypographyFontSizePrimitiveToken = 20
    // ...
    static let fontSize1250: TypographyFontSizePrimitiveToken = 56
    static let fontSize1450: TypographyFontSizePrimitiveToken = 64
    static let fontSize1850: TypographyFontSizePrimitiveToken = 72
    
    // MARK: Line height (px)
    
    static let fontLineHeight250: TypographyFontLineHeightPrimitiveToken = 16
    static let fontLineHeight350: TypographyFontLineHeightPrimitiveToken = 20
    static let fontLineHeight450: TypographyFontLineHeightPrimitiveToken = 24
    static let fontLineHeight550: TypographyFontLineHeightPrimitiveToken = 25
    // ...
    static let fontLineHeight1450: TypographyFontLineHeightPrimitiveToken = 64
    static let fontLineHeight1850: TypographyFontLineHeightPrimitiveToken = 72
    static let fontLineHeight2050: TypographyFontLineHeightPrimitiveToken = 80
    
    // Letter spacing (%)
    // ...
    
    // MARK: Paragraph spacing (px)
    
    static let fontParagraphSpacing100: TypographyFontParagraphSpacingPrimitiveToken = 0
    static let fontParagraphSpacing200: TypographyFontParagraphSpacingPrimitiveToken = 8
    static let fontParagraphSpacing300: TypographyFontParagraphSpacingPrimitiveToken = 16
    static let fontParagraphSpacing400: TypographyFontParagraphSpacingPrimitiveToken = 24
    
    // MARK: Composite
    
    static let typeRegular150 = TypographyCompositePrimitiveToken(family: fontFamilySystemSFProText,
                                                                  size: fontSize150,
                                                                  lineHeight: fontLineHeight250,
                                                                  weight: fontWeight400,
                                                                  paragraphSpacing: fontParagraphSpacing100)
    // ...
    
    static let typeBold150 = TypographyCompositePrimitiveToken(family: fontFamilySystemSFProText,
                                                                  size: fontSize150,
                                                                  lineHeight: fontLineHeight250,
                                                                  weight: fontWeight700,
                                                                  paragraphSpacing: fontParagraphSpacing100)
    
    static let typeBold1850 = TypographyCompositePrimitiveToken(family: fontFamilySystemSFProText,
                                                                  size: fontSize1850,
                                                                  lineHeight: fontLineHeight2050,
                                                                  weight: fontWeight700,
                                                                  paragraphSpacing: fontParagraphSpacing100)
}
