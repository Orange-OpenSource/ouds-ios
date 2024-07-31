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
import OUDSTokensPrimitive

// MARK: - Type aliases to keep grammar clear

typealias TypographyFontFamilySemanticToken = TypographyFontFamilyPrimitiveToken
typealias TypographyFontWeightSemanticToken = TypographyFontWeightPrimitiveToken
typealias TypographyFontSizeSemanticToken = TypographyFontSizePrimitiveToken
typealias TypographyFontLineHeightSemanticToken = TypographyFontLineHeightPrimitiveToken

// MARK: - Semantic tokens

protocol TypographySemanticTokens { }

extension TypographySemanticTokens {
    
    // MARK: Semantic token - Typography - Font - Family

    var fontFamilyDisplay: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    var fontFamilyHeading: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    var fontFamilyBody: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    var fontFamilyLabel: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    var fontFamilyCode: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem

    // MARK: Semantic token - Typography - Font - Weight

    var fontWeightDisplay: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    var fontWeightHeading: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    var fontWeightBodyDefault: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight400
    var fontWeightBodyStrong: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    var fontWeightLabelDefault: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight400
    var fontWeightLabelStrong: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    var fontWeightWeightCode: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight400

    // MARK: Semantic token - Typography - Font - Size - Mobile

    var fontSizeMobileDislayLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize850
    var fontSizeMobileDisplayMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize750
    var fontSizeMobileDisplaySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize650
    var fontSizeMobileHeadingXLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize550
    var fontSizeMobileHeadingLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize450
    var fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize350
    var fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize300
    var fontSizeMobileBodyLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize250
    var fontSizeMobileBodyMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    var fontSizeMobileBodySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize100

    // MARK: Semantic token - Typography - Font - Size - Tablet

    var fontSizeTabletDislayLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize1450
    var fontSizeTabletDisplayMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize1050
    var fontSizeTabletDisplaySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize850
    var fontSizeTabletHeadingXLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize750
    var fontSizeTabletHeadingLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize550
    var fontSizeTabletHeadingMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize450
    var fontSizeTabletHeadingSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize350
    var fontSizeTabletBodyLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize250
    var fontSizeTabletBodyMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    var fontSizeTabletBodySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize150

    // MARK: Semantic token - Typography - Font - Size - Others

    var fontSizeLabelXLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize300
    var fontSizeLabelLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize250
    var fontSizeLabelMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    var fontSizeLabelSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize100
    var fontSizeCodeMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    var fontSizeCodeSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize150

    // MARK: Semantic token - Typography - Font - Light height - Mobile

    var fontLineHeightMobileDislayLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1050
    var fontLineHeightMobileDisplayMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight950
    var fontLineHeightMobileDisplaySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight850
    var fontLineHeightMobileHeadingXLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight750
    var fontLineHeightMobileHeadingLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight650
    var fontLineHeightMobileHeadingMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight550
    var fontLineHeightMobileHeadingSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    var fontLineHeightMobileBodyLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    var fontLineHeightMobileBodyMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    var fontLineHeightMobileBodySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250

    // MARK: Semantic token - Typography - Font - Light height - Tablet

    var fontLineHeightTabletDislayLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1850
    var fontLineHeightTabletDisplayMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1250
    var fontLineHeightTabletDisplaySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1050
    var fontLineHeightTabletHeadingXLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight950
    var fontLineHeightTabletHeadingLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight750
    var fontLineHeightTabletHeadingMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight650
    var fontLineHeightTabletHeadingSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight550
    var fontLineHeightTabletBodyLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    var fontLineHeightTabletBodyMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    var fontLineHeightTabletBodySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250

    // MARK: Semantic token - Typography - Font - Light height - Others

    var fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    var fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    var fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    var fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250
    var fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    var fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Mobile

    var fontParagraphSpacingMobileDislayLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingMobileDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingMobileDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingMobileHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingMobileHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingMobileHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingMobileHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingMobileBodyLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingMobileBodyMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingMobileBodySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Tablet

    var fontParagraphSpacingTabletDislayLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingTabletDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingTabletDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingTabletHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingTabletHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingTabletHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingTabletHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingTabletBodyLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingTabletBodyMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingTabletBodySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Others

    var fontParagraphSpacingLabelXLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingLabelLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingLabelMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingLabelSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingCodeMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    var fontParagraphSpacingCodeSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100

}
