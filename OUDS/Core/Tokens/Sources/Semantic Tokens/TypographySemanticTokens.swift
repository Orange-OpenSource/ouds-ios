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

// MARK: - Type aliases to keep grammar clear

public typealias TypographyFontFamilySemanticToken = TypographyFontFamilyPrimitiveToken
public typealias TypographyFontWeightSemanticToken = TypographyFontWeightPrimitiveToken
public typealias TypographyFontSizeSemanticToken = TypographyFontSizePrimitiveToken
public typealias TypographyFontLineHeightSemanticToken = TypographyFontLineHeightPrimitiveToken

// MARK: - Semantic tokens

public struct TypographySemanticTokens {
    
    // MARK: Font family
    
    static let fontFamilyDisplay: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    static let fontFamilyHeading: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    static let fontFamilyBody: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    static let fontFamilyLabel: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    static let fontFamilyCode: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    
    // MARK: Font weight
    
    static let fontWeightDisplay: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    static let fontWeightHeading: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    static let fontWeightBodyDefault: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight400
    static let fontWeightBodyStrong: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    static let fontWeightLabelDefault: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight400
    static let fontWeightLabelStrong: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    static let fontWeightWeightCode: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight400
    
    // MARK: Font size
    
    static let fontSizeMobileDislayLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize850
    static let fontSizeMobileDisplayMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize750
    static let fontSizeMobileDisplaySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize650
    static let fontSizeMobileHeadingXLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize550
    static let fontSizeMobileHeadingLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize450
    static let fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize350
    static let fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize300
    static let fontSizeMobileBodyLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize250
    static let fontSizeMobileBodyMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    static let fontSizeMobileBodySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize100
    
    static let fontSizeTabletDislayLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize1450
    static let fontSizeTabletDisplayMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize1050
    static let fontSizeTabletDisplaySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize850
    static let fontSizeTabletHeadingXLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize750
    static let fontSizeTabletHeadingLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize550
    static let fontSizeTabletHeadingMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize450
    static let fontSizeTabletHeadingSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize350
    static let fontSizeTabletBodyLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize250
    static let fontSizeTabletBodyMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    static let fontSizeTabletBodySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize150
    
    static let fontSizeLabelXLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize300
    static let fontSizeLabelLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize250
    static let fontSizeLabelMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    static let fontSizeLabelSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize100
    static let fontSizeCodeMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    static let fontSizeCodeSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize150
    
    // MARK: Line height
    
    static let fontLineHeightMobileDislayLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1050
    static let fontLineHeightMobileDisplayMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight950
    static let fontLineHeightMobileDisplaySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight850
    static let fontLineHeightMobileHeadingXLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight750
    static let fontLineHeightMobileHeadingLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight650
    static let fontLineHeightMobileHeadingMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight550
    static let fontLineHeightMobileHeadingSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    static let fontLineHeightMobileBodyLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    static let fontLineHeightMobileBodyMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    static let fontLineHeightMobileBodySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250
    
    static let fontLineHeightTabletDislayLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1850
    static let fontLineHeightTabletDisplayMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1250
    static let fontLineHeightTabletDisplaySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1050
    static let fontLineHeightTabletHeadingXLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight950
    static let fontLineHeightTabletHeadingLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight750
    static let fontLineHeightTabletHeadingMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight650
    static let fontLineHeightTabletHeadingSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight550
    static let fontLineHeightTabletBodyLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    static let fontLineHeightTabletBodyMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    static let fontLineHeightTabletBodySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250
    
    static let fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    static let fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    static let fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    static let fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250
    
    static let fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    static let fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250
    
    // MARK: Paragraph spacing
    
    static let fontParagraphSpacingMobileDislayLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingMobileDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingMobileDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingMobileHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingMobileHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingMobileHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingMobileHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingMobileBodyLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingMobileBodyMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingMobileBodySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    
    static let fontParagraphSpacingTabletDislayLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingTabletDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingTabletDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingTabletHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingTabletHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingTabletHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingTabletHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingTabletBodyLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingTabletBodyMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingTabletBodySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    
    static let fontParagraphSpacingLabelXLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingLabelLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingLabelMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingLabelSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    
    static let fontParagraphSpacingCodeMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    static let fontParagraphSpacingCodeSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
}
