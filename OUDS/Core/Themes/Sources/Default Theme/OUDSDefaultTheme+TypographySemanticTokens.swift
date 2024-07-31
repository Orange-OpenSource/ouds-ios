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
import OUDSTokensSemantic

extension OUDSDefaultTheme: TypographySemanticTokens {
    
    // MARK: Semantic token - Typography - Font - Family

    public var fontFamilyDisplay: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    public var fontFamilyHeading: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    public var fontFamilyBody: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    public var fontFamilyLabel: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem
    public var fontFamilyCode: TypographyFontFamilySemanticToken = TypographyPrimitiveTokens.fontFamilySystem

    // MARK: Semantic token - Typography - Font - Weight

    public var fontWeightDisplay: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    public var fontWeightHeading: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    public var fontWeightBodyDefault: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight400
    public var fontWeightBodyStrong: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    public var fontWeightLabelDefault: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight400
    public var fontWeightLabelStrong: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight700
    public var fontWeightWeightCode: TypographyFontWeightSemanticToken = TypographyPrimitiveTokens.fontWeight400

    // MARK: Semantic token - Typography - Font - Size - Mobile

    public var fontSizeMobileDislayLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize850
    public var fontSizeMobileDisplayMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize750
    public var fontSizeMobileDisplaySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize650
    public var fontSizeMobileHeadingXLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize550
    public var fontSizeMobileHeadingLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize450
    public var fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize350
    public var fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize300
    public var fontSizeMobileBodyLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize250
    public var fontSizeMobileBodyMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    public var fontSizeMobileBodySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize100

    // MARK: Semantic token - Typography - Font - Size - Tablet

    public var fontSizeTabletDislayLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize1450
    public var fontSizeTabletDisplayMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize1050
    public var fontSizeTabletDisplaySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize850
    public var fontSizeTabletHeadingXLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize750
    public var fontSizeTabletHeadingLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize550
    public var fontSizeTabletHeadingMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize450
    public var fontSizeTabletHeadingSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize350
    public var fontSizeTabletBodyLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize250
    public var fontSizeTabletBodyMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    public var fontSizeTabletBodySmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize150

    // MARK: Semantic token - Typography - Font - Size - Others

    public var fontSizeLabelXLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize300
    public var fontSizeLabelLarge: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize250
    public var fontSizeLabelMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    public var fontSizeLabelSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize100
    public var fontSizeCodeMedium: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize200
    public var fontSizeCodeSmall: TypographyFontSizeSemanticToken = TypographyPrimitiveTokens.fontSize150

    // MARK: Semantic token - Typography - Font - Light height - Mobile

    public var fontLineHeightMobileDislayLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1050
    public var fontLineHeightMobileDisplayMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight950
    public var fontLineHeightMobileDisplaySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight850
    public var fontLineHeightMobileHeadingXLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight750
    public var fontLineHeightMobileHeadingLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight650
    public var fontLineHeightMobileHeadingMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight550
    public var fontLineHeightMobileHeadingSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    public var fontLineHeightMobileBodyLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    public var fontLineHeightMobileBodyMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    public var fontLineHeightMobileBodySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250

    // MARK: Semantic token - Typography - Font - Light height - Tablet

    public var fontLineHeightTabletDislayLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1850
    public var fontLineHeightTabletDisplayMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1250
    public var fontLineHeightTabletDisplaySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight1050
    public var fontLineHeightTabletHeadingXLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight950
    public var fontLineHeightTabletHeadingLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight750
    public var fontLineHeightTabletHeadingMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight650
    public var fontLineHeightTabletHeadingSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight550
    public var fontLineHeightTabletBodyLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    public var fontLineHeightTabletBodyMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    public var fontLineHeightTabletBodySmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250

    // MARK: Semantic token - Typography - Font - Light height - Others

    public var fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    public var fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight450
    public var fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    public var fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250
    public var fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight350
    public var fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken = TypographyPrimitiveTokens.fontLineHeight250

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Mobile

    public var fontParagraphSpacingMobileDislayLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingMobileDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingMobileDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingMobileHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingMobileHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingMobileHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingMobileHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingMobileBodyLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingMobileBodyMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingMobileBodySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Tablet

    public var fontParagraphSpacingTabletDislayLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingTabletDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingTabletDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingTabletHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingTabletHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingTabletHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingTabletHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingTabletBodyLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingTabletBodyMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingTabletBodySmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Others

    public var fontParagraphSpacingLabelXLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingLabelLarge: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingLabelMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingLabelSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingCodeMedium: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100
    public var fontParagraphSpacingCodeSmall: TypographyFontParagraphSpacingPrimitiveToken = TypographyPrimitiveTokens.fontParagraphSpacing100

}
